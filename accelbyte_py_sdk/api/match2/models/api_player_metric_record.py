# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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


class ApiPlayerMetricRecord(Model):
    """Api player metric record (api.PlayerMetricRecord)

    Properties:
        player_in_queue: (playerInQueue) REQUIRED int
    """

    # region fields

    player_in_queue: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_player_in_queue(self, value: int) -> ApiPlayerMetricRecord:
        self.player_in_queue = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "player_in_queue"):
            result["playerInQueue"] = int(self.player_in_queue)
        elif include_empty:
            result["playerInQueue"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, player_in_queue: int, **kwargs) -> ApiPlayerMetricRecord:
        instance = cls()
        instance.player_in_queue = player_in_queue
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiPlayerMetricRecord:
        instance = cls()
        if not dict_:
            return instance
        if "playerInQueue" in dict_ and dict_["playerInQueue"] is not None:
            instance.player_in_queue = int(dict_["playerInQueue"])
        elif include_empty:
            instance.player_in_queue = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiPlayerMetricRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiPlayerMetricRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiPlayerMetricRecord,
        List[ApiPlayerMetricRecord],
        Dict[Any, ApiPlayerMetricRecord],
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
            "playerInQueue": "player_in_queue",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "playerInQueue": True,
        }

    # endregion static methods
