# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

    epic_games_jwt_token: str  # OPTIONAL

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
            result["epicGamesJwtToken"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EpicGamesReconcileRequest:
        instance = cls()
        if not dict_:
            return instance
        if "epicGamesJwtToken" in dict_ and dict_["epicGamesJwtToken"] is not None:
            instance.epic_games_jwt_token = str(dict_["epicGamesJwtToken"])
        elif include_empty:
            instance.epic_games_jwt_token = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EpicGamesReconcileRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EpicGamesReconcileRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EpicGamesReconcileRequest,
        List[EpicGamesReconcileRequest],
        Dict[Any, EpicGamesReconcileRequest],
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
            "epicGamesJwtToken": "epic_games_jwt_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "epicGamesJwtToken": False,
        }

    # endregion static methods
