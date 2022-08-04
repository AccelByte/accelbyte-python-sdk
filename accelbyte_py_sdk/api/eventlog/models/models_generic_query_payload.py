# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Event Log Service ()

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


class ModelsGenericQueryPayload(Model):
    """Models generic query payload (models.GenericQueryPayload)

    Properties:
        client_id: (clientId) REQUIRED str

        event_name: (eventName) REQUIRED str

        payload_query: (payloadQuery) REQUIRED Dict[str, Any]

        session_id: (sessionId) REQUIRED str

        trace_id: (traceId) REQUIRED str

        user_id: (userId) REQUIRED str

        version: (version) REQUIRED int
    """

    # region fields

    client_id: str  # REQUIRED
    event_name: str  # REQUIRED
    payload_query: Dict[str, Any]  # REQUIRED
    session_id: str  # REQUIRED
    trace_id: str  # REQUIRED
    user_id: str  # REQUIRED
    version: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ModelsGenericQueryPayload:
        self.client_id = value
        return self

    def with_event_name(self, value: str) -> ModelsGenericQueryPayload:
        self.event_name = value
        return self

    def with_payload_query(self, value: Dict[str, Any]) -> ModelsGenericQueryPayload:
        self.payload_query = value
        return self

    def with_session_id(self, value: str) -> ModelsGenericQueryPayload:
        self.session_id = value
        return self

    def with_trace_id(self, value: str) -> ModelsGenericQueryPayload:
        self.trace_id = value
        return self

    def with_user_id(self, value: str) -> ModelsGenericQueryPayload:
        self.user_id = value
        return self

    def with_version(self, value: int) -> ModelsGenericQueryPayload:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "event_name"):
            result["eventName"] = str(self.event_name)
        elif include_empty:
            result["eventName"] = ""
        if hasattr(self, "payload_query"):
            result["payloadQuery"] = {
                str(k0): v0 for k0, v0 in self.payload_query.items()
            }
        elif include_empty:
            result["payloadQuery"] = {}
        if hasattr(self, "session_id"):
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        if hasattr(self, "trace_id"):
            result["traceId"] = str(self.trace_id)
        elif include_empty:
            result["traceId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "version"):
            result["version"] = int(self.version)
        elif include_empty:
            result["version"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        event_name: str,
        payload_query: Dict[str, Any],
        session_id: str,
        trace_id: str,
        user_id: str,
        version: int,
    ) -> ModelsGenericQueryPayload:
        instance = cls()
        instance.client_id = client_id
        instance.event_name = event_name
        instance.payload_query = payload_query
        instance.session_id = session_id
        instance.trace_id = trace_id
        instance.user_id = user_id
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGenericQueryPayload:
        instance = cls()
        if not dict_:
            return instance
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "eventName" in dict_ and dict_["eventName"] is not None:
            instance.event_name = str(dict_["eventName"])
        elif include_empty:
            instance.event_name = ""
        if "payloadQuery" in dict_ and dict_["payloadQuery"] is not None:
            instance.payload_query = {
                str(k0): v0 for k0, v0 in dict_["payloadQuery"].items()
            }
        elif include_empty:
            instance.payload_query = {}
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        if "traceId" in dict_ and dict_["traceId"] is not None:
            instance.trace_id = str(dict_["traceId"])
        elif include_empty:
            instance.trace_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGenericQueryPayload]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGenericQueryPayload]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGenericQueryPayload,
        List[ModelsGenericQueryPayload],
        Dict[Any, ModelsGenericQueryPayload],
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
            "clientId": "client_id",
            "eventName": "event_name",
            "payloadQuery": "payload_query",
            "sessionId": "session_id",
            "traceId": "trace_id",
            "userId": "user_id",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "eventName": True,
            "payloadQuery": True,
            "sessionId": True,
            "traceId": True,
            "userId": True,
            "version": True,
        }

    # endregion static methods
