# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Reporting Service

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


class RestapiCreateReasonRequest(Model):
    """Restapi create reason request (restapi.createReasonRequest)

    Properties:
        description: (description) REQUIRED str

        group_ids: (groupIds) REQUIRED List[str]

        title: (title) REQUIRED str
    """

    # region fields

    description: str  # REQUIRED
    group_ids: List[str]  # REQUIRED
    title: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> RestapiCreateReasonRequest:
        self.description = value
        return self

    def with_group_ids(self, value: List[str]) -> RestapiCreateReasonRequest:
        self.group_ids = value
        return self

    def with_title(self, value: str) -> RestapiCreateReasonRequest:
        self.title = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "group_ids"):
            result["groupIds"] = [str(i0) for i0 in self.group_ids]
        elif include_empty:
            result["groupIds"] = []
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, description: str, group_ids: List[str], title: str, **kwargs
    ) -> RestapiCreateReasonRequest:
        instance = cls()
        instance.description = description
        instance.group_ids = group_ids
        instance.title = title
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiCreateReasonRequest:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "groupIds" in dict_ and dict_["groupIds"] is not None:
            instance.group_ids = [str(i0) for i0 in dict_["groupIds"]]
        elif include_empty:
            instance.group_ids = []
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiCreateReasonRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiCreateReasonRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiCreateReasonRequest,
        List[RestapiCreateReasonRequest],
        Dict[Any, RestapiCreateReasonRequest],
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
            "groupIds": "group_ids",
            "title": "title",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "groupIds": True,
            "title": True,
        }

    # endregion static methods
