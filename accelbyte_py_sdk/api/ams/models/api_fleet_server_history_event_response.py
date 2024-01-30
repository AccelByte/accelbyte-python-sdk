# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiFleetServerHistoryEventResponse(Model):
    """Api fleet server history event response (api.FleetServerHistoryEventResponse)

    Properties:
        created_at: (createdAt) REQUIRED str

        exit_code: (exitCode) REQUIRED int

        fleet_id: (fleetId) REQUIRED str

        new_state: (newState) REQUIRED str

        old_state: (oldState) REQUIRED str

        reason: (reason) REQUIRED str

        server_id: (serverId) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    exit_code: int  # REQUIRED
    fleet_id: str  # REQUIRED
    new_state: str  # REQUIRED
    old_state: str  # REQUIRED
    reason: str  # REQUIRED
    server_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApiFleetServerHistoryEventResponse:
        self.created_at = value
        return self

    def with_exit_code(self, value: int) -> ApiFleetServerHistoryEventResponse:
        self.exit_code = value
        return self

    def with_fleet_id(self, value: str) -> ApiFleetServerHistoryEventResponse:
        self.fleet_id = value
        return self

    def with_new_state(self, value: str) -> ApiFleetServerHistoryEventResponse:
        self.new_state = value
        return self

    def with_old_state(self, value: str) -> ApiFleetServerHistoryEventResponse:
        self.old_state = value
        return self

    def with_reason(self, value: str) -> ApiFleetServerHistoryEventResponse:
        self.reason = value
        return self

    def with_server_id(self, value: str) -> ApiFleetServerHistoryEventResponse:
        self.server_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "exit_code"):
            result["exitCode"] = int(self.exit_code)
        elif include_empty:
            result["exitCode"] = 0
        if hasattr(self, "fleet_id"):
            result["fleetId"] = str(self.fleet_id)
        elif include_empty:
            result["fleetId"] = ""
        if hasattr(self, "new_state"):
            result["newState"] = str(self.new_state)
        elif include_empty:
            result["newState"] = ""
        if hasattr(self, "old_state"):
            result["oldState"] = str(self.old_state)
        elif include_empty:
            result["oldState"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "server_id"):
            result["serverId"] = str(self.server_id)
        elif include_empty:
            result["serverId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        exit_code: int,
        fleet_id: str,
        new_state: str,
        old_state: str,
        reason: str,
        server_id: str,
        **kwargs,
    ) -> ApiFleetServerHistoryEventResponse:
        instance = cls()
        instance.created_at = created_at
        instance.exit_code = exit_code
        instance.fleet_id = fleet_id
        instance.new_state = new_state
        instance.old_state = old_state
        instance.reason = reason
        instance.server_id = server_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetServerHistoryEventResponse:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "exitCode" in dict_ and dict_["exitCode"] is not None:
            instance.exit_code = int(dict_["exitCode"])
        elif include_empty:
            instance.exit_code = 0
        if "fleetId" in dict_ and dict_["fleetId"] is not None:
            instance.fleet_id = str(dict_["fleetId"])
        elif include_empty:
            instance.fleet_id = ""
        if "newState" in dict_ and dict_["newState"] is not None:
            instance.new_state = str(dict_["newState"])
        elif include_empty:
            instance.new_state = ""
        if "oldState" in dict_ and dict_["oldState"] is not None:
            instance.old_state = str(dict_["oldState"])
        elif include_empty:
            instance.old_state = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "serverId" in dict_ and dict_["serverId"] is not None:
            instance.server_id = str(dict_["serverId"])
        elif include_empty:
            instance.server_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetServerHistoryEventResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetServerHistoryEventResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetServerHistoryEventResponse,
        List[ApiFleetServerHistoryEventResponse],
        Dict[Any, ApiFleetServerHistoryEventResponse],
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
            "createdAt": "created_at",
            "exitCode": "exit_code",
            "fleetId": "fleet_id",
            "newState": "new_state",
            "oldState": "old_state",
            "reason": "reason",
            "serverId": "server_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "exitCode": True,
            "fleetId": True,
            "newState": True,
            "oldState": True,
            "reason": True,
            "serverId": True,
        }

    # endregion static methods
