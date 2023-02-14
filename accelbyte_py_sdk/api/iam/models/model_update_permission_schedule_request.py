# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelUpdatePermissionScheduleRequest(Model):
    """Model update permission schedule request (model.UpdatePermissionScheduleRequest)

    Properties:
        sched_action: (SchedAction) OPTIONAL int

        sched_cron: (SchedCron) OPTIONAL str

        sched_range: (SchedRange) OPTIONAL List[str]
    """

    # region fields

    sched_action: int  # OPTIONAL
    sched_cron: str  # OPTIONAL
    sched_range: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_sched_action(self, value: int) -> ModelUpdatePermissionScheduleRequest:
        self.sched_action = value
        return self

    def with_sched_cron(self, value: str) -> ModelUpdatePermissionScheduleRequest:
        self.sched_cron = value
        return self

    def with_sched_range(
        self, value: List[str]
    ) -> ModelUpdatePermissionScheduleRequest:
        self.sched_range = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "sched_action"):
            result["SchedAction"] = int(self.sched_action)
        elif include_empty:
            result["SchedAction"] = 0
        if hasattr(self, "sched_cron"):
            result["SchedCron"] = str(self.sched_cron)
        elif include_empty:
            result["SchedCron"] = ""
        if hasattr(self, "sched_range"):
            result["SchedRange"] = [str(i0) for i0 in self.sched_range]
        elif include_empty:
            result["SchedRange"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        sched_action: Optional[int] = None,
        sched_cron: Optional[str] = None,
        sched_range: Optional[List[str]] = None,
    ) -> ModelUpdatePermissionScheduleRequest:
        instance = cls()
        if sched_action is not None:
            instance.sched_action = sched_action
        if sched_cron is not None:
            instance.sched_cron = sched_cron
        if sched_range is not None:
            instance.sched_range = sched_range
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUpdatePermissionScheduleRequest:
        instance = cls()
        if not dict_:
            return instance
        if "SchedAction" in dict_ and dict_["SchedAction"] is not None:
            instance.sched_action = int(dict_["SchedAction"])
        elif include_empty:
            instance.sched_action = 0
        if "SchedCron" in dict_ and dict_["SchedCron"] is not None:
            instance.sched_cron = str(dict_["SchedCron"])
        elif include_empty:
            instance.sched_cron = ""
        if "SchedRange" in dict_ and dict_["SchedRange"] is not None:
            instance.sched_range = [str(i0) for i0 in dict_["SchedRange"]]
        elif include_empty:
            instance.sched_range = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUpdatePermissionScheduleRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUpdatePermissionScheduleRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUpdatePermissionScheduleRequest,
        List[ModelUpdatePermissionScheduleRequest],
        Dict[Any, ModelUpdatePermissionScheduleRequest],
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
            "SchedAction": "sched_action",
            "SchedCron": "sched_cron",
            "SchedRange": "sched_range",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "SchedAction": False,
            "SchedCron": False,
            "SchedRange": False,
        }

    # endregion static methods
