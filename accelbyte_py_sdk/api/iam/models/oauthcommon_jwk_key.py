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


class OauthcommonJWKKey(Model):
    """Oauthcommon JWK key (oauthcommon.JWKKey)

    Properties:
        kty: (kty) REQUIRED str

        alg: (alg) OPTIONAL str

        e: (e) OPTIONAL str

        kid: (kid) OPTIONAL str

        n: (n) OPTIONAL str

        use: (use) OPTIONAL str
    """

    # region fields

    kty: str  # REQUIRED
    alg: str  # OPTIONAL
    e: str  # OPTIONAL
    kid: str  # OPTIONAL
    n: str  # OPTIONAL
    use: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_kty(self, value: str) -> OauthcommonJWKKey:
        self.kty = value
        return self

    def with_alg(self, value: str) -> OauthcommonJWKKey:
        self.alg = value
        return self

    def with_e(self, value: str) -> OauthcommonJWKKey:
        self.e = value
        return self

    def with_kid(self, value: str) -> OauthcommonJWKKey:
        self.kid = value
        return self

    def with_n(self, value: str) -> OauthcommonJWKKey:
        self.n = value
        return self

    def with_use(self, value: str) -> OauthcommonJWKKey:
        self.use = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "kty"):
            result["kty"] = str(self.kty)
        elif include_empty:
            result["kty"] = ""
        if hasattr(self, "alg"):
            result["alg"] = str(self.alg)
        elif include_empty:
            result["alg"] = ""
        if hasattr(self, "e"):
            result["e"] = str(self.e)
        elif include_empty:
            result["e"] = ""
        if hasattr(self, "kid"):
            result["kid"] = str(self.kid)
        elif include_empty:
            result["kid"] = ""
        if hasattr(self, "n"):
            result["n"] = str(self.n)
        elif include_empty:
            result["n"] = ""
        if hasattr(self, "use"):
            result["use"] = str(self.use)
        elif include_empty:
            result["use"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        kty: str,
        alg: Optional[str] = None,
        e: Optional[str] = None,
        kid: Optional[str] = None,
        n: Optional[str] = None,
        use: Optional[str] = None,
    ) -> OauthcommonJWKKey:
        instance = cls()
        instance.kty = kty
        if alg is not None:
            instance.alg = alg
        if e is not None:
            instance.e = e
        if kid is not None:
            instance.kid = kid
        if n is not None:
            instance.n = n
        if use is not None:
            instance.use = use
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthcommonJWKKey:
        instance = cls()
        if not dict_:
            return instance
        if "kty" in dict_ and dict_["kty"] is not None:
            instance.kty = str(dict_["kty"])
        elif include_empty:
            instance.kty = ""
        if "alg" in dict_ and dict_["alg"] is not None:
            instance.alg = str(dict_["alg"])
        elif include_empty:
            instance.alg = ""
        if "e" in dict_ and dict_["e"] is not None:
            instance.e = str(dict_["e"])
        elif include_empty:
            instance.e = ""
        if "kid" in dict_ and dict_["kid"] is not None:
            instance.kid = str(dict_["kid"])
        elif include_empty:
            instance.kid = ""
        if "n" in dict_ and dict_["n"] is not None:
            instance.n = str(dict_["n"])
        elif include_empty:
            instance.n = ""
        if "use" in dict_ and dict_["use"] is not None:
            instance.use = str(dict_["use"])
        elif include_empty:
            instance.use = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthcommonJWKKey]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthcommonJWKKey]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthcommonJWKKey, List[OauthcommonJWKKey], Dict[Any, OauthcommonJWKKey]
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
            "kty": "kty",
            "alg": "alg",
            "e": "e",
            "kid": "kid",
            "n": "n",
            "use": "use",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "kty": True,
            "alg": False,
            "e": False,
            "kid": False,
            "n": False,
            "use": False,
        }

    # endregion static methods
