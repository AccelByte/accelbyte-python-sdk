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


class ModelsEvent(Model):
    """Models event (models.Event)

    Properties:
        agent_type: (AgentType) REQUIRED int

        client_id: (ClientID) REQUIRED str

        component_id: (ComponentID) REQUIRED int

        event_id: (EventID) REQUIRED int

        event_level: (EventLevel) REQUIRED int

        event_type: (EventType) REQUIRED int

        ip_address: (IPAddress) REQUIRED str

        namespace: (Namespace) REQUIRED str

        realm: (Realm) REQUIRED str

        target_namespace: (TargetNamespace) REQUIRED str

        target_user_id: (TargetUserID) REQUIRED str

        time: (Time) REQUIRED str

        user_id: (UserID) REQUIRED str

        ux: (UX) REQUIRED int
    """

    # region fields

    agent_type: int  # REQUIRED
    client_id: str  # REQUIRED
    component_id: int  # REQUIRED
    event_id: int  # REQUIRED
    event_level: int  # REQUIRED
    event_type: int  # REQUIRED
    ip_address: str  # REQUIRED
    namespace: str  # REQUIRED
    realm: str  # REQUIRED
    target_namespace: str  # REQUIRED
    target_user_id: str  # REQUIRED
    time: str  # REQUIRED
    user_id: str  # REQUIRED
    ux: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_agent_type(self, value: int) -> ModelsEvent:
        self.agent_type = value
        return self

    def with_client_id(self, value: str) -> ModelsEvent:
        self.client_id = value
        return self

    def with_component_id(self, value: int) -> ModelsEvent:
        self.component_id = value
        return self

    def with_event_id(self, value: int) -> ModelsEvent:
        self.event_id = value
        return self

    def with_event_level(self, value: int) -> ModelsEvent:
        self.event_level = value
        return self

    def with_event_type(self, value: int) -> ModelsEvent:
        self.event_type = value
        return self

    def with_ip_address(self, value: str) -> ModelsEvent:
        self.ip_address = value
        return self

    def with_namespace(self, value: str) -> ModelsEvent:
        self.namespace = value
        return self

    def with_realm(self, value: str) -> ModelsEvent:
        self.realm = value
        return self

    def with_target_namespace(self, value: str) -> ModelsEvent:
        self.target_namespace = value
        return self

    def with_target_user_id(self, value: str) -> ModelsEvent:
        self.target_user_id = value
        return self

    def with_time(self, value: str) -> ModelsEvent:
        self.time = value
        return self

    def with_user_id(self, value: str) -> ModelsEvent:
        self.user_id = value
        return self

    def with_ux(self, value: int) -> ModelsEvent:
        self.ux = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "agent_type"):
            result["AgentType"] = int(self.agent_type)
        elif include_empty:
            result["AgentType"] = 0
        if hasattr(self, "client_id"):
            result["ClientID"] = str(self.client_id)
        elif include_empty:
            result["ClientID"] = ""
        if hasattr(self, "component_id"):
            result["ComponentID"] = int(self.component_id)
        elif include_empty:
            result["ComponentID"] = 0
        if hasattr(self, "event_id"):
            result["EventID"] = int(self.event_id)
        elif include_empty:
            result["EventID"] = 0
        if hasattr(self, "event_level"):
            result["EventLevel"] = int(self.event_level)
        elif include_empty:
            result["EventLevel"] = 0
        if hasattr(self, "event_type"):
            result["EventType"] = int(self.event_type)
        elif include_empty:
            result["EventType"] = 0
        if hasattr(self, "ip_address"):
            result["IPAddress"] = str(self.ip_address)
        elif include_empty:
            result["IPAddress"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "realm"):
            result["Realm"] = str(self.realm)
        elif include_empty:
            result["Realm"] = ""
        if hasattr(self, "target_namespace"):
            result["TargetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["TargetNamespace"] = ""
        if hasattr(self, "target_user_id"):
            result["TargetUserID"] = str(self.target_user_id)
        elif include_empty:
            result["TargetUserID"] = ""
        if hasattr(self, "time"):
            result["Time"] = str(self.time)
        elif include_empty:
            result["Time"] = ""
        if hasattr(self, "user_id"):
            result["UserID"] = str(self.user_id)
        elif include_empty:
            result["UserID"] = ""
        if hasattr(self, "ux"):
            result["UX"] = int(self.ux)
        elif include_empty:
            result["UX"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        agent_type: int,
        client_id: str,
        component_id: int,
        event_id: int,
        event_level: int,
        event_type: int,
        ip_address: str,
        namespace: str,
        realm: str,
        target_namespace: str,
        target_user_id: str,
        time: str,
        user_id: str,
        ux: int,
    ) -> ModelsEvent:
        instance = cls()
        instance.agent_type = agent_type
        instance.client_id = client_id
        instance.component_id = component_id
        instance.event_id = event_id
        instance.event_level = event_level
        instance.event_type = event_type
        instance.ip_address = ip_address
        instance.namespace = namespace
        instance.realm = realm
        instance.target_namespace = target_namespace
        instance.target_user_id = target_user_id
        instance.time = time
        instance.user_id = user_id
        instance.ux = ux
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsEvent:
        instance = cls()
        if not dict_:
            return instance
        if "AgentType" in dict_ and dict_["AgentType"] is not None:
            instance.agent_type = int(dict_["AgentType"])
        elif include_empty:
            instance.agent_type = 0
        if "ClientID" in dict_ and dict_["ClientID"] is not None:
            instance.client_id = str(dict_["ClientID"])
        elif include_empty:
            instance.client_id = ""
        if "ComponentID" in dict_ and dict_["ComponentID"] is not None:
            instance.component_id = int(dict_["ComponentID"])
        elif include_empty:
            instance.component_id = 0
        if "EventID" in dict_ and dict_["EventID"] is not None:
            instance.event_id = int(dict_["EventID"])
        elif include_empty:
            instance.event_id = 0
        if "EventLevel" in dict_ and dict_["EventLevel"] is not None:
            instance.event_level = int(dict_["EventLevel"])
        elif include_empty:
            instance.event_level = 0
        if "EventType" in dict_ and dict_["EventType"] is not None:
            instance.event_type = int(dict_["EventType"])
        elif include_empty:
            instance.event_type = 0
        if "IPAddress" in dict_ and dict_["IPAddress"] is not None:
            instance.ip_address = str(dict_["IPAddress"])
        elif include_empty:
            instance.ip_address = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "Realm" in dict_ and dict_["Realm"] is not None:
            instance.realm = str(dict_["Realm"])
        elif include_empty:
            instance.realm = ""
        if "TargetNamespace" in dict_ and dict_["TargetNamespace"] is not None:
            instance.target_namespace = str(dict_["TargetNamespace"])
        elif include_empty:
            instance.target_namespace = ""
        if "TargetUserID" in dict_ and dict_["TargetUserID"] is not None:
            instance.target_user_id = str(dict_["TargetUserID"])
        elif include_empty:
            instance.target_user_id = ""
        if "Time" in dict_ and dict_["Time"] is not None:
            instance.time = str(dict_["Time"])
        elif include_empty:
            instance.time = ""
        if "UserID" in dict_ and dict_["UserID"] is not None:
            instance.user_id = str(dict_["UserID"])
        elif include_empty:
            instance.user_id = ""
        if "UX" in dict_ and dict_["UX"] is not None:
            instance.ux = int(dict_["UX"])
        elif include_empty:
            instance.ux = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsEvent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsEvent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsEvent, List[ModelsEvent], Dict[Any, ModelsEvent]]:
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
            "AgentType": "agent_type",
            "ClientID": "client_id",
            "ComponentID": "component_id",
            "EventID": "event_id",
            "EventLevel": "event_level",
            "EventType": "event_type",
            "IPAddress": "ip_address",
            "Namespace": "namespace",
            "Realm": "realm",
            "TargetNamespace": "target_namespace",
            "TargetUserID": "target_user_id",
            "Time": "time",
            "UserID": "user_id",
            "UX": "ux",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AgentType": True,
            "ClientID": True,
            "ComponentID": True,
            "EventID": True,
            "EventLevel": True,
            "EventType": True,
            "IPAddress": True,
            "Namespace": True,
            "Realm": True,
            "TargetNamespace": True,
            "TargetUserID": True,
            "Time": True,
            "UserID": True,
            "UX": True,
        }

    # endregion static methods
