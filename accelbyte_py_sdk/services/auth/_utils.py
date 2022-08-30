# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from datetime import datetime
from typing import Any, Dict, Optional, Union

import jwt


def convert_bearer_auth_token_to_oauth_token_dict(
    bearer_auth_token: str,
    jwt_decode_options: Optional[dict] = None,
    patch_permission_keys: Union[None, bool, Dict[str, str]] = None,
) -> Optional[Dict[str, Any]]:
    jwt_decode_options = (
        jwt_decode_options
        if jwt_decode_options is not None
        else {"verify_signature": False}
    )
    patch_permission_keys = (
        patch_permission_keys if patch_permission_keys is not None else True
    )
    if isinstance(patch_permission_keys, bool) and patch_permission_keys:
        patch_permission_keys = {"Action": "action", "Resource": "resource"}

    # the permission keys in the JSON web token is different from the keys defined in the schema
    def patch_jwt_permission_keys(jwt_: dict, ppk_: Dict[str, str]):
        permissions = jwt_.get("permissions")
        if permissions:
            for permission in permissions:
                for k, v in ppk_.items():
                    if k in permission:
                        permission[v] = permission[k]
                        del permission[k]

    try:
        json_web_token = jwt.decode(bearer_auth_token, options=jwt_decode_options)
        if patch_permission_keys is not None and isinstance(
            patch_permission_keys, dict
        ):
            patch_jwt_permission_keys(jwt_=json_web_token, ppk_=patch_permission_keys)

        # access_token
        json_web_token["access_token"] = bearer_auth_token

        # expires_in
        if (exp := json_web_token.get("exp")) and (iat := json_web_token.get("iat")):
            if (expires_at := safecast_datetime(exp)) and (
                issued_at := safecast_datetime(iat)
            ):
                expires_in = int((expires_at - issued_at).total_seconds())
                json_web_token["expires_at"] = expires_at.isoformat()
                json_web_token["issued_at"] = issued_at.isoformat()

                json_web_token["expires_in"] = expires_in

        # user_id
        if "user_id" not in json_web_token and "sub" in json_web_token:
            json_web_token["user_id"] = json_web_token["sub"]

        return json_web_token

    except ValueError:
        return None


def safecast_datetime(x) -> Optional[datetime]:
    if x is None:
        return None
    try:
        timestamp = int(x)
        return datetime.utcfromtimestamp(timestamp)
    except ValueError:
        return None
