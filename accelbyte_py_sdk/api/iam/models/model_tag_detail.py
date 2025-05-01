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


class ModelTagDetail(Model):
    """Model tag detail (model.TagDetail)

    Properties:
        id_: (id) REQUIRED str

        tag_name: (tagName) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    tag_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelTagDetail:
        self.id_ = value
        return self

    def with_tag_name(self, value: str) -> ModelTagDetail:
        self.tag_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "tag_name"):
            result["tagName"] = str(self.tag_name)
        elif include_empty:
            result["tagName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, id_: str, tag_name: Optional[str] = None, **kwargs
    ) -> ModelTagDetail:
        instance = cls()
        instance.id_ = id_
        if tag_name is not None:
            instance.tag_name = tag_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelTagDetail:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "tagName" in dict_ and dict_["tagName"] is not None:
            instance.tag_name = str(dict_["tagName"])
        elif include_empty:
            instance.tag_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelTagDetail]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelTagDetail]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelTagDetail, List[ModelTagDetail], Dict[Any, ModelTagDetail]]:
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
            "id": "id_",
            "tagName": "tag_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "tagName": False,
        }

    # endregion static methods
