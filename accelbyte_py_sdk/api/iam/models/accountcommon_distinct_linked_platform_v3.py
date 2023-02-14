# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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

from ..models.accountcommon_simple_user_platform_info_v3 import (
    AccountcommonSimpleUserPlatformInfoV3,
)


class AccountcommonDistinctLinkedPlatformV3(Model):
    """Accountcommon distinct linked platform V3 (accountcommon.DistinctLinkedPlatformV3)

    Properties:
        details: (details) REQUIRED List[AccountcommonSimpleUserPlatformInfoV3]

        linked_at: (linkedAt) REQUIRED str

        platform_name: (platformName) REQUIRED str

        platform_user_id: (platformUserId) OPTIONAL str
    """

    # region fields

    details: List[AccountcommonSimpleUserPlatformInfoV3]  # REQUIRED
    linked_at: str  # REQUIRED
    platform_name: str  # REQUIRED
    platform_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_details(
        self, value: List[AccountcommonSimpleUserPlatformInfoV3]
    ) -> AccountcommonDistinctLinkedPlatformV3:
        self.details = value
        return self

    def with_linked_at(self, value: str) -> AccountcommonDistinctLinkedPlatformV3:
        self.linked_at = value
        return self

    def with_platform_name(self, value: str) -> AccountcommonDistinctLinkedPlatformV3:
        self.platform_name = value
        return self

    def with_platform_user_id(
        self, value: str
    ) -> AccountcommonDistinctLinkedPlatformV3:
        self.platform_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "details"):
            result["details"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.details
            ]
        elif include_empty:
            result["details"] = []
        if hasattr(self, "linked_at"):
            result["linkedAt"] = str(self.linked_at)
        elif include_empty:
            result["linkedAt"] = ""
        if hasattr(self, "platform_name"):
            result["platformName"] = str(self.platform_name)
        elif include_empty:
            result["platformName"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        details: List[AccountcommonSimpleUserPlatformInfoV3],
        linked_at: str,
        platform_name: str,
        platform_user_id: Optional[str] = None,
    ) -> AccountcommonDistinctLinkedPlatformV3:
        instance = cls()
        instance.details = details
        instance.linked_at = linked_at
        instance.platform_name = platform_name
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonDistinctLinkedPlatformV3:
        instance = cls()
        if not dict_:
            return instance
        if "details" in dict_ and dict_["details"] is not None:
            instance.details = [
                AccountcommonSimpleUserPlatformInfoV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["details"]
            ]
        elif include_empty:
            instance.details = []
        if "linkedAt" in dict_ and dict_["linkedAt"] is not None:
            instance.linked_at = str(dict_["linkedAt"])
        elif include_empty:
            instance.linked_at = ""
        if "platformName" in dict_ and dict_["platformName"] is not None:
            instance.platform_name = str(dict_["platformName"])
        elif include_empty:
            instance.platform_name = ""
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonDistinctLinkedPlatformV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonDistinctLinkedPlatformV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonDistinctLinkedPlatformV3,
        List[AccountcommonDistinctLinkedPlatformV3],
        Dict[Any, AccountcommonDistinctLinkedPlatformV3],
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
            "details": "details",
            "linkedAt": "linked_at",
            "platformName": "platform_name",
            "platformUserId": "platform_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "details": True,
            "linkedAt": True,
            "platformName": True,
            "platformUserId": False,
        }

    # endregion static methods
