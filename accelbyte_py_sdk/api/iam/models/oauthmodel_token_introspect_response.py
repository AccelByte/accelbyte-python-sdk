# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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

    active: bool  # REQUIRED
    aud: str  # OPTIONAL
    client_id: str  # OPTIONAL
    exp: int  # OPTIONAL
    iat: int  # OPTIONAL
    scope: str  # OPTIONAL
    sub: str  # OPTIONAL

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
            result["active"] = False
        if hasattr(self, "aud"):
            result["aud"] = str(self.aud)
        elif include_empty:
            result["aud"] = ""
        if hasattr(self, "client_id"):
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "exp"):
            result["exp"] = int(self.exp)
        elif include_empty:
            result["exp"] = 0
        if hasattr(self, "iat"):
            result["iat"] = int(self.iat)
        elif include_empty:
            result["iat"] = 0
        if hasattr(self, "scope"):
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = ""
        if hasattr(self, "sub"):
            result["sub"] = str(self.sub)
        elif include_empty:
            result["sub"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelTokenIntrospectResponse:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "aud" in dict_ and dict_["aud"] is not None:
            instance.aud = str(dict_["aud"])
        elif include_empty:
            instance.aud = ""
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "exp" in dict_ and dict_["exp"] is not None:
            instance.exp = int(dict_["exp"])
        elif include_empty:
            instance.exp = 0
        if "iat" in dict_ and dict_["iat"] is not None:
            instance.iat = int(dict_["iat"])
        elif include_empty:
            instance.iat = 0
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = ""
        if "sub" in dict_ and dict_["sub"] is not None:
            instance.sub = str(dict_["sub"])
        elif include_empty:
            instance.sub = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelTokenIntrospectResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelTokenIntrospectResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelTokenIntrospectResponse,
        List[OauthmodelTokenIntrospectResponse],
        Dict[Any, OauthmodelTokenIntrospectResponse],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

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

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "aud": False,
            "client_id": False,
            "exp": False,
            "iat": False,
            "scope": False,
            "sub": False,
        }

    # endregion static methods
