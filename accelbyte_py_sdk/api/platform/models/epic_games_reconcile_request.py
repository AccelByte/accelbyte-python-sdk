# justice-platform-service (3.37.1)

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


class EpicGamesReconcileRequest(Model):
    """Epic games reconcile request (EpicGamesReconcileRequest)

    Properties:
        epic_games_jwt_token: (epicGamesJwtToken) OPTIONAL str
    """

    # region fields

    epic_games_jwt_token: str                                                                      # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_epic_games_jwt_token(self, value: str) -> EpicGamesReconcileRequest:
        self.epic_games_jwt_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "epic_games_jwt_token"):
            result["epicGamesJwtToken"] = str(self.epic_games_jwt_token)
        elif include_empty:
            result["epicGamesJwtToken"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        epic_games_jwt_token: Optional[str] = None,
    ) -> EpicGamesReconcileRequest:
        instance = cls()
        if epic_games_jwt_token is not None:
            instance.epic_games_jwt_token = epic_games_jwt_token
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EpicGamesReconcileRequest:
        instance = cls()
        if not dict_:
            return instance
        if "epicGamesJwtToken" in dict_ and dict_["epicGamesJwtToken"] is not None:
            instance.epic_games_jwt_token = str(dict_["epicGamesJwtToken"])
        elif include_empty:
            instance.epic_games_jwt_token = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "epicGamesJwtToken": "epic_games_jwt_token",
        }

    # endregion static methods
