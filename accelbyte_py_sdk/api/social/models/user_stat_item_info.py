# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

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


class UserStatItemInfo(Model):
    """User stat item info (UserStatItemInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        stat_code: (statCode) REQUIRED str

        stat_name: (statName) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        value: (value) REQUIRED float

        additional_data: (additionalData) OPTIONAL Dict[str, Any]

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    created_at: str  # REQUIRED
    namespace: str  # REQUIRED
    stat_code: str  # REQUIRED
    stat_name: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    value: float  # REQUIRED
    additional_data: Dict[str, Any]  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> UserStatItemInfo:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> UserStatItemInfo:
        self.namespace = value
        return self

    def with_stat_code(self, value: str) -> UserStatItemInfo:
        self.stat_code = value
        return self

    def with_stat_name(self, value: str) -> UserStatItemInfo:
        self.stat_name = value
        return self

    def with_updated_at(self, value: str) -> UserStatItemInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> UserStatItemInfo:
        self.user_id = value
        return self

    def with_value(self, value: float) -> UserStatItemInfo:
        self.value = value
        return self

    def with_additional_data(self, value: Dict[str, Any]) -> UserStatItemInfo:
        self.additional_data = value
        return self

    def with_tags(self, value: List[str]) -> UserStatItemInfo:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "stat_name"):
            result["statName"] = str(self.stat_name)
        elif include_empty:
            result["statName"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "value"):
            result["value"] = float(self.value)
        elif include_empty:
            result["value"] = 0.0
        if hasattr(self, "additional_data"):
            result["additionalData"] = {
                str(k0): v0 for k0, v0 in self.additional_data.items()
            }
        elif include_empty:
            result["additionalData"] = {}
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        namespace: str,
        stat_code: str,
        stat_name: str,
        updated_at: str,
        user_id: str,
        value: float,
        additional_data: Optional[Dict[str, Any]] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> UserStatItemInfo:
        instance = cls()
        instance.created_at = created_at
        instance.namespace = namespace
        instance.stat_code = stat_code
        instance.stat_name = stat_name
        instance.updated_at = updated_at
        instance.user_id = user_id
        instance.value = value
        if additional_data is not None:
            instance.additional_data = additional_data
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserStatItemInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "statName" in dict_ and dict_["statName"] is not None:
            instance.stat_name = str(dict_["statName"])
        elif include_empty:
            instance.stat_name = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = float(dict_["value"])
        elif include_empty:
            instance.value = 0.0
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = {
                str(k0): v0 for k0, v0 in dict_["additionalData"].items()
            }
        elif include_empty:
            instance.additional_data = {}
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserStatItemInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserStatItemInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[UserStatItemInfo, List[UserStatItemInfo], Dict[Any, UserStatItemInfo]]:
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
            "createdAt": "created_at",
            "namespace": "namespace",
            "statCode": "stat_code",
            "statName": "stat_name",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "value": "value",
            "additionalData": "additional_data",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "namespace": True,
            "statCode": True,
            "statName": True,
            "updatedAt": True,
            "userId": True,
            "value": True,
            "additionalData": False,
            "tags": False,
        }

    # endregion static methods
