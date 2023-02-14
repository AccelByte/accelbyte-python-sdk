# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class ListViewInfo(Model):
    """List view info (ListViewInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        display_order: (displayOrder) REQUIRED int

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        view_id: (viewId) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    display_order: int  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    view_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ListViewInfo:
        self.created_at = value
        return self

    def with_display_order(self, value: int) -> ListViewInfo:
        self.display_order = value
        return self

    def with_name(self, value: str) -> ListViewInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ListViewInfo:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ListViewInfo:
        self.updated_at = value
        return self

    def with_view_id(self, value: str) -> ListViewInfo:
        self.view_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "display_order"):
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "view_id"):
            result["viewId"] = str(self.view_id)
        elif include_empty:
            result["viewId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        display_order: int,
        name: str,
        namespace: str,
        updated_at: str,
        view_id: str,
    ) -> ListViewInfo:
        instance = cls()
        instance.created_at = created_at
        instance.display_order = display_order
        instance.name = name
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.view_id = view_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListViewInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "viewId" in dict_ and dict_["viewId"] is not None:
            instance.view_id = str(dict_["viewId"])
        elif include_empty:
            instance.view_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ListViewInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ListViewInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ListViewInfo, List[ListViewInfo], Dict[Any, ListViewInfo]]:
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
            "displayOrder": "display_order",
            "name": "name",
            "namespace": "namespace",
            "updatedAt": "updated_at",
            "viewId": "view_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "displayOrder": True,
            "name": True,
            "namespace": True,
            "updatedAt": True,
            "viewId": True,
        }

    # endregion static methods
