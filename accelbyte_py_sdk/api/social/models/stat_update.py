# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Social Service (2.9.4)

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


class StatUpdate(Model):
    """Stat update (StatUpdate)

    Properties:
        cycle_ids: (cycleIds) OPTIONAL List[str]

        default_value: (defaultValue) OPTIONAL float

        description: (description) OPTIONAL str

        ignore_additional_data_on_value_rejected: (ignoreAdditionalDataOnValueRejected) OPTIONAL bool

        is_public: (isPublic) OPTIONAL bool

        name: (name) OPTIONAL str

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    cycle_ids: List[str]  # OPTIONAL
    default_value: float  # OPTIONAL
    description: str  # OPTIONAL
    ignore_additional_data_on_value_rejected: bool  # OPTIONAL
    is_public: bool  # OPTIONAL
    name: str  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_cycle_ids(self, value: List[str]) -> StatUpdate:
        self.cycle_ids = value
        return self

    def with_default_value(self, value: float) -> StatUpdate:
        self.default_value = value
        return self

    def with_description(self, value: str) -> StatUpdate:
        self.description = value
        return self

    def with_ignore_additional_data_on_value_rejected(self, value: bool) -> StatUpdate:
        self.ignore_additional_data_on_value_rejected = value
        return self

    def with_is_public(self, value: bool) -> StatUpdate:
        self.is_public = value
        return self

    def with_name(self, value: str) -> StatUpdate:
        self.name = value
        return self

    def with_tags(self, value: List[str]) -> StatUpdate:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cycle_ids"):
            result["cycleIds"] = [str(i0) for i0 in self.cycle_ids]
        elif include_empty:
            result["cycleIds"] = []
        if hasattr(self, "default_value"):
            result["defaultValue"] = float(self.default_value)
        elif include_empty:
            result["defaultValue"] = 0.0
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "ignore_additional_data_on_value_rejected"):
            result["ignoreAdditionalDataOnValueRejected"] = bool(
                self.ignore_additional_data_on_value_rejected
            )
        elif include_empty:
            result["ignoreAdditionalDataOnValueRejected"] = False
        if hasattr(self, "is_public"):
            result["isPublic"] = bool(self.is_public)
        elif include_empty:
            result["isPublic"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
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
        cycle_ids: Optional[List[str]] = None,
        default_value: Optional[float] = None,
        description: Optional[str] = None,
        ignore_additional_data_on_value_rejected: Optional[bool] = None,
        is_public: Optional[bool] = None,
        name: Optional[str] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> StatUpdate:
        instance = cls()
        if cycle_ids is not None:
            instance.cycle_ids = cycle_ids
        if default_value is not None:
            instance.default_value = default_value
        if description is not None:
            instance.description = description
        if ignore_additional_data_on_value_rejected is not None:
            instance.ignore_additional_data_on_value_rejected = (
                ignore_additional_data_on_value_rejected
            )
        if is_public is not None:
            instance.is_public = is_public
        if name is not None:
            instance.name = name
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "cycleIds" in dict_ and dict_["cycleIds"] is not None:
            instance.cycle_ids = [str(i0) for i0 in dict_["cycleIds"]]
        elif include_empty:
            instance.cycle_ids = []
        if "defaultValue" in dict_ and dict_["defaultValue"] is not None:
            instance.default_value = float(dict_["defaultValue"])
        elif include_empty:
            instance.default_value = 0.0
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if (
            "ignoreAdditionalDataOnValueRejected" in dict_
            and dict_["ignoreAdditionalDataOnValueRejected"] is not None
        ):
            instance.ignore_additional_data_on_value_rejected = bool(
                dict_["ignoreAdditionalDataOnValueRejected"]
            )
        elif include_empty:
            instance.ignore_additional_data_on_value_rejected = False
        if "isPublic" in dict_ and dict_["isPublic"] is not None:
            instance.is_public = bool(dict_["isPublic"])
        elif include_empty:
            instance.is_public = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StatUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatUpdate, List[StatUpdate], Dict[Any, StatUpdate]]:
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
            "cycleIds": "cycle_ids",
            "defaultValue": "default_value",
            "description": "description",
            "ignoreAdditionalDataOnValueRejected": "ignore_additional_data_on_value_rejected",
            "isPublic": "is_public",
            "name": "name",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cycleIds": False,
            "defaultValue": False,
            "description": False,
            "ignoreAdditionalDataOnValueRejected": False,
            "isPublic": False,
            "name": False,
            "tags": False,
        }

    # endregion static methods
