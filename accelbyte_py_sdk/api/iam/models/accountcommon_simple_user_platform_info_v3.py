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


class AccountcommonSimpleUserPlatformInfoV3(Model):
    """Accountcommon simple user platform info V3 (accountcommon.SimpleUserPlatformInfoV3)

    Properties:
        linked_at: (linkedAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        origin_namespace: (originNamespace) REQUIRED str

        display_name: (displayName) OPTIONAL str

        platform_id: (platformId) OPTIONAL str
    """

    # region fields

    linked_at: str  # REQUIRED
    namespace: str  # REQUIRED
    origin_namespace: str  # REQUIRED
    display_name: str  # OPTIONAL
    platform_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_linked_at(self, value: str) -> AccountcommonSimpleUserPlatformInfoV3:
        self.linked_at = value
        return self

    def with_namespace(self, value: str) -> AccountcommonSimpleUserPlatformInfoV3:
        self.namespace = value
        return self

    def with_origin_namespace(
        self, value: str
    ) -> AccountcommonSimpleUserPlatformInfoV3:
        self.origin_namespace = value
        return self

    def with_display_name(self, value: str) -> AccountcommonSimpleUserPlatformInfoV3:
        self.display_name = value
        return self

    def with_platform_id(self, value: str) -> AccountcommonSimpleUserPlatformInfoV3:
        self.platform_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "linked_at"):
            result["linkedAt"] = str(self.linked_at)
        elif include_empty:
            result["linkedAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "origin_namespace"):
            result["originNamespace"] = str(self.origin_namespace)
        elif include_empty:
            result["originNamespace"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        linked_at: str,
        namespace: str,
        origin_namespace: str,
        display_name: Optional[str] = None,
        platform_id: Optional[str] = None,
    ) -> AccountcommonSimpleUserPlatformInfoV3:
        instance = cls()
        instance.linked_at = linked_at
        instance.namespace = namespace
        instance.origin_namespace = origin_namespace
        if display_name is not None:
            instance.display_name = display_name
        if platform_id is not None:
            instance.platform_id = platform_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonSimpleUserPlatformInfoV3:
        instance = cls()
        if not dict_:
            return instance
        if "linkedAt" in dict_ and dict_["linkedAt"] is not None:
            instance.linked_at = str(dict_["linkedAt"])
        elif include_empty:
            instance.linked_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "originNamespace" in dict_ and dict_["originNamespace"] is not None:
            instance.origin_namespace = str(dict_["originNamespace"])
        elif include_empty:
            instance.origin_namespace = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonSimpleUserPlatformInfoV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonSimpleUserPlatformInfoV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonSimpleUserPlatformInfoV3,
        List[AccountcommonSimpleUserPlatformInfoV3],
        Dict[Any, AccountcommonSimpleUserPlatformInfoV3],
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
            "linkedAt": "linked_at",
            "namespace": "namespace",
            "originNamespace": "origin_namespace",
            "displayName": "display_name",
            "platformId": "platform_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "linkedAt": True,
            "namespace": True,
            "originNamespace": True,
            "displayName": False,
            "platformId": False,
        }

    # endregion static methods
