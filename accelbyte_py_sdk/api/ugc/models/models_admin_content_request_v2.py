# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ugc Service

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


class ModelsAdminContentRequestV2(Model):
    """Models admin content request V2 (models.AdminContentRequestV2)

    Properties:
        name: (name) REQUIRED str

        content_type: (contentType) OPTIONAL str

        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        file_extension: (fileExtension) OPTIONAL str

        share_code: (shareCode) OPTIONAL str

        sub_type: (subType) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        type_: (type) OPTIONAL str
    """

    # region fields

    name: str  # REQUIRED
    content_type: str  # OPTIONAL
    custom_attributes: Dict[str, Any]  # OPTIONAL
    file_extension: str  # OPTIONAL
    share_code: str  # OPTIONAL
    sub_type: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    type_: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> ModelsAdminContentRequestV2:
        self.name = value
        return self

    def with_content_type(self, value: str) -> ModelsAdminContentRequestV2:
        self.content_type = value
        return self

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsAdminContentRequestV2:
        self.custom_attributes = value
        return self

    def with_file_extension(self, value: str) -> ModelsAdminContentRequestV2:
        self.file_extension = value
        return self

    def with_share_code(self, value: str) -> ModelsAdminContentRequestV2:
        self.share_code = value
        return self

    def with_sub_type(self, value: str) -> ModelsAdminContentRequestV2:
        self.sub_type = value
        return self

    def with_tags(self, value: List[str]) -> ModelsAdminContentRequestV2:
        self.tags = value
        return self

    def with_type(self, value: str) -> ModelsAdminContentRequestV2:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = ""
        if hasattr(self, "share_code"):
            result["shareCode"] = str(self.share_code)
        elif include_empty:
            result["shareCode"] = ""
        if hasattr(self, "sub_type"):
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: str,
        content_type: Optional[str] = None,
        custom_attributes: Optional[Dict[str, Any]] = None,
        file_extension: Optional[str] = None,
        share_code: Optional[str] = None,
        sub_type: Optional[str] = None,
        tags: Optional[List[str]] = None,
        type_: Optional[str] = None,
        **kwargs,
    ) -> ModelsAdminContentRequestV2:
        instance = cls()
        instance.name = name
        if content_type is not None:
            instance.content_type = content_type
        if custom_attributes is not None:
            instance.custom_attributes = custom_attributes
        if file_extension is not None:
            instance.file_extension = file_extension
        if share_code is not None:
            instance.share_code = share_code
        if sub_type is not None:
            instance.sub_type = sub_type
        if tags is not None:
            instance.tags = tags
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAdminContentRequestV2:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = ""
        if "shareCode" in dict_ and dict_["shareCode"] is not None:
            instance.share_code = str(dict_["shareCode"])
        elif include_empty:
            instance.share_code = ""
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAdminContentRequestV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAdminContentRequestV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAdminContentRequestV2,
        List[ModelsAdminContentRequestV2],
        Dict[Any, ModelsAdminContentRequestV2],
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
            "name": "name",
            "contentType": "content_type",
            "customAttributes": "custom_attributes",
            "fileExtension": "file_extension",
            "shareCode": "share_code",
            "subType": "sub_type",
            "tags": "tags",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "name": True,
            "contentType": False,
            "customAttributes": False,
            "fileExtension": False,
            "shareCode": False,
            "subType": False,
            "tags": False,
            "type": False,
        }

    # endregion static methods
