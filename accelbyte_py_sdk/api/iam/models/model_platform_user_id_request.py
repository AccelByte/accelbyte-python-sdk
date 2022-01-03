# justice-iam-service (4.10.0)

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


class ModelPlatformUserIDRequest(Model):
    """Model platform user ID request (model.PlatformUserIDRequest)

    Properties:
        platform_user_ids: (platformUserIds) REQUIRED List[str]
    """

    # region fields

    platform_user_ids: List[str]                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_platform_user_ids(self, value: List[str]) -> ModelPlatformUserIDRequest:
        self.platform_user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_user_ids"):
            result["platformUserIds"] = [str(i0) for i0 in self.platform_user_ids]
        elif include_empty:
            result["platformUserIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_user_ids: List[str],
    ) -> ModelPlatformUserIDRequest:
        instance = cls()
        instance.platform_user_ids = platform_user_ids
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelPlatformUserIDRequest:
        instance = cls()
        if not dict_:
            return instance
        if "platformUserIds" in dict_ and dict_["platformUserIds"] is not None:
            instance.platform_user_ids = [str(i0) for i0 in dict_["platformUserIds"]]
        elif include_empty:
            instance.platform_user_ids = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platformUserIds": "platform_user_ids",
        }

    # endregion static methods
