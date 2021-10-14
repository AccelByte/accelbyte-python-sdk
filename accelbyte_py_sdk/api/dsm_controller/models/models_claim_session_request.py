# Auto-generated at 2021-10-14T22:17:08.938361+08:00
# from: Justice DsmController Service (2.4.0)

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


class ModelsClaimSessionRequest(Model):
    """Models claim session request (models.ClaimSessionRequest)

    Properties:
        session_id: (session_id) REQUIRED str
    """

    # region fields

    session_id: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_session_id(self, value: str) -> ModelsClaimSessionRequest:
        self.session_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "session_id") and self.session_id:
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        session_id: str,
    ) -> ModelsClaimSessionRequest:
        instance = cls()
        instance.session_id = session_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsClaimSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "session_id": "session_id",
        }

    # endregion static methods
