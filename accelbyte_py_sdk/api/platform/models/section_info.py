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

from ..models.item_info import ItemInfo


class SectionInfo(Model):
    """Section info (SectionInfo)

    Properties:
        active: (active) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        end_date: (endDate) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        section_id: (sectionId) REQUIRED str

        start_date: (startDate) REQUIRED str

        title: (title) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        view_id: (viewId) REQUIRED str

        current_rotation_expire_at: (currentRotationExpireAt) OPTIONAL str

        current_rotation_items: (currentRotationItems) OPTIONAL List[ItemInfo]

        description: (description) OPTIONAL str

        display_order: (displayOrder) OPTIONAL int

        ext: (ext) OPTIONAL Dict[str, Any]

        local_ext: (localExt) OPTIONAL Dict[str, Any]

        long_description: (longDescription) OPTIONAL str
    """

    # region fields

    active: bool  # REQUIRED
    created_at: str  # REQUIRED
    end_date: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    section_id: str  # REQUIRED
    start_date: str  # REQUIRED
    title: str  # REQUIRED
    updated_at: str  # REQUIRED
    view_id: str  # REQUIRED
    current_rotation_expire_at: str  # OPTIONAL
    current_rotation_items: List[ItemInfo]  # OPTIONAL
    description: str  # OPTIONAL
    display_order: int  # OPTIONAL
    ext: Dict[str, Any]  # OPTIONAL
    local_ext: Dict[str, Any]  # OPTIONAL
    long_description: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> SectionInfo:
        self.active = value
        return self

    def with_created_at(self, value: str) -> SectionInfo:
        self.created_at = value
        return self

    def with_end_date(self, value: str) -> SectionInfo:
        self.end_date = value
        return self

    def with_name(self, value: str) -> SectionInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> SectionInfo:
        self.namespace = value
        return self

    def with_section_id(self, value: str) -> SectionInfo:
        self.section_id = value
        return self

    def with_start_date(self, value: str) -> SectionInfo:
        self.start_date = value
        return self

    def with_title(self, value: str) -> SectionInfo:
        self.title = value
        return self

    def with_updated_at(self, value: str) -> SectionInfo:
        self.updated_at = value
        return self

    def with_view_id(self, value: str) -> SectionInfo:
        self.view_id = value
        return self

    def with_current_rotation_expire_at(self, value: str) -> SectionInfo:
        self.current_rotation_expire_at = value
        return self

    def with_current_rotation_items(self, value: List[ItemInfo]) -> SectionInfo:
        self.current_rotation_items = value
        return self

    def with_description(self, value: str) -> SectionInfo:
        self.description = value
        return self

    def with_display_order(self, value: int) -> SectionInfo:
        self.display_order = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> SectionInfo:
        self.ext = value
        return self

    def with_local_ext(self, value: Dict[str, Any]) -> SectionInfo:
        self.local_ext = value
        return self

    def with_long_description(self, value: str) -> SectionInfo:
        self.long_description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "section_id"):
            result["sectionId"] = str(self.section_id)
        elif include_empty:
            result["sectionId"] = ""
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
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
        if hasattr(self, "current_rotation_expire_at"):
            result["currentRotationExpireAt"] = str(self.current_rotation_expire_at)
        elif include_empty:
            result["currentRotationExpireAt"] = ""
        if hasattr(self, "current_rotation_items"):
            result["currentRotationItems"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.current_rotation_items
            ]
        elif include_empty:
            result["currentRotationItems"] = []
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "display_order"):
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = 0
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
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
        active: bool,
        created_at: str,
        end_date: str,
        name: str,
        namespace: str,
        section_id: str,
        start_date: str,
        title: str,
        updated_at: str,
        view_id: str,
        current_rotation_expire_at: Optional[str] = None,
        current_rotation_items: Optional[List[ItemInfo]] = None,
        description: Optional[str] = None,
        display_order: Optional[int] = None,
        ext: Optional[Dict[str, Any]] = None,
        local_ext: Optional[Dict[str, Any]] = None,
        long_description: Optional[str] = None,
    ) -> SectionInfo:
        instance = cls()
        instance.active = active
        instance.created_at = created_at
        instance.end_date = end_date
        instance.name = name
        instance.namespace = namespace
        instance.section_id = section_id
        instance.start_date = start_date
        instance.title = title
        instance.updated_at = updated_at
        instance.view_id = view_id
        if current_rotation_expire_at is not None:
            instance.current_rotation_expire_at = current_rotation_expire_at
        if current_rotation_items is not None:
            instance.current_rotation_items = current_rotation_items
        if description is not None:
            instance.description = description
        if display_order is not None:
            instance.display_order = display_order
        if ext is not None:
            instance.ext = ext
        if local_ext is not None:
            instance.local_ext = local_ext
        if long_description is not None:
            instance.long_description = long_description
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SectionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "sectionId" in dict_ and dict_["sectionId"] is not None:
            instance.section_id = str(dict_["sectionId"])
        elif include_empty:
            instance.section_id = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
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
        if (
            "currentRotationExpireAt" in dict_
            and dict_["currentRotationExpireAt"] is not None
        ):
            instance.current_rotation_expire_at = str(dict_["currentRotationExpireAt"])
        elif include_empty:
            instance.current_rotation_expire_at = ""
        if (
            "currentRotationItems" in dict_
            and dict_["currentRotationItems"] is not None
        ):
            instance.current_rotation_items = [
                ItemInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["currentRotationItems"]
            ]
        elif include_empty:
            instance.current_rotation_items = []
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = 0
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
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
    ) -> Dict[str, SectionInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SectionInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SectionInfo, List[SectionInfo], Dict[Any, SectionInfo]]:
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
            "active": "active",
            "createdAt": "created_at",
            "endDate": "end_date",
            "name": "name",
            "namespace": "namespace",
            "sectionId": "section_id",
            "startDate": "start_date",
            "title": "title",
            "updatedAt": "updated_at",
            "viewId": "view_id",
            "currentRotationExpireAt": "current_rotation_expire_at",
            "currentRotationItems": "current_rotation_items",
            "description": "description",
            "displayOrder": "display_order",
            "ext": "ext",
            "localExt": "local_ext",
            "longDescription": "long_description",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "createdAt": True,
            "endDate": True,
            "name": True,
            "namespace": True,
            "sectionId": True,
            "startDate": True,
            "title": True,
            "updatedAt": True,
            "viewId": True,
            "currentRotationExpireAt": False,
            "currentRotationItems": False,
            "description": False,
            "displayOrder": False,
            "ext": False,
            "localExt": False,
            "longDescription": False,
        }

    # endregion static methods
