# justice-iam-service (4.7.0)

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

from ..models.oauthcommon_jwk_key import OauthcommonJWKKey


class OauthcommonJWKSet(Model):
    """Oauthcommon JWK set (oauthcommon.JWKSet)

    Properties:
        keys: (keys) REQUIRED List[OauthcommonJWKKey]
    """

    # region fields

    keys: List[OauthcommonJWKKey]                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_keys(self, value: List[OauthcommonJWKKey]) -> OauthcommonJWKSet:
        self.keys = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "keys"):
            result["keys"] = [i0.to_dict(include_empty=include_empty) for i0 in self.keys]
        elif include_empty:
            result["keys"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        keys: List[OauthcommonJWKKey],
    ) -> OauthcommonJWKSet:
        instance = cls()
        instance.keys = keys
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OauthcommonJWKSet:
        instance = cls()
        if not dict_:
            return instance
        if "keys" in dict_ and dict_["keys"] is not None:
            instance.keys = [OauthcommonJWKKey.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["keys"]]
        elif include_empty:
            instance.keys = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "keys": "keys",
        }

    # endregion static methods
