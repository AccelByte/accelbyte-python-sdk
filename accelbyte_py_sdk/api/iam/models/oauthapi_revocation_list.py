# justice-iam-service (5.0.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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

from ..models.bloom_filter_json import BloomFilterJSON
from ..models.oauthcommon_user_revocation_list_record import OauthcommonUserRevocationListRecord


class OauthapiRevocationList(Model):
    """Oauthapi revocation list (oauthapi.RevocationList)

    Properties:
        revoked_tokens: (revoked_tokens) REQUIRED BloomFilterJSON

        revoked_users: (revoked_users) REQUIRED List[OauthcommonUserRevocationListRecord]
    """

    # region fields

    revoked_tokens: BloomFilterJSON                                                                # REQUIRED
    revoked_users: List[OauthcommonUserRevocationListRecord]                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_revoked_tokens(self, value: BloomFilterJSON) -> OauthapiRevocationList:
        self.revoked_tokens = value
        return self

    def with_revoked_users(self, value: List[OauthcommonUserRevocationListRecord]) -> OauthapiRevocationList:
        self.revoked_users = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "revoked_tokens"):
            result["revoked_tokens"] = self.revoked_tokens.to_dict(include_empty=include_empty)
        elif include_empty:
            result["revoked_tokens"] = BloomFilterJSON()
        if hasattr(self, "revoked_users"):
            result["revoked_users"] = [i0.to_dict(include_empty=include_empty) for i0 in self.revoked_users]
        elif include_empty:
            result["revoked_users"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        revoked_tokens: BloomFilterJSON,
        revoked_users: List[OauthcommonUserRevocationListRecord],
    ) -> OauthapiRevocationList:
        instance = cls()
        instance.revoked_tokens = revoked_tokens
        instance.revoked_users = revoked_users
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OauthapiRevocationList:
        instance = cls()
        if not dict_:
            return instance
        if "revoked_tokens" in dict_ and dict_["revoked_tokens"] is not None:
            instance.revoked_tokens = BloomFilterJSON.create_from_dict(dict_["revoked_tokens"], include_empty=include_empty)
        elif include_empty:
            instance.revoked_tokens = BloomFilterJSON()
        if "revoked_users" in dict_ and dict_["revoked_users"] is not None:
            instance.revoked_users = [OauthcommonUserRevocationListRecord.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["revoked_users"]]
        elif include_empty:
            instance.revoked_users = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "revoked_tokens": "revoked_tokens",
            "revoked_users": "revoked_users",
        }

    # endregion static methods
