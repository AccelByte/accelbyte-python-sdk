# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class XblClawbackEventSubscriptionData(Model):
    """Xbl clawback event subscription data (XblClawbackEventSubscriptionData)

    Properties:
        consumed_duration_in_days: (consumedDurationInDays) OPTIONAL int

        date_time: (dateTime) OPTIONAL str

        duration_in_days: (durationInDays) OPTIONAL int

        recurrence_id: (recurrenceId) OPTIONAL str
    """

    # region fields

    consumed_duration_in_days: int  # OPTIONAL
    date_time: str  # OPTIONAL
    duration_in_days: int  # OPTIONAL
    recurrence_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_consumed_duration_in_days(
        self, value: int
    ) -> XblClawbackEventSubscriptionData:
        self.consumed_duration_in_days = value
        return self

    def with_date_time(self, value: str) -> XblClawbackEventSubscriptionData:
        self.date_time = value
        return self

    def with_duration_in_days(self, value: int) -> XblClawbackEventSubscriptionData:
        self.duration_in_days = value
        return self

    def with_recurrence_id(self, value: str) -> XblClawbackEventSubscriptionData:
        self.recurrence_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "consumed_duration_in_days"):
            result["consumedDurationInDays"] = int(self.consumed_duration_in_days)
        elif include_empty:
            result["consumedDurationInDays"] = 0
        if hasattr(self, "date_time"):
            result["dateTime"] = str(self.date_time)
        elif include_empty:
            result["dateTime"] = ""
        if hasattr(self, "duration_in_days"):
            result["durationInDays"] = int(self.duration_in_days)
        elif include_empty:
            result["durationInDays"] = 0
        if hasattr(self, "recurrence_id"):
            result["recurrenceId"] = str(self.recurrence_id)
        elif include_empty:
            result["recurrenceId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        consumed_duration_in_days: Optional[int] = None,
        date_time: Optional[str] = None,
        duration_in_days: Optional[int] = None,
        recurrence_id: Optional[str] = None,
        **kwargs,
    ) -> XblClawbackEventSubscriptionData:
        instance = cls()
        if consumed_duration_in_days is not None:
            instance.consumed_duration_in_days = consumed_duration_in_days
        if date_time is not None:
            instance.date_time = date_time
        if duration_in_days is not None:
            instance.duration_in_days = duration_in_days
        if recurrence_id is not None:
            instance.recurrence_id = recurrence_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblClawbackEventSubscriptionData:
        instance = cls()
        if not dict_:
            return instance
        if (
            "consumedDurationInDays" in dict_
            and dict_["consumedDurationInDays"] is not None
        ):
            instance.consumed_duration_in_days = int(dict_["consumedDurationInDays"])
        elif include_empty:
            instance.consumed_duration_in_days = 0
        if "dateTime" in dict_ and dict_["dateTime"] is not None:
            instance.date_time = str(dict_["dateTime"])
        elif include_empty:
            instance.date_time = ""
        if "durationInDays" in dict_ and dict_["durationInDays"] is not None:
            instance.duration_in_days = int(dict_["durationInDays"])
        elif include_empty:
            instance.duration_in_days = 0
        if "recurrenceId" in dict_ and dict_["recurrenceId"] is not None:
            instance.recurrence_id = str(dict_["recurrenceId"])
        elif include_empty:
            instance.recurrence_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblClawbackEventSubscriptionData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblClawbackEventSubscriptionData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XblClawbackEventSubscriptionData,
        List[XblClawbackEventSubscriptionData],
        Dict[Any, XblClawbackEventSubscriptionData],
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
            "consumedDurationInDays": "consumed_duration_in_days",
            "dateTime": "date_time",
            "durationInDays": "duration_in_days",
            "recurrenceId": "recurrence_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "consumedDurationInDays": False,
            "dateTime": False,
            "durationInDays": False,
            "recurrenceId": False,
        }

    # endregion static methods
