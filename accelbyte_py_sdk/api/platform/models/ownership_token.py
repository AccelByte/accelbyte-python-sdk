# justice-platform-service (3.39.0)

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


class OwnershipToken(Model):
    """Ownership token (OwnershipToken)

    Properties:
        ownership_token: (ownershipToken) OPTIONAL str
    """

    # region fields

    ownership_token: str                                                                           # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ownership_token(self, value: str) -> OwnershipToken:
        self.ownership_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ownership_token"):
            result["ownershipToken"] = str(self.ownership_token)
        elif include_empty:
            result["ownershipToken"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ownership_token: Optional[str] = None,
    ) -> OwnershipToken:
        instance = cls()
        if ownership_token is not None:
            instance.ownership_token = ownership_token
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OwnershipToken:
        instance = cls()
        if not dict_:
            return instance
        if "ownershipToken" in dict_ and dict_["ownershipToken"] is not None:
            instance.ownership_token = str(dict_["ownershipToken"])
        elif include_empty:
            instance.ownership_token = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ownershipToken": "ownership_token",
        }

    # endregion static methods
