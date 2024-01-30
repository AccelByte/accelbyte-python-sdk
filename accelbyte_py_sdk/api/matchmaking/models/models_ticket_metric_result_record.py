# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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


class ModelsTicketMetricResultRecord(Model):
    """Models ticket metric result record (models.TicketMetricResultRecord)

    Properties:
        queue_time: (queue_time) REQUIRED int
    """

    # region fields

    queue_time: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_queue_time(self, value: int) -> ModelsTicketMetricResultRecord:
        self.queue_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "queue_time"):
            result["queue_time"] = int(self.queue_time)
        elif include_empty:
            result["queue_time"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, queue_time: int, **kwargs) -> ModelsTicketMetricResultRecord:
        instance = cls()
        instance.queue_time = queue_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsTicketMetricResultRecord:
        instance = cls()
        if not dict_:
            return instance
        if "queue_time" in dict_ and dict_["queue_time"] is not None:
            instance.queue_time = int(dict_["queue_time"])
        elif include_empty:
            instance.queue_time = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsTicketMetricResultRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTicketMetricResultRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsTicketMetricResultRecord,
        List[ModelsTicketMetricResultRecord],
        Dict[Any, ModelsTicketMetricResultRecord],
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
            "queue_time": "queue_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "queue_time": True,
        }

    # endregion static methods
