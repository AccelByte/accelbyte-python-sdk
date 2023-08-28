# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Any, Dict, List, Optional, Tuple
from typing import Protocol, runtime_checkable

import jwt as jwt_lib

from ._utils import safecast_datetime
from ...core import HttpResponse
from ...core import SDK


@runtime_checkable
class JwtPayloadModifier(Protocol):
    def __call__(self, jwt_claims: Dict[str, Any], **kwargs) -> None:
        ...


def get_decode_options(**kwargs) -> Dict[str, Any]:
    verify_signature = False
    jwt_decode_options = {
        "verify_signature": verify_signature,
        "require": [],
        "verify_aud": verify_signature,
        "verify_iss": verify_signature,
        "verify_exp": verify_signature,
        "verify_iat": verify_signature,
        "verify_nbt": verify_signature,
        "strict_aud": False,
    }
    for key, value in kwargs.items():
        if key in jwt_decode_options:
            jwt_decode_options[key] = value
    return jwt_decode_options


def get_validate_token_kwargs(jwt_claims: Dict[str, Any]) -> Dict[str, Any]:
    validate_token_kwargs = {
        "token": jwt_claims["access_token"],
        "resource": None,
        "action": None,
        "namespace": jwt_claims.get("namespace", None),
    }
    permissions = jwt_claims.get("permissions", [])
    if permissions:
        permission = permissions[0]
        validate_token_kwargs["resource"] = permission["resource"]
        validate_token_kwargs["action"] = permission["action"]
    return validate_token_kwargs


def patch_claims_accelbyte_keys(jwt_claims: Dict[str, Any], **kwargs) -> None:
    # access_token
    access_token = kwargs.get("access_token", None)
    if access_token:
        jwt_claims["access_token"] = access_token

    # expires_in
    if (exp := jwt_claims.get("exp")) and (iat := jwt_claims.get("iat")):
        if (expires_at := safecast_datetime(exp)) and (
            issued_at := safecast_datetime(iat)
        ):
            expires_in = int((expires_at - issued_at).total_seconds())
            jwt_claims["expires_at"] = expires_at.isoformat()
            jwt_claims["issued_at"] = issued_at.isoformat()
            jwt_claims["expires_in"] = expires_in

    # user_id
    if "user_id" not in jwt_claims and "sub" in jwt_claims:
        jwt_claims["user_id"] = jwt_claims["sub"]


assert isinstance(patch_claims_accelbyte_keys, JwtPayloadModifier)


def patch_claims_permission_keys(jwt_claims: Dict[str, Any], **kwargs) -> None:
    patch = kwargs.get("permission_keys_patch", True)
    if isinstance(patch, bool) and patch:
        patch = {
            "Action": "action",
            "Resource": "resource",
        }
    permissions = jwt_claims.get("permissions", None)
    if permissions and patch:
        for permission in permissions:
            for key, value in patch.items():
                if key in permission:
                    permission[value] = permission[key]
                    del permission[key]


assert isinstance(patch_claims_permission_keys, JwtPayloadModifier)


# noinspection PyUnresolvedReferences
def parse_access_token(
    jwt: str, **kwargs
) -> Tuple[Optional[Dict[str, Any]], Optional[HttpResponse]]:
    try:
        jwt_claims = jwt_lib.decode(jwt=jwt, options=get_decode_options(**kwargs))

        modifiers = kwargs.get(
            "modifiers", [patch_claims_permission_keys, patch_claims_accelbyte_keys]
        )
        for modifier in modifiers:
            modifier(jwt_claims, access_token=jwt, **kwargs)

        validator = kwargs.get("validator", None)
        validate = kwargs.get("validate", validator is not None)
        if validate:
            sdk = kwargs.get("sdk", SDK)
            if validator is None or isinstance(validator, str):
                try:
                    if validator is None or validator in ("caching", "local"):
                        import accelbyte_py_sdk.token_validation.caching as tv

                        validator = tv.CachingTokenValidator(sdk=sdk)
                    elif validator == "iam":
                        import accelbyte_py_sdk.token_validation.iam as tv

                        validator = tv.IAMTokenValidator(sdk=sdk)
                except ImportError as error:
                    return jwt_claims, HttpResponse.create_error(400, str(error))

            error = validator.validate_token(
                **get_validate_token_kwargs(jwt_claims=jwt_claims)
            )
            if error:
                return jwt_claims, HttpResponse.create_error(400, str(error))

        return jwt_claims, None
    except Exception as error:
        return None, HttpResponse.create_error(400, str(error))


__all__ = [
    "JwtPayloadModifier",
    "get_decode_options",
    "patch_claims_accelbyte_keys",
    "patch_claims_permission_keys",
    "parse_access_token",
]
