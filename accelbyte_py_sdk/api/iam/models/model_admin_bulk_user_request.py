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


class ModelAdminBulkUserRequest(Model):
    """Model admin bulk user request (model.AdminBulkUserRequest)

    Properties:
        user_ids: (userIds) REQUIRED List[str]

        find_by_publisher_namespace: (findByPublisherNamespace) OPTIONAL bool
    """

    # region fields

    user_ids: List[str]  # REQUIRED
    find_by_publisher_namespace: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_user_ids(self, value: List[str]) -> ModelAdminBulkUserRequest:
        self.user_ids = value
        return self

    def with_find_by_publisher_namespace(
        self, value: bool
    ) -> ModelAdminBulkUserRequest:
        self.find_by_publisher_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        if hasattr(self, "find_by_publisher_namespace"):
            result["findByPublisherNamespace"] = bool(self.find_by_publisher_namespace)
        elif include_empty:
            result["findByPublisherNamespace"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_ids: List[str],
        find_by_publisher_namespace: Optional[bool] = None,
        **kwargs,
    ) -> ModelAdminBulkUserRequest:
        instance = cls()
        instance.user_ids = user_ids
        if find_by_publisher_namespace is not None:
            instance.find_by_publisher_namespace = find_by_publisher_namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelAdminBulkUserRequest:
        instance = cls()
        if not dict_:
            return instance
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        if (
            "findByPublisherNamespace" in dict_
            and dict_["findByPublisherNamespace"] is not None
        ):
            instance.find_by_publisher_namespace = bool(
                dict_["findByPublisherNamespace"]
            )
        elif include_empty:
            instance.find_by_publisher_namespace = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelAdminBulkUserRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelAdminBulkUserRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelAdminBulkUserRequest,
        List[ModelAdminBulkUserRequest],
        Dict[Any, ModelAdminBulkUserRequest],
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
            "userIds": "user_ids",
            "findByPublisherNamespace": "find_by_publisher_namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "userIds": True,
            "findByPublisherNamespace": False,
        }

    # endregion static methods
