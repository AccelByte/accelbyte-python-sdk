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


class ModelsUpdateContentRequestV2(Model):
    """Models update content request V2 (models.UpdateContentRequestV2)

    Properties:
        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        name: (name) OPTIONAL str

        sub_type: (subType) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        type_: (type) OPTIONAL str
    """

    # region fields

    custom_attributes: Dict[str, Any]  # OPTIONAL
    name: str  # OPTIONAL
    sub_type: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    type_: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsUpdateContentRequestV2:
        self.custom_attributes = value
        return self

    def with_name(self, value: str) -> ModelsUpdateContentRequestV2:
        self.name = value
        return self

    def with_sub_type(self, value: str) -> ModelsUpdateContentRequestV2:
        self.sub_type = value
        return self

    def with_tags(self, value: List[str]) -> ModelsUpdateContentRequestV2:
        self.tags = value
        return self

    def with_type(self, value: str) -> ModelsUpdateContentRequestV2:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
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
        custom_attributes: Optional[Dict[str, Any]] = None,
        name: Optional[str] = None,
        sub_type: Optional[str] = None,
        tags: Optional[List[str]] = None,
        type_: Optional[str] = None,
        **kwargs,
    ) -> ModelsUpdateContentRequestV2:
        instance = cls()
        if custom_attributes is not None:
            instance.custom_attributes = custom_attributes
        if name is not None:
            instance.name = name
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
    ) -> ModelsUpdateContentRequestV2:
        instance = cls()
        if not dict_:
            return instance
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
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
    ) -> Dict[str, ModelsUpdateContentRequestV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateContentRequestV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateContentRequestV2,
        List[ModelsUpdateContentRequestV2],
        Dict[Any, ModelsUpdateContentRequestV2],
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
            "customAttributes": "custom_attributes",
            "name": "name",
            "subType": "sub_type",
            "tags": "tags",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "customAttributes": False,
            "name": False,
            "subType": False,
            "tags": False,
            "type": False,
        }

    # endregion static methods
