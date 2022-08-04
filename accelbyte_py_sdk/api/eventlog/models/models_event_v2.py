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


class ModelsEventV2(Model):
    """Models event V2 (models.EventV2)

    Properties:
        client_id: (clientId) REQUIRED str

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        session_id: (sessionId) REQUIRED str

        timestamp: (timestamp) REQUIRED str

        trace_id: (traceId) REQUIRED str

        user_id: (userId) REQUIRED str

        version: (version) REQUIRED int

        payload: (payload) OPTIONAL Dict[str, Any]
    """

    # region fields

    client_id: str  # REQUIRED
    id_: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    session_id: str  # REQUIRED
    timestamp: str  # REQUIRED
    trace_id: str  # REQUIRED
    user_id: str  # REQUIRED
    version: int  # REQUIRED
    payload: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ModelsEventV2:
        self.client_id = value
        return self

    def with_id(self, value: str) -> ModelsEventV2:
        self.id_ = value
        return self

    def with_name(self, value: str) -> ModelsEventV2:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsEventV2:
        self.namespace = value
        return self

    def with_session_id(self, value: str) -> ModelsEventV2:
        self.session_id = value
        return self

    def with_timestamp(self, value: str) -> ModelsEventV2:
        self.timestamp = value
        return self

    def with_trace_id(self, value: str) -> ModelsEventV2:
        self.trace_id = value
        return self

    def with_user_id(self, value: str) -> ModelsEventV2:
        self.user_id = value
        return self

    def with_version(self, value: int) -> ModelsEventV2:
        self.version = value
        return self

    def with_payload(self, value: Dict[str, Any]) -> ModelsEventV2:
        self.payload = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
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
        if hasattr(self, "session_id"):
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
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
        if hasattr(self, "payload"):
            result["payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["payload"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        id_: str,
        name: str,
        namespace: str,
        session_id: str,
        timestamp: str,
        trace_id: str,
        user_id: str,
        version: int,
        payload: Optional[Dict[str, Any]] = None,
    ) -> ModelsEventV2:
        instance = cls()
        instance.client_id = client_id
        instance.id_ = id_
        instance.name = name
        instance.namespace = namespace
        instance.session_id = session_id
        instance.timestamp = timestamp
        instance.trace_id = trace_id
        instance.user_id = user_id
        instance.version = version
        if payload is not None:
            instance.payload = payload
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsEventV2:
        instance = cls()
        if not dict_:
            return instance
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
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
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
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
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["payload"].items()}
        elif include_empty:
            instance.payload = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsEventV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsEventV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsEventV2, List[ModelsEventV2], Dict[Any, ModelsEventV2]]:
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
            "id": "id_",
            "name": "name",
            "namespace": "namespace",
            "sessionId": "session_id",
            "timestamp": "timestamp",
            "traceId": "trace_id",
            "userId": "user_id",
            "version": "version",
            "payload": "payload",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "id": True,
            "name": True,
            "namespace": True,
            "sessionId": True,
            "timestamp": True,
            "traceId": True,
            "userId": True,
            "version": True,
            "payload": False,
        }

    # endregion static methods
