# Auto-generated at 2021-10-21T08:52:31.835722+08:00
# from: Justice sessionbrowser Service ()

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.models_game_session import ModelsGameSession
from ..models.models_paging_cursor import ModelsPagingCursor


class ModelsSessionQueryResponse(Model):
    """Models session query response (models.SessionQueryResponse)

    Properties:
        pagination: (pagination) REQUIRED ModelsPagingCursor

        sessions: (sessions) REQUIRED List[ModelsGameSession]
    """

    # region fields

    pagination: ModelsPagingCursor                                                                 # REQUIRED
    sessions: List[ModelsGameSession]                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_pagination(self, value: ModelsPagingCursor) -> ModelsSessionQueryResponse:
        self.pagination = value
        return self

    def with_sessions(self, value: List[ModelsGameSession]) -> ModelsSessionQueryResponse:
        self.sessions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pagination") and self.pagination:
            result["pagination"] = self.pagination.to_dict(include_empty=include_empty)
        elif include_empty:
            result["pagination"] = ModelsPagingCursor()
        if hasattr(self, "sessions") and self.sessions:
            result["sessions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.sessions]
        elif include_empty:
            result["sessions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        pagination: ModelsPagingCursor,
        sessions: List[ModelsGameSession],
    ) -> ModelsSessionQueryResponse:
        instance = cls()
        instance.pagination = pagination
        instance.sessions = sessions
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsSessionQueryResponse:
        instance = cls()
        if not dict_:
            return instance
        if "pagination" in dict_ and dict_["pagination"] is not None:
            instance.pagination = ModelsPagingCursor.create_from_dict(dict_["pagination"], include_empty=include_empty)
        elif include_empty:
            instance.pagination = ModelsPagingCursor()
        if "sessions" in dict_ and dict_["sessions"] is not None:
            instance.sessions = [ModelsGameSession.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["sessions"]]
        elif include_empty:
            instance.sessions = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "pagination": "pagination",
            "sessions": "sessions",
        }

    # endregion static methods
