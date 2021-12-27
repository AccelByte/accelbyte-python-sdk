# justice-iam-service (4.9.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class OauthmodelTokenIntrospectResponse(Model):
    """Oauthmodel token introspect response (oauthmodel.TokenIntrospectResponse)

    Properties:
        active: (active) REQUIRED bool

        aud: (aud) OPTIONAL str

        client_id: (client_id) OPTIONAL str

        exp: (exp) OPTIONAL int

        iat: (iat) OPTIONAL int

        scope: (scope) OPTIONAL str

        sub: (sub) OPTIONAL str
    """

    # region fields

    active: bool                                                                                   # REQUIRED
    aud: str                                                                                       # OPTIONAL
    client_id: str                                                                                 # OPTIONAL
    exp: int                                                                                       # OPTIONAL
    iat: int                                                                                       # OPTIONAL
    scope: str                                                                                     # OPTIONAL
    sub: str                                                                                       # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> OauthmodelTokenIntrospectResponse:
        self.active = value
        return self

    def with_aud(self, value: str) -> OauthmodelTokenIntrospectResponse:
        self.aud = value
        return self

    def with_client_id(self, value: str) -> OauthmodelTokenIntrospectResponse:
        self.client_id = value
        return self

    def with_exp(self, value: int) -> OauthmodelTokenIntrospectResponse:
        self.exp = value
        return self

    def with_iat(self, value: int) -> OauthmodelTokenIntrospectResponse:
        self.iat = value
        return self

    def with_scope(self, value: str) -> OauthmodelTokenIntrospectResponse:
        self.scope = value
        return self

    def with_sub(self, value: str) -> OauthmodelTokenIntrospectResponse:
        self.sub = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = bool()
        if hasattr(self, "aud"):
            result["aud"] = str(self.aud)
        elif include_empty:
            result["aud"] = str()
        if hasattr(self, "client_id"):
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = str()
        if hasattr(self, "exp"):
            result["exp"] = int(self.exp)
        elif include_empty:
            result["exp"] = int()
        if hasattr(self, "iat"):
            result["iat"] = int(self.iat)
        elif include_empty:
            result["iat"] = int()
        if hasattr(self, "scope"):
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = str()
        if hasattr(self, "sub"):
            result["sub"] = str(self.sub)
        elif include_empty:
            result["sub"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active: bool,
        aud: Optional[str] = None,
        client_id: Optional[str] = None,
        exp: Optional[int] = None,
        iat: Optional[int] = None,
        scope: Optional[str] = None,
        sub: Optional[str] = None,
    ) -> OauthmodelTokenIntrospectResponse:
        instance = cls()
        instance.active = active
        if aud is not None:
            instance.aud = aud
        if client_id is not None:
            instance.client_id = client_id
        if exp is not None:
            instance.exp = exp
        if iat is not None:
            instance.iat = iat
        if scope is not None:
            instance.scope = scope
        if sub is not None:
            instance.sub = sub
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OauthmodelTokenIntrospectResponse:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = bool()
        if "aud" in dict_ and dict_["aud"] is not None:
            instance.aud = str(dict_["aud"])
        elif include_empty:
            instance.aud = str()
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = str()
        if "exp" in dict_ and dict_["exp"] is not None:
            instance.exp = int(dict_["exp"])
        elif include_empty:
            instance.exp = int()
        if "iat" in dict_ and dict_["iat"] is not None:
            instance.iat = int(dict_["iat"])
        elif include_empty:
            instance.iat = int()
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = str()
        if "sub" in dict_ and dict_["sub"] is not None:
            instance.sub = str(dict_["sub"])
        elif include_empty:
            instance.sub = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "active": "active",
            "aud": "aud",
            "client_id": "client_id",
            "exp": "exp",
            "iat": "iat",
            "scope": "scope",
            "sub": "sub",
        }

    # endregion static methods
