# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class AccountcommonPermissionV3(Model):
    """Accountcommon permission V3 (accountcommon.PermissionV3)

    Properties:
        action: (action) REQUIRED int

        resource: (resource) REQUIRED str

        sched_action: (schedAction) OPTIONAL int

        sched_cron: (schedCron) OPTIONAL str

        sched_range: (schedRange) OPTIONAL List[str]
    """

    # region fields

    action: int  # REQUIRED
    resource: str  # REQUIRED
    sched_action: int  # OPTIONAL
    sched_cron: str  # OPTIONAL
    sched_range: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: int) -> AccountcommonPermissionV3:
        self.action = value
        return self

    def with_resource(self, value: str) -> AccountcommonPermissionV3:
        self.resource = value
        return self

    def with_sched_action(self, value: int) -> AccountcommonPermissionV3:
        self.sched_action = value
        return self

    def with_sched_cron(self, value: str) -> AccountcommonPermissionV3:
        self.sched_cron = value
        return self

    def with_sched_range(self, value: List[str]) -> AccountcommonPermissionV3:
        self.sched_range = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = int(self.action)
        elif include_empty:
            result["action"] = 0
        if hasattr(self, "resource"):
            result["resource"] = str(self.resource)
        elif include_empty:
            result["resource"] = ""
        if hasattr(self, "sched_action"):
            result["schedAction"] = int(self.sched_action)
        elif include_empty:
            result["schedAction"] = 0
        if hasattr(self, "sched_cron"):
            result["schedCron"] = str(self.sched_cron)
        elif include_empty:
            result["schedCron"] = ""
        if hasattr(self, "sched_range"):
            result["schedRange"] = [str(i0) for i0 in self.sched_range]
        elif include_empty:
            result["schedRange"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: int,
        resource: str,
        sched_action: Optional[int] = None,
        sched_cron: Optional[str] = None,
        sched_range: Optional[List[str]] = None,
    ) -> AccountcommonPermissionV3:
        instance = cls()
        instance.action = action
        instance.resource = resource
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
    ) -> AccountcommonPermissionV3:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = int(dict_["action"])
        elif include_empty:
            instance.action = 0
        if "resource" in dict_ and dict_["resource"] is not None:
            instance.resource = str(dict_["resource"])
        elif include_empty:
            instance.resource = ""
        if "schedAction" in dict_ and dict_["schedAction"] is not None:
            instance.sched_action = int(dict_["schedAction"])
        elif include_empty:
            instance.sched_action = 0
        if "schedCron" in dict_ and dict_["schedCron"] is not None:
            instance.sched_cron = str(dict_["schedCron"])
        elif include_empty:
            instance.sched_cron = ""
        if "schedRange" in dict_ and dict_["schedRange"] is not None:
            instance.sched_range = [str(i0) for i0 in dict_["schedRange"]]
        elif include_empty:
            instance.sched_range = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonPermissionV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonPermissionV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonPermissionV3,
        List[AccountcommonPermissionV3],
        Dict[Any, AccountcommonPermissionV3],
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
            "action": "action",
            "resource": "resource",
            "schedAction": "sched_action",
            "schedCron": "sched_cron",
            "schedRange": "sched_range",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "resource": True,
            "schedAction": False,
            "schedCron": False,
            "schedRange": False,
        }

    # endregion static methods
