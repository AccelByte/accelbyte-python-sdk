# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

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

from ..models.models_match_result_notification_payload import (
    ModelsMatchResultNotificationPayload,
)
from ..models.models_request_matching_ally import ModelsRequestMatchingAlly


class ModelsCreateSessionRequest(Model):
    """Models create session request (models.CreateSessionRequest)

    Properties:
        client_version: (client_version) REQUIRED str

        configuration: (configuration) REQUIRED str

        deployment: (deployment) REQUIRED str

        game_mode: (game_mode) REQUIRED str

        matching_allies: (matching_allies) REQUIRED List[ModelsRequestMatchingAlly]

        namespace: (namespace) REQUIRED str

        pod_name: (pod_name) REQUIRED str

        region: (region) REQUIRED str

        session_id: (session_id) REQUIRED str

        notification_payload: (notification_payload) OPTIONAL ModelsMatchResultNotificationPayload
    """

    # region fields

    client_version: str  # REQUIRED
    configuration: str  # REQUIRED
    deployment: str  # REQUIRED
    game_mode: str  # REQUIRED
    matching_allies: List[ModelsRequestMatchingAlly]  # REQUIRED
    namespace: str  # REQUIRED
    pod_name: str  # REQUIRED
    region: str  # REQUIRED
    session_id: str  # REQUIRED
    notification_payload: ModelsMatchResultNotificationPayload  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_version(self, value: str) -> ModelsCreateSessionRequest:
        self.client_version = value
        return self

    def with_configuration(self, value: str) -> ModelsCreateSessionRequest:
        self.configuration = value
        return self

    def with_deployment(self, value: str) -> ModelsCreateSessionRequest:
        self.deployment = value
        return self

    def with_game_mode(self, value: str) -> ModelsCreateSessionRequest:
        self.game_mode = value
        return self

    def with_matching_allies(
        self, value: List[ModelsRequestMatchingAlly]
    ) -> ModelsCreateSessionRequest:
        self.matching_allies = value
        return self

    def with_namespace(self, value: str) -> ModelsCreateSessionRequest:
        self.namespace = value
        return self

    def with_pod_name(self, value: str) -> ModelsCreateSessionRequest:
        self.pod_name = value
        return self

    def with_region(self, value: str) -> ModelsCreateSessionRequest:
        self.region = value
        return self

    def with_session_id(self, value: str) -> ModelsCreateSessionRequest:
        self.session_id = value
        return self

    def with_notification_payload(
        self, value: ModelsMatchResultNotificationPayload
    ) -> ModelsCreateSessionRequest:
        self.notification_payload = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_version"):
            result["client_version"] = str(self.client_version)
        elif include_empty:
            result["client_version"] = ""
        if hasattr(self, "configuration"):
            result["configuration"] = str(self.configuration)
        elif include_empty:
            result["configuration"] = ""
        if hasattr(self, "deployment"):
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
        if hasattr(self, "game_mode"):
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "matching_allies"):
            result["matching_allies"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.matching_allies
            ]
        elif include_empty:
            result["matching_allies"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "pod_name"):
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "session_id"):
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = ""
        if hasattr(self, "notification_payload"):
            result["notification_payload"] = self.notification_payload.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["notification_payload"] = ModelsMatchResultNotificationPayload()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_version: str,
        configuration: str,
        deployment: str,
        game_mode: str,
        matching_allies: List[ModelsRequestMatchingAlly],
        namespace: str,
        pod_name: str,
        region: str,
        session_id: str,
        notification_payload: Optional[ModelsMatchResultNotificationPayload] = None,
    ) -> ModelsCreateSessionRequest:
        instance = cls()
        instance.client_version = client_version
        instance.configuration = configuration
        instance.deployment = deployment
        instance.game_mode = game_mode
        instance.matching_allies = matching_allies
        instance.namespace = namespace
        instance.pod_name = pod_name
        instance.region = region
        instance.session_id = session_id
        if notification_payload is not None:
            instance.notification_payload = notification_payload
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "client_version" in dict_ and dict_["client_version"] is not None:
            instance.client_version = str(dict_["client_version"])
        elif include_empty:
            instance.client_version = ""
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = str(dict_["configuration"])
        elif include_empty:
            instance.configuration = ""
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "matching_allies" in dict_ and dict_["matching_allies"] is not None:
            instance.matching_allies = [
                ModelsRequestMatchingAlly.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["matching_allies"]
            ]
        elif include_empty:
            instance.matching_allies = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = ""
        if (
            "notification_payload" in dict_
            and dict_["notification_payload"] is not None
        ):
            instance.notification_payload = (
                ModelsMatchResultNotificationPayload.create_from_dict(
                    dict_["notification_payload"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.notification_payload = ModelsMatchResultNotificationPayload()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateSessionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateSessionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateSessionRequest,
        List[ModelsCreateSessionRequest],
        Dict[Any, ModelsCreateSessionRequest],
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
            "client_version": "client_version",
            "configuration": "configuration",
            "deployment": "deployment",
            "game_mode": "game_mode",
            "matching_allies": "matching_allies",
            "namespace": "namespace",
            "pod_name": "pod_name",
            "region": "region",
            "session_id": "session_id",
            "notification_payload": "notification_payload",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "client_version": True,
            "configuration": True,
            "deployment": True,
            "game_mode": True,
            "matching_allies": True,
            "namespace": True,
            "pod_name": True,
            "region": True,
            "session_id": True,
            "notification_payload": False,
        }

    # endregion static methods
