# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.24.0)

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


class ViewInfo(Model):
    """View info (ViewInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        display_order: (displayOrder) REQUIRED int

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        title: (title) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        view_id: (viewId) REQUIRED str

        description: (description) OPTIONAL str

        local_ext: (localExt) OPTIONAL Dict[str, Any]

        long_description: (longDescription) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    display_order: int  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    title: str  # REQUIRED
    updated_at: str  # REQUIRED
    view_id: str  # REQUIRED
    description: str  # OPTIONAL
    local_ext: Dict[str, Any]  # OPTIONAL
    long_description: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ViewInfo:
        self.created_at = value
        return self

    def with_display_order(self, value: int) -> ViewInfo:
        self.display_order = value
        return self

    def with_name(self, value: str) -> ViewInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ViewInfo:
        self.namespace = value
        return self

    def with_title(self, value: str) -> ViewInfo:
        self.title = value
        return self

    def with_updated_at(self, value: str) -> ViewInfo:
        self.updated_at = value
        return self

    def with_view_id(self, value: str) -> ViewInfo:
        self.view_id = value
        return self

    def with_description(self, value: str) -> ViewInfo:
        self.description = value
        return self

    def with_local_ext(self, value: Dict[str, Any]) -> ViewInfo:
        self.local_ext = value
        return self

    def with_long_description(self, value: str) -> ViewInfo:
        self.long_description = value
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
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "view_id"):
            result["viewId"] = str(self.view_id)
        elif include_empty:
            result["viewId"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "local_ext"):
            result["localExt"] = {str(k0): v0 for k0, v0 in self.local_ext.items()}
        elif include_empty:
            result["localExt"] = {}
        if hasattr(self, "long_description"):
            result["longDescription"] = str(self.long_description)
        elif include_empty:
            result["longDescription"] = ""
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
        title: str,
        updated_at: str,
        view_id: str,
        description: Optional[str] = None,
        local_ext: Optional[Dict[str, Any]] = None,
        long_description: Optional[str] = None,
    ) -> ViewInfo:
        instance = cls()
        instance.created_at = created_at
        instance.display_order = display_order
        instance.name = name
        instance.namespace = namespace
        instance.title = title
        instance.updated_at = updated_at
        instance.view_id = view_id
        if description is not None:
            instance.description = description
        if local_ext is not None:
            instance.local_ext = local_ext
        if long_description is not None:
            instance.long_description = long_description
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ViewInfo:
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
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "viewId" in dict_ and dict_["viewId"] is not None:
            instance.view_id = str(dict_["viewId"])
        elif include_empty:
            instance.view_id = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "localExt" in dict_ and dict_["localExt"] is not None:
            instance.local_ext = {str(k0): v0 for k0, v0 in dict_["localExt"].items()}
        elif include_empty:
            instance.local_ext = {}
        if "longDescription" in dict_ and dict_["longDescription"] is not None:
            instance.long_description = str(dict_["longDescription"])
        elif include_empty:
            instance.long_description = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ViewInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ViewInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ViewInfo, List[ViewInfo], Dict[Any, ViewInfo]]:
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
            "title": "title",
            "updatedAt": "updated_at",
            "viewId": "view_id",
            "description": "description",
            "localExt": "local_ext",
            "longDescription": "long_description",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "displayOrder": True,
            "name": True,
            "namespace": True,
            "title": True,
            "updatedAt": True,
            "viewId": True,
            "description": False,
            "localExt": False,
            "longDescription": False,
        }

    # endregion static methods
