# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class AccountcommonPlatformLinkingHistory(Model):
    """Accountcommon platform linking history (accountcommon.PlatformLinkingHistory)

    Properties:
        platform_display_name: (platformDisplayName) REQUIRED str

        platform_id: (platformID) REQUIRED str

        platform_user_id: (platformUserID) REQUIRED str
    """

    # region fields

    platform_display_name: str  # REQUIRED
    platform_id: str  # REQUIRED
    platform_user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_platform_display_name(
        self, value: str
    ) -> AccountcommonPlatformLinkingHistory:
        self.platform_display_name = value
        return self

    def with_platform_id(self, value: str) -> AccountcommonPlatformLinkingHistory:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> AccountcommonPlatformLinkingHistory:
        self.platform_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_display_name"):
            result["platformDisplayName"] = str(self.platform_display_name)
        elif include_empty:
            result["platformDisplayName"] = ""
        if hasattr(self, "platform_id"):
            result["platformID"] = str(self.platform_id)
        elif include_empty:
            result["platformID"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserID"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_display_name: str,
        platform_id: str,
        platform_user_id: str,
        **kwargs,
    ) -> AccountcommonPlatformLinkingHistory:
        instance = cls()
        instance.platform_display_name = platform_display_name
        instance.platform_id = platform_id
        instance.platform_user_id = platform_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonPlatformLinkingHistory:
        instance = cls()
        if not dict_:
            return instance
        if "platformDisplayName" in dict_ and dict_["platformDisplayName"] is not None:
            instance.platform_display_name = str(dict_["platformDisplayName"])
        elif include_empty:
            instance.platform_display_name = ""
        if "platformID" in dict_ and dict_["platformID"] is not None:
            instance.platform_id = str(dict_["platformID"])
        elif include_empty:
            instance.platform_id = ""
        if "platformUserID" in dict_ and dict_["platformUserID"] is not None:
            instance.platform_user_id = str(dict_["platformUserID"])
        elif include_empty:
            instance.platform_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonPlatformLinkingHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonPlatformLinkingHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonPlatformLinkingHistory,
        List[AccountcommonPlatformLinkingHistory],
        Dict[Any, AccountcommonPlatformLinkingHistory],
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
            "platformDisplayName": "platform_display_name",
            "platformID": "platform_id",
            "platformUserID": "platform_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformDisplayName": True,
            "platformID": True,
            "platformUserID": True,
        }

    # endregion static methods
