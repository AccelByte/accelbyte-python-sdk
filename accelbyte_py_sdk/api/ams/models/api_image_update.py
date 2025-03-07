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


class ApiImageUpdate(Model):
    """Api image update (api.ImageUpdate)

    Properties:
        added_tags: (addedTags) REQUIRED List[str]

        removed_tags: (removedTags) REQUIRED List[str]

        is_protected: (isProtected) OPTIONAL bool

        name: (name) OPTIONAL str
    """

    # region fields

    added_tags: List[str]  # REQUIRED
    removed_tags: List[str]  # REQUIRED
    is_protected: bool  # OPTIONAL
    name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_added_tags(self, value: List[str]) -> ApiImageUpdate:
        self.added_tags = value
        return self

    def with_removed_tags(self, value: List[str]) -> ApiImageUpdate:
        self.removed_tags = value
        return self

    def with_is_protected(self, value: bool) -> ApiImageUpdate:
        self.is_protected = value
        return self

    def with_name(self, value: str) -> ApiImageUpdate:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "added_tags"):
            result["addedTags"] = [str(i0) for i0 in self.added_tags]
        elif include_empty:
            result["addedTags"] = []
        if hasattr(self, "removed_tags"):
            result["removedTags"] = [str(i0) for i0 in self.removed_tags]
        elif include_empty:
            result["removedTags"] = []
        if hasattr(self, "is_protected"):
            result["isProtected"] = bool(self.is_protected)
        elif include_empty:
            result["isProtected"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        added_tags: List[str],
        removed_tags: List[str],
        is_protected: Optional[bool] = None,
        name: Optional[str] = None,
        **kwargs,
    ) -> ApiImageUpdate:
        instance = cls()
        instance.added_tags = added_tags
        instance.removed_tags = removed_tags
        if is_protected is not None:
            instance.is_protected = is_protected
        if name is not None:
            instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiImageUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "addedTags" in dict_ and dict_["addedTags"] is not None:
            instance.added_tags = [str(i0) for i0 in dict_["addedTags"]]
        elif include_empty:
            instance.added_tags = []
        if "removedTags" in dict_ and dict_["removedTags"] is not None:
            instance.removed_tags = [str(i0) for i0 in dict_["removedTags"]]
        elif include_empty:
            instance.removed_tags = []
        if "isProtected" in dict_ and dict_["isProtected"] is not None:
            instance.is_protected = bool(dict_["isProtected"])
        elif include_empty:
            instance.is_protected = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiImageUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiImageUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiImageUpdate, List[ApiImageUpdate], Dict[Any, ApiImageUpdate]]:
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
            "addedTags": "added_tags",
            "removedTags": "removed_tags",
            "isProtected": "is_protected",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "addedTags": True,
            "removedTags": True,
            "isProtected": False,
            "name": False,
        }

    # endregion static methods
