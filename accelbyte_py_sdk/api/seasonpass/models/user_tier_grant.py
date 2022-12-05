# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.17.0)

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
from ....core import StrEnum


class SourceEnum(StrEnum):
    PAID_FOR = "PAID_FOR"
    SWEAT = "SWEAT"


class UserTierGrant(Model):
    """A DTO object for granting user tier. (UserTierGrant)

    Properties:
        count: (count) OPTIONAL int

        source: (source) OPTIONAL Union[str, SourceEnum]

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    count: int  # OPTIONAL
    source: Union[str, SourceEnum]  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> UserTierGrant:
        self.count = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> UserTierGrant:
        self.source = value
        return self

    def with_tags(self, value: List[str]) -> UserTierGrant:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
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
        count: Optional[int] = None,
        source: Optional[Union[str, SourceEnum]] = None,
        tags: Optional[List[str]] = None,
    ) -> UserTierGrant:
        instance = cls()
        if count is not None:
            instance.count = count
        if source is not None:
            instance.source = source
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserTierGrant:
        instance = cls()
        if not dict_:
            return instance
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserTierGrant]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserTierGrant]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[UserTierGrant, List[UserTierGrant], Dict[Any, UserTierGrant]]:
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
            "count": "count",
            "source": "source",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "count": False,
            "source": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "source": ["PAID_FOR", "SWEAT"],
        }

    # endregion static methods
