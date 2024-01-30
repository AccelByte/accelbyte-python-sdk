# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ApiUpdateTopicParams(Model):
    """Api update topic params (api.UpdateTopicParams)

    Properties:
        description: (description) REQUIRED str

        is_joinable: (isJoinable) REQUIRED bool

        name: (name) REQUIRED str
    """

    # region fields

    description: str  # REQUIRED
    is_joinable: bool  # REQUIRED
    name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ApiUpdateTopicParams:
        self.description = value
        return self

    def with_is_joinable(self, value: bool) -> ApiUpdateTopicParams:
        self.is_joinable = value
        return self

    def with_name(self, value: str) -> ApiUpdateTopicParams:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "is_joinable"):
            result["isJoinable"] = bool(self.is_joinable)
        elif include_empty:
            result["isJoinable"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, description: str, is_joinable: bool, name: str, **kwargs
    ) -> ApiUpdateTopicParams:
        instance = cls()
        instance.description = description
        instance.is_joinable = is_joinable
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiUpdateTopicParams:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "isJoinable" in dict_ and dict_["isJoinable"] is not None:
            instance.is_joinable = bool(dict_["isJoinable"])
        elif include_empty:
            instance.is_joinable = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiUpdateTopicParams]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiUpdateTopicParams]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiUpdateTopicParams,
        List[ApiUpdateTopicParams],
        Dict[Any, ApiUpdateTopicParams],
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
            "description": "description",
            "isJoinable": "is_joinable",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "isJoinable": True,
            "name": True,
        }

    # endregion static methods
