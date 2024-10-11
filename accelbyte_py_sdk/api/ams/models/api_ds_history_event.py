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


class ApiDSHistoryEvent(Model):
    """Api DS history event (api.DSHistoryEvent)

    Properties:
        created_at: (createdAt) REQUIRED str

        exit_code: (exitCode) REQUIRED int

        ip_address: (ipAddress) REQUIRED str

        reason: (reason) REQUIRED str

        region: (region) REQUIRED str

        server_id: (serverId) REQUIRED str

        session_id: (sessionId) REQUIRED str

        status: (status) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    exit_code: int  # REQUIRED
    ip_address: str  # REQUIRED
    reason: str  # REQUIRED
    region: str  # REQUIRED
    server_id: str  # REQUIRED
    session_id: str  # REQUIRED
    status: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApiDSHistoryEvent:
        self.created_at = value
        return self

    def with_exit_code(self, value: int) -> ApiDSHistoryEvent:
        self.exit_code = value
        return self

    def with_ip_address(self, value: str) -> ApiDSHistoryEvent:
        self.ip_address = value
        return self

    def with_reason(self, value: str) -> ApiDSHistoryEvent:
        self.reason = value
        return self

    def with_region(self, value: str) -> ApiDSHistoryEvent:
        self.region = value
        return self

    def with_server_id(self, value: str) -> ApiDSHistoryEvent:
        self.server_id = value
        return self

    def with_session_id(self, value: str) -> ApiDSHistoryEvent:
        self.session_id = value
        return self

    def with_status(self, value: str) -> ApiDSHistoryEvent:
        self.status = value
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
        if hasattr(self, "ip_address"):
            result["ipAddress"] = str(self.ip_address)
        elif include_empty:
            result["ipAddress"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server_id"):
            result["serverId"] = str(self.server_id)
        elif include_empty:
            result["serverId"] = ""
        if hasattr(self, "session_id"):
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        exit_code: int,
        ip_address: str,
        reason: str,
        region: str,
        server_id: str,
        session_id: str,
        status: str,
        **kwargs,
    ) -> ApiDSHistoryEvent:
        instance = cls()
        instance.created_at = created_at
        instance.exit_code = exit_code
        instance.ip_address = ip_address
        instance.reason = reason
        instance.region = region
        instance.server_id = server_id
        instance.session_id = session_id
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiDSHistoryEvent:
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
        if "ipAddress" in dict_ and dict_["ipAddress"] is not None:
            instance.ip_address = str(dict_["ipAddress"])
        elif include_empty:
            instance.ip_address = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "serverId" in dict_ and dict_["serverId"] is not None:
            instance.server_id = str(dict_["serverId"])
        elif include_empty:
            instance.server_id = ""
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiDSHistoryEvent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiDSHistoryEvent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiDSHistoryEvent, List[ApiDSHistoryEvent], Dict[Any, ApiDSHistoryEvent]
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
            "ipAddress": "ip_address",
            "reason": "reason",
            "region": "region",
            "serverId": "server_id",
            "sessionId": "session_id",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "exitCode": True,
            "ipAddress": True,
            "reason": True,
            "region": True,
            "serverId": True,
            "sessionId": True,
            "status": True,
        }

    # endregion static methods
