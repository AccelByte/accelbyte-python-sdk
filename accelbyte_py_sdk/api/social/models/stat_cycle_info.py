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


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    INIT = "INIT"
    STOPPED = "STOPPED"


class StatCycleInfo(Model):
    """Stat cycle info (StatCycleInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        current_version: (currentVersion) REQUIRED int

        cycle_type: (cycleType) REQUIRED Union[str, CycleTypeEnum]

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        reset_time: (resetTime) REQUIRED str

        start: (start) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        description: (description) OPTIONAL str

        end: (end) OPTIONAL str

        next_reset: (nextReset) OPTIONAL str

        reset_date: (resetDate) OPTIONAL int

        reset_day: (resetDay) OPTIONAL int

        reset_month: (resetMonth) OPTIONAL int

        season_period: (seasonPeriod) OPTIONAL int
    """

    # region fields

    created_at: str  # REQUIRED
    current_version: int  # REQUIRED
    cycle_type: Union[str, CycleTypeEnum]  # REQUIRED
    id_: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    reset_time: str  # REQUIRED
    start: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    description: str  # OPTIONAL
    end: str  # OPTIONAL
    next_reset: str  # OPTIONAL
    reset_date: int  # OPTIONAL
    reset_day: int  # OPTIONAL
    reset_month: int  # OPTIONAL
    season_period: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> StatCycleInfo:
        self.created_at = value
        return self

    def with_current_version(self, value: int) -> StatCycleInfo:
        self.current_version = value
        return self

    def with_cycle_type(self, value: Union[str, CycleTypeEnum]) -> StatCycleInfo:
        self.cycle_type = value
        return self

    def with_id(self, value: str) -> StatCycleInfo:
        self.id_ = value
        return self

    def with_name(self, value: str) -> StatCycleInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> StatCycleInfo:
        self.namespace = value
        return self

    def with_reset_time(self, value: str) -> StatCycleInfo:
        self.reset_time = value
        return self

    def with_start(self, value: str) -> StatCycleInfo:
        self.start = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> StatCycleInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> StatCycleInfo:
        self.updated_at = value
        return self

    def with_description(self, value: str) -> StatCycleInfo:
        self.description = value
        return self

    def with_end(self, value: str) -> StatCycleInfo:
        self.end = value
        return self

    def with_next_reset(self, value: str) -> StatCycleInfo:
        self.next_reset = value
        return self

    def with_reset_date(self, value: int) -> StatCycleInfo:
        self.reset_date = value
        return self

    def with_reset_day(self, value: int) -> StatCycleInfo:
        self.reset_day = value
        return self

    def with_reset_month(self, value: int) -> StatCycleInfo:
        self.reset_month = value
        return self

    def with_season_period(self, value: int) -> StatCycleInfo:
        self.season_period = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "current_version"):
            result["currentVersion"] = int(self.current_version)
        elif include_empty:
            result["currentVersion"] = 0
        if hasattr(self, "cycle_type"):
            result["cycleType"] = str(self.cycle_type)
        elif include_empty:
            result["cycleType"] = Union[str, CycleTypeEnum]()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "reset_time"):
            result["resetTime"] = str(self.reset_time)
        elif include_empty:
            result["resetTime"] = ""
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = ""
        if hasattr(self, "next_reset"):
            result["nextReset"] = str(self.next_reset)
        elif include_empty:
            result["nextReset"] = ""
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
        created_at: str,
        current_version: int,
        cycle_type: Union[str, CycleTypeEnum],
        id_: str,
        name: str,
        namespace: str,
        reset_time: str,
        start: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        description: Optional[str] = None,
        end: Optional[str] = None,
        next_reset: Optional[str] = None,
        reset_date: Optional[int] = None,
        reset_day: Optional[int] = None,
        reset_month: Optional[int] = None,
        season_period: Optional[int] = None,
        **kwargs,
    ) -> StatCycleInfo:
        instance = cls()
        instance.created_at = created_at
        instance.current_version = current_version
        instance.cycle_type = cycle_type
        instance.id_ = id_
        instance.name = name
        instance.namespace = namespace
        instance.reset_time = reset_time
        instance.start = start
        instance.status = status
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if end is not None:
            instance.end = end
        if next_reset is not None:
            instance.next_reset = next_reset
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
    ) -> StatCycleInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "currentVersion" in dict_ and dict_["currentVersion"] is not None:
            instance.current_version = int(dict_["currentVersion"])
        elif include_empty:
            instance.current_version = 0
        if "cycleType" in dict_ and dict_["cycleType"] is not None:
            instance.cycle_type = str(dict_["cycleType"])
        elif include_empty:
            instance.cycle_type = Union[str, CycleTypeEnum]()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "resetTime" in dict_ and dict_["resetTime"] is not None:
            instance.reset_time = str(dict_["resetTime"])
        elif include_empty:
            instance.reset_time = ""
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "nextReset" in dict_ and dict_["nextReset"] is not None:
            instance.next_reset = str(dict_["nextReset"])
        elif include_empty:
            instance.next_reset = ""
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
    ) -> Dict[str, StatCycleInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatCycleInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatCycleInfo, List[StatCycleInfo], Dict[Any, StatCycleInfo]]:
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
            "createdAt": "created_at",
            "currentVersion": "current_version",
            "cycleType": "cycle_type",
            "id": "id_",
            "name": "name",
            "namespace": "namespace",
            "resetTime": "reset_time",
            "start": "start",
            "status": "status",
            "updatedAt": "updated_at",
            "description": "description",
            "end": "end",
            "nextReset": "next_reset",
            "resetDate": "reset_date",
            "resetDay": "reset_day",
            "resetMonth": "reset_month",
            "seasonPeriod": "season_period",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "currentVersion": True,
            "cycleType": True,
            "id": True,
            "name": True,
            "namespace": True,
            "resetTime": True,
            "start": True,
            "status": True,
            "updatedAt": True,
            "description": False,
            "end": False,
            "nextReset": False,
            "resetDate": False,
            "resetDay": False,
            "resetMonth": False,
            "seasonPeriod": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "cycleType": ["ANNUALLY", "DAILY", "MONTHLY", "SEASONAL", "WEEKLY"],
            "status": ["ACTIVE", "INIT", "STOPPED"],
        }

    # endregion static methods
