# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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

from ..models.models_custom_game_response import ModelsCustomGameResponse
from ..models.models_paging_cursor import ModelsPagingCursor


class ModelsActiveCustomGameResponse(Model):
    """Models active custom game response (models.ActiveCustomGameResponse)

    Properties:
        pagination: (pagination) REQUIRED ModelsPagingCursor

        sessions: (sessions) REQUIRED List[ModelsCustomGameResponse]
    """

    # region fields

    pagination: ModelsPagingCursor  # REQUIRED
    sessions: List[ModelsCustomGameResponse]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_pagination(
        self, value: ModelsPagingCursor
    ) -> ModelsActiveCustomGameResponse:
        self.pagination = value
        return self

    def with_sessions(
        self, value: List[ModelsCustomGameResponse]
    ) -> ModelsActiveCustomGameResponse:
        self.sessions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pagination"):
            result["pagination"] = self.pagination.to_dict(include_empty=include_empty)
        elif include_empty:
            result["pagination"] = ModelsPagingCursor()
        if hasattr(self, "sessions"):
            result["sessions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.sessions
            ]
        elif include_empty:
            result["sessions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        pagination: ModelsPagingCursor,
        sessions: List[ModelsCustomGameResponse],
    ) -> ModelsActiveCustomGameResponse:
        instance = cls()
        instance.pagination = pagination
        instance.sessions = sessions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsActiveCustomGameResponse:
        instance = cls()
        if not dict_:
            return instance
        if "pagination" in dict_ and dict_["pagination"] is not None:
            instance.pagination = ModelsPagingCursor.create_from_dict(
                dict_["pagination"], include_empty=include_empty
            )
        elif include_empty:
            instance.pagination = ModelsPagingCursor()
        if "sessions" in dict_ and dict_["sessions"] is not None:
            instance.sessions = [
                ModelsCustomGameResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["sessions"]
            ]
        elif include_empty:
            instance.sessions = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsActiveCustomGameResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsActiveCustomGameResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsActiveCustomGameResponse,
        List[ModelsActiveCustomGameResponse],
        Dict[Any, ModelsActiveCustomGameResponse],
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
            "pagination": "pagination",
            "sessions": "sessions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "pagination": True,
            "sessions": True,
        }

    # endregion static methods
