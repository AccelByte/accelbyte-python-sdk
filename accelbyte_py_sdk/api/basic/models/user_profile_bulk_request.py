# justice-basic-service (1.31.0)

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


class UserProfileBulkRequest(Model):
    """User profile bulk request (UserProfileBulkRequest)

    Properties:
        user_ids: (userIds) OPTIONAL List[str]
    """

    # region fields

    user_ids: List[str]                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_user_ids(self, value: List[str]) -> UserProfileBulkRequest:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_ids: Optional[List[str]] = None,
    ) -> UserProfileBulkRequest:
        instance = cls()
        if user_ids is not None:
            instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserProfileBulkRequest:
        instance = cls()
        if not dict_:
            return instance
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "userIds": "user_ids",
        }

    # endregion static methods
