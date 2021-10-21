# Auto-generated at 2021-10-21T08:52:24.295409+08:00
# from: Justice dsmc Service (2.6.0)

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

from ..models.models_session import ModelsSession


class ModelsSessionResponse(Model):
    """Models session response (models.SessionResponse)

    Properties:
        session: (session) REQUIRED ModelsSession
    """

    # region fields

    session: ModelsSession                                                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_session(self, value: ModelsSession) -> ModelsSessionResponse:
        self.session = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "session") and self.session:
            result["session"] = self.session.to_dict(include_empty=include_empty)
        elif include_empty:
            result["session"] = ModelsSession()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        session: ModelsSession,
    ) -> ModelsSessionResponse:
        instance = cls()
        instance.session = session
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsSessionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "session" in dict_ and dict_["session"] is not None:
            instance.session = ModelsSession.create_from_dict(dict_["session"], include_empty=include_empty)
        elif include_empty:
            instance.session = ModelsSession()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "session": "session",
        }

    # endregion static methods
