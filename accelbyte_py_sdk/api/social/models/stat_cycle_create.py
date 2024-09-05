# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

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
from ....core import StrEnum


class CycleTypeEnum(StrEnum):
    ANNUALLY = "ANNUALLY"
    DAILY = "DAILY"
    MONTHLY = "MONTHLY"
    SEASONAL = "SEASONAL"
    WEEKLY = "WEEKLY"


class StatCycleCreate(Model):
    """Stat cycle create (StatCycleCreate)

    Properties:
        cycle_type: (cycleType) REQUIRED Union[str, CycleTypeEnum]

        name: (name) REQUIRED str

        reset_time: (resetTime) REQUIRED str

        start: (start) REQUIRED str

        description: (description) OPTIONAL str

        end: (end) OPTIONAL str

        id_: (id) OPTIONAL str

        reset_date: (resetDate) OPTIONAL int

        reset_day: (resetDay) OPTIONAL int

        reset_month: (resetMonth) OPTIONAL int

        season_period: (seasonPeriod) OPTIONAL int
    """

    # region fields

    cycle_type: Union[str, CycleTypeEnum]  # REQUIRED
    name: str  # REQUIRED
    reset_time: str  # REQUIRED
    start: str  # REQUIRED
    description: str  # OPTIONAL
    end: str  # OPTIONAL
    id_: str  # OPTIONAL
    reset_date: int  # OPTIONAL
    reset_day: int  # OPTIONAL
    reset_month: int  # OPTIONAL
    season_period: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_cycle_type(self, value: Union[str, CycleTypeEnum]) -> StatCycleCreate:
        self.cycle_type = value
        return self

    def with_name(self, value: str) -> StatCycleCreate:
        self.name = value
        return self

    def with_reset_time(self, value: str) -> StatCycleCreate:
        self.reset_time = value
        return self

    def with_start(self, value: str) -> StatCycleCreate:
        self.start = value
        return self

    def with_description(self, value: str) -> StatCycleCreate:
        self.description = value
        return self

    def with_end(self, value: str) -> StatCycleCreate:
        self.end = value
        return self

    def with_id(self, value: str) -> StatCycleCreate:
        self.id_ = value
        return self

    def with_reset_date(self, value: int) -> StatCycleCreate:
        self.reset_date = value
        return self

    def with_reset_day(self, value: int) -> StatCycleCreate:
        self.reset_day = value
        return self

    def with_reset_month(self, value: int) -> StatCycleCreate:
        self.reset_month = value
        return self

    def with_season_period(self, value: int) -> StatCycleCreate:
        self.season_period = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cycle_type"):
            result["cycleType"] = str(self.cycle_type)
        elif include_empty:
            result["cycleType"] = Union[str, CycleTypeEnum]()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "reset_time"):
            result["resetTime"] = str(self.reset_time)
        elif include_empty:
            result["resetTime"] = ""
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "reset_date"):
            result["resetDate"] = int(self.reset_date)
        elif include_empty:
            result["resetDate"] = 0
        if hasattr(self, "reset_day"):
            result["resetDay"] = int(self.reset_day)
        elif include_empty:
            result["resetDay"] = 0
        if hasattr(self, "reset_month"):
            result["resetMonth"] = int(self.reset_month)
        elif include_empty:
            result["resetMonth"] = 0
        if hasattr(self, "season_period"):
            result["seasonPeriod"] = int(self.season_period)
        elif include_empty:
            result["seasonPeriod"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cycle_type: Union[str, CycleTypeEnum],
        name: str,
        reset_time: str,
        start: str,
        description: Optional[str] = None,
        end: Optional[str] = None,
        id_: Optional[str] = None,
        reset_date: Optional[int] = None,
        reset_day: Optional[int] = None,
        reset_month: Optional[int] = None,
        season_period: Optional[int] = None,
        **kwargs,
    ) -> StatCycleCreate:
        instance = cls()
        instance.cycle_type = cycle_type
        instance.name = name
        instance.reset_time = reset_time
        instance.start = start
        if description is not None:
            instance.description = description
        if end is not None:
            instance.end = end
        if id_ is not None:
            instance.id_ = id_
        if reset_date is not None:
            instance.reset_date = reset_date
        if reset_day is not None:
            instance.reset_day = reset_day
        if reset_month is not None:
            instance.reset_month = reset_month
        if season_period is not None:
            instance.season_period = season_period
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> StatCycleCreate:
        instance = cls()
        if not dict_:
            return instance
        if "cycleType" in dict_ and dict_["cycleType"] is not None:
            instance.cycle_type = str(dict_["cycleType"])
        elif include_empty:
            instance.cycle_type = Union[str, CycleTypeEnum]()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "resetTime" in dict_ and dict_["resetTime"] is not None:
            instance.reset_time = str(dict_["resetTime"])
        elif include_empty:
            instance.reset_time = ""
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "resetDate" in dict_ and dict_["resetDate"] is not None:
            instance.reset_date = int(dict_["resetDate"])
        elif include_empty:
            instance.reset_date = 0
        if "resetDay" in dict_ and dict_["resetDay"] is not None:
            instance.reset_day = int(dict_["resetDay"])
        elif include_empty:
            instance.reset_day = 0
        if "resetMonth" in dict_ and dict_["resetMonth"] is not None:
            instance.reset_month = int(dict_["resetMonth"])
        elif include_empty:
            instance.reset_month = 0
        if "seasonPeriod" in dict_ and dict_["seasonPeriod"] is not None:
            instance.season_period = int(dict_["seasonPeriod"])
        elif include_empty:
            instance.season_period = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StatCycleCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatCycleCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatCycleCreate, List[StatCycleCreate], Dict[Any, StatCycleCreate]]:
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
            "cycleType": "cycle_type",
            "name": "name",
            "resetTime": "reset_time",
            "start": "start",
            "description": "description",
            "end": "end",
            "id": "id_",
            "resetDate": "reset_date",
            "resetDay": "reset_day",
            "resetMonth": "reset_month",
            "seasonPeriod": "season_period",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cycleType": True,
            "name": True,
            "resetTime": True,
            "start": True,
            "description": False,
            "end": False,
            "id": False,
            "resetDate": False,
            "resetDay": False,
            "resetMonth": False,
            "seasonPeriod": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "cycleType": ["ANNUALLY", "DAILY", "MONTHLY", "SEASONAL", "WEEKLY"],
        }

    # endregion static methods
