# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiImageListItem(Model):
    """Api image list item (api.ImageListItem)

    Properties:
        created_at: (createdAt) REQUIRED str

        executable: (executable) REQUIRED str

        id_: (id) REQUIRED str

        is_protected: (isProtected) REQUIRED bool

        name: (name) REQUIRED str

        referencing_configs: (referencingConfigs) REQUIRED int

        referencing_fleets: (referencingFleets) REQUIRED int

        size_in_byte: (sizeInByte) REQUIRED int

        status: (status) REQUIRED str

        tags: (tags) REQUIRED List[str]

        uploaded_at: (uploadedAt) REQUIRED str

        uploaded_by: (uploadedBy) REQUIRED str

        delete_at: (deleteAt) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    executable: str  # REQUIRED
    id_: str  # REQUIRED
    is_protected: bool  # REQUIRED
    name: str  # REQUIRED
    referencing_configs: int  # REQUIRED
    referencing_fleets: int  # REQUIRED
    size_in_byte: int  # REQUIRED
    status: str  # REQUIRED
    tags: List[str]  # REQUIRED
    uploaded_at: str  # REQUIRED
    uploaded_by: str  # REQUIRED
    delete_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApiImageListItem:
        self.created_at = value
        return self

    def with_executable(self, value: str) -> ApiImageListItem:
        self.executable = value
        return self

    def with_id(self, value: str) -> ApiImageListItem:
        self.id_ = value
        return self

    def with_is_protected(self, value: bool) -> ApiImageListItem:
        self.is_protected = value
        return self

    def with_name(self, value: str) -> ApiImageListItem:
        self.name = value
        return self

    def with_referencing_configs(self, value: int) -> ApiImageListItem:
        self.referencing_configs = value
        return self

    def with_referencing_fleets(self, value: int) -> ApiImageListItem:
        self.referencing_fleets = value
        return self

    def with_size_in_byte(self, value: int) -> ApiImageListItem:
        self.size_in_byte = value
        return self

    def with_status(self, value: str) -> ApiImageListItem:
        self.status = value
        return self

    def with_tags(self, value: List[str]) -> ApiImageListItem:
        self.tags = value
        return self

    def with_uploaded_at(self, value: str) -> ApiImageListItem:
        self.uploaded_at = value
        return self

    def with_uploaded_by(self, value: str) -> ApiImageListItem:
        self.uploaded_by = value
        return self

    def with_delete_at(self, value: str) -> ApiImageListItem:
        self.delete_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "executable"):
            result["executable"] = str(self.executable)
        elif include_empty:
            result["executable"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "is_protected"):
            result["isProtected"] = bool(self.is_protected)
        elif include_empty:
            result["isProtected"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "referencing_configs"):
            result["referencingConfigs"] = int(self.referencing_configs)
        elif include_empty:
            result["referencingConfigs"] = 0
        if hasattr(self, "referencing_fleets"):
            result["referencingFleets"] = int(self.referencing_fleets)
        elif include_empty:
            result["referencingFleets"] = 0
        if hasattr(self, "size_in_byte"):
            result["sizeInByte"] = int(self.size_in_byte)
        elif include_empty:
            result["sizeInByte"] = 0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "uploaded_at"):
            result["uploadedAt"] = str(self.uploaded_at)
        elif include_empty:
            result["uploadedAt"] = ""
        if hasattr(self, "uploaded_by"):
            result["uploadedBy"] = str(self.uploaded_by)
        elif include_empty:
            result["uploadedBy"] = ""
        if hasattr(self, "delete_at"):
            result["deleteAt"] = str(self.delete_at)
        elif include_empty:
            result["deleteAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        executable: str,
        id_: str,
        is_protected: bool,
        name: str,
        referencing_configs: int,
        referencing_fleets: int,
        size_in_byte: int,
        status: str,
        tags: List[str],
        uploaded_at: str,
        uploaded_by: str,
        delete_at: Optional[str] = None,
        **kwargs,
    ) -> ApiImageListItem:
        instance = cls()
        instance.created_at = created_at
        instance.executable = executable
        instance.id_ = id_
        instance.is_protected = is_protected
        instance.name = name
        instance.referencing_configs = referencing_configs
        instance.referencing_fleets = referencing_fleets
        instance.size_in_byte = size_in_byte
        instance.status = status
        instance.tags = tags
        instance.uploaded_at = uploaded_at
        instance.uploaded_by = uploaded_by
        if delete_at is not None:
            instance.delete_at = delete_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiImageListItem:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "executable" in dict_ and dict_["executable"] is not None:
            instance.executable = str(dict_["executable"])
        elif include_empty:
            instance.executable = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isProtected" in dict_ and dict_["isProtected"] is not None:
            instance.is_protected = bool(dict_["isProtected"])
        elif include_empty:
            instance.is_protected = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "referencingConfigs" in dict_ and dict_["referencingConfigs"] is not None:
            instance.referencing_configs = int(dict_["referencingConfigs"])
        elif include_empty:
            instance.referencing_configs = 0
        if "referencingFleets" in dict_ and dict_["referencingFleets"] is not None:
            instance.referencing_fleets = int(dict_["referencingFleets"])
        elif include_empty:
            instance.referencing_fleets = 0
        if "sizeInByte" in dict_ and dict_["sizeInByte"] is not None:
            instance.size_in_byte = int(dict_["sizeInByte"])
        elif include_empty:
            instance.size_in_byte = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "uploadedAt" in dict_ and dict_["uploadedAt"] is not None:
            instance.uploaded_at = str(dict_["uploadedAt"])
        elif include_empty:
            instance.uploaded_at = ""
        if "uploadedBy" in dict_ and dict_["uploadedBy"] is not None:
            instance.uploaded_by = str(dict_["uploadedBy"])
        elif include_empty:
            instance.uploaded_by = ""
        if "deleteAt" in dict_ and dict_["deleteAt"] is not None:
            instance.delete_at = str(dict_["deleteAt"])
        elif include_empty:
            instance.delete_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiImageListItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiImageListItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiImageListItem, List[ApiImageListItem], Dict[Any, ApiImageListItem]]:
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
            "executable": "executable",
            "id": "id_",
            "isProtected": "is_protected",
            "name": "name",
            "referencingConfigs": "referencing_configs",
            "referencingFleets": "referencing_fleets",
            "sizeInByte": "size_in_byte",
            "status": "status",
            "tags": "tags",
            "uploadedAt": "uploaded_at",
            "uploadedBy": "uploaded_by",
            "deleteAt": "delete_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "executable": True,
            "id": True,
            "isProtected": True,
            "name": True,
            "referencingConfigs": True,
            "referencingFleets": True,
            "sizeInByte": True,
            "status": True,
            "tags": True,
            "uploadedAt": True,
            "uploadedBy": True,
            "deleteAt": False,
        }

    # endregion static methods
