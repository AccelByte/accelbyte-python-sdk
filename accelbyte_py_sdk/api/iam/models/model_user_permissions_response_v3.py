# justice-iam-service (4.9.0)

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


class ModelUserPermissionsResponseV3(Model):
    """Model user permissions response V3 (model.UserPermissionsResponseV3)

    Properties:
        action: (action) REQUIRED int

        resource: (resource) REQUIRED str

        sched_action: (schedAction) OPTIONAL int

        sched_cron: (schedCron) OPTIONAL str

        sched_range: (schedRange) OPTIONAL List[str]
    """

    # region fields

    action: int                                                                                    # REQUIRED
    resource: str                                                                                  # REQUIRED
    sched_action: int                                                                              # OPTIONAL
    sched_cron: str                                                                                # OPTIONAL
    sched_range: List[str]                                                                         # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: int) -> ModelUserPermissionsResponseV3:
        self.action = value
        return self

    def with_resource(self, value: str) -> ModelUserPermissionsResponseV3:
        self.resource = value
        return self

    def with_sched_action(self, value: int) -> ModelUserPermissionsResponseV3:
        self.sched_action = value
        return self

    def with_sched_cron(self, value: str) -> ModelUserPermissionsResponseV3:
        self.sched_cron = value
        return self

    def with_sched_range(self, value: List[str]) -> ModelUserPermissionsResponseV3:
        self.sched_range = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = int(self.action)
        elif include_empty:
            result["action"] = int()
        if hasattr(self, "resource"):
            result["resource"] = str(self.resource)
        elif include_empty:
            result["resource"] = str()
        if hasattr(self, "sched_action"):
            result["schedAction"] = int(self.sched_action)
        elif include_empty:
            result["schedAction"] = int()
        if hasattr(self, "sched_cron"):
            result["schedCron"] = str(self.sched_cron)
        elif include_empty:
            result["schedCron"] = str()
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
    ) -> ModelUserPermissionsResponseV3:
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserPermissionsResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = int(dict_["action"])
        elif include_empty:
            instance.action = int()
        if "resource" in dict_ and dict_["resource"] is not None:
            instance.resource = str(dict_["resource"])
        elif include_empty:
            instance.resource = str()
        if "schedAction" in dict_ and dict_["schedAction"] is not None:
            instance.sched_action = int(dict_["schedAction"])
        elif include_empty:
            instance.sched_action = int()
        if "schedCron" in dict_ and dict_["schedCron"] is not None:
            instance.sched_cron = str(dict_["schedCron"])
        elif include_empty:
            instance.sched_cron = str()
        if "schedRange" in dict_ and dict_["schedRange"] is not None:
            instance.sched_range = [str(i0) for i0 in dict_["schedRange"]]
        elif include_empty:
            instance.sched_range = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "action": "action",
            "resource": "resource",
            "schedAction": "sched_action",
            "schedCron": "sched_cron",
            "schedRange": "sched_range",
        }

    # endregion static methods
