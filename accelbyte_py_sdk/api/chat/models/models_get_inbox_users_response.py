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

from ..models.models_user_inbox import ModelsUserInbox


class ModelsGetInboxUsersResponse(Model):
    """Models get inbox users response (models.GetInboxUsersResponse)

    Properties:
        data: (data) REQUIRED List[ModelsUserInbox]

        next_: (next) REQUIRED str

        previous: (previous) REQUIRED str
    """

    # region fields

    data: List[ModelsUserInbox]  # REQUIRED
    next_: str  # REQUIRED
    previous: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(self, value: List[ModelsUserInbox]) -> ModelsGetInboxUsersResponse:
        self.data = value
        return self

    def with_next(self, value: str) -> ModelsGetInboxUsersResponse:
        self.next_ = value
        return self

    def with_previous(self, value: str) -> ModelsGetInboxUsersResponse:
        self.previous = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.data
            ]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "next_"):
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = ""
        if hasattr(self, "previous"):
            result["previous"] = str(self.previous)
        elif include_empty:
            result["previous"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, data: List[ModelsUserInbox], next_: str, previous: str, **kwargs
    ) -> ModelsGetInboxUsersResponse:
        instance = cls()
        instance.data = data
        instance.next_ = next_
        instance.previous = previous
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetInboxUsersResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [
                ModelsUserInbox.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["data"]
            ]
        elif include_empty:
            instance.data = []
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = ""
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetInboxUsersResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetInboxUsersResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetInboxUsersResponse,
        List[ModelsGetInboxUsersResponse],
        Dict[Any, ModelsGetInboxUsersResponse],
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
            "data": "data",
            "next": "next_",
            "previous": "previous",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": True,
            "next": True,
            "previous": True,
        }

    # endregion static methods
