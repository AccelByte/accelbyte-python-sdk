# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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

from ..models.domain_allowed_intercepted_port import DomainAllowedInterceptedPort
from ..models.domain_debug_pod import DomainDebugPod
from ..models.domain_exposed_service import DomainExposedService


class ApimodelAppDebugInfoResponse(Model):
    """Apimodel app debug info response (apimodel.AppDebugInfoResponse)

    Properties:
        allowed_intercepted_ports: (allowedInterceptedPorts) REQUIRED List[DomainAllowedInterceptedPort]

        app_status: (appStatus) REQUIRED str

        debug_pods: (debugPods) REQUIRED List[DomainDebugPod]

        exposed_services: (exposedServices) REQUIRED List[DomainExposedService]

        is_debug_mode_enabled: (isDebugModeEnabled) REQUIRED bool

        is_debug_session_connected: (isDebugSessionConnected) REQUIRED bool
    """

    # region fields

    allowed_intercepted_ports: List[DomainAllowedInterceptedPort]  # REQUIRED
    app_status: str  # REQUIRED
    debug_pods: List[DomainDebugPod]  # REQUIRED
    exposed_services: List[DomainExposedService]  # REQUIRED
    is_debug_mode_enabled: bool  # REQUIRED
    is_debug_session_connected: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allowed_intercepted_ports(
        self, value: List[DomainAllowedInterceptedPort]
    ) -> ApimodelAppDebugInfoResponse:
        self.allowed_intercepted_ports = value
        return self

    def with_app_status(self, value: str) -> ApimodelAppDebugInfoResponse:
        self.app_status = value
        return self

    def with_debug_pods(
        self, value: List[DomainDebugPod]
    ) -> ApimodelAppDebugInfoResponse:
        self.debug_pods = value
        return self

    def with_exposed_services(
        self, value: List[DomainExposedService]
    ) -> ApimodelAppDebugInfoResponse:
        self.exposed_services = value
        return self

    def with_is_debug_mode_enabled(self, value: bool) -> ApimodelAppDebugInfoResponse:
        self.is_debug_mode_enabled = value
        return self

    def with_is_debug_session_connected(
        self, value: bool
    ) -> ApimodelAppDebugInfoResponse:
        self.is_debug_session_connected = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_intercepted_ports"):
            result["allowedInterceptedPorts"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.allowed_intercepted_ports
            ]
        elif include_empty:
            result["allowedInterceptedPorts"] = []
        if hasattr(self, "app_status"):
            result["appStatus"] = str(self.app_status)
        elif include_empty:
            result["appStatus"] = ""
        if hasattr(self, "debug_pods"):
            result["debugPods"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.debug_pods
            ]
        elif include_empty:
            result["debugPods"] = []
        if hasattr(self, "exposed_services"):
            result["exposedServices"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.exposed_services
            ]
        elif include_empty:
            result["exposedServices"] = []
        if hasattr(self, "is_debug_mode_enabled"):
            result["isDebugModeEnabled"] = bool(self.is_debug_mode_enabled)
        elif include_empty:
            result["isDebugModeEnabled"] = False
        if hasattr(self, "is_debug_session_connected"):
            result["isDebugSessionConnected"] = bool(self.is_debug_session_connected)
        elif include_empty:
            result["isDebugSessionConnected"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allowed_intercepted_ports: List[DomainAllowedInterceptedPort],
        app_status: str,
        debug_pods: List[DomainDebugPod],
        exposed_services: List[DomainExposedService],
        is_debug_mode_enabled: bool,
        is_debug_session_connected: bool,
        **kwargs,
    ) -> ApimodelAppDebugInfoResponse:
        instance = cls()
        instance.allowed_intercepted_ports = allowed_intercepted_ports
        instance.app_status = app_status
        instance.debug_pods = debug_pods
        instance.exposed_services = exposed_services
        instance.is_debug_mode_enabled = is_debug_mode_enabled
        instance.is_debug_session_connected = is_debug_session_connected
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelAppDebugInfoResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "allowedInterceptedPorts" in dict_
            and dict_["allowedInterceptedPorts"] is not None
        ):
            instance.allowed_intercepted_ports = [
                DomainAllowedInterceptedPort.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["allowedInterceptedPorts"]
            ]
        elif include_empty:
            instance.allowed_intercepted_ports = []
        if "appStatus" in dict_ and dict_["appStatus"] is not None:
            instance.app_status = str(dict_["appStatus"])
        elif include_empty:
            instance.app_status = ""
        if "debugPods" in dict_ and dict_["debugPods"] is not None:
            instance.debug_pods = [
                DomainDebugPod.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["debugPods"]
            ]
        elif include_empty:
            instance.debug_pods = []
        if "exposedServices" in dict_ and dict_["exposedServices"] is not None:
            instance.exposed_services = [
                DomainExposedService.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["exposedServices"]
            ]
        elif include_empty:
            instance.exposed_services = []
        if "isDebugModeEnabled" in dict_ and dict_["isDebugModeEnabled"] is not None:
            instance.is_debug_mode_enabled = bool(dict_["isDebugModeEnabled"])
        elif include_empty:
            instance.is_debug_mode_enabled = False
        if (
            "isDebugSessionConnected" in dict_
            and dict_["isDebugSessionConnected"] is not None
        ):
            instance.is_debug_session_connected = bool(dict_["isDebugSessionConnected"])
        elif include_empty:
            instance.is_debug_session_connected = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelAppDebugInfoResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelAppDebugInfoResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelAppDebugInfoResponse,
        List[ApimodelAppDebugInfoResponse],
        Dict[Any, ApimodelAppDebugInfoResponse],
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
            "allowedInterceptedPorts": "allowed_intercepted_ports",
            "appStatus": "app_status",
            "debugPods": "debug_pods",
            "exposedServices": "exposed_services",
            "isDebugModeEnabled": "is_debug_mode_enabled",
            "isDebugSessionConnected": "is_debug_session_connected",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedInterceptedPorts": True,
            "appStatus": True,
            "debugPods": True,
            "exposedServices": True,
            "isDebugModeEnabled": True,
            "isDebugSessionConnected": True,
        }

    # endregion static methods
