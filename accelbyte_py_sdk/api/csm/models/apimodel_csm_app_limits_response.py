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

from ..models.model_csm_autoscaling_defaults import ModelCSMAutoscalingDefaults


class ApimodelCSMAppLimitsResponse(Model):
    """Apimodel CSM app limits response (apimodel.CSMAppLimitsResponse)

    Properties:
        autoscaling: (autoscaling) REQUIRED ModelCSMAutoscalingDefaults

        extend_app_cpu_limit: (extendAppCPULimit) REQUIRED int

        extend_app_event_handler_cpu_limit: (extendAppEventHandlerCPULimit) REQUIRED int

        extend_app_memory_limit: (extendAppMemoryLimit) REQUIRED int

        extend_app_replica_limit: (extendAppReplicaLimit) REQUIRED int

        extend_appe_event_handler_memory_limit: (extendAppeEventHandlerMemoryLimit) REQUIRED int

        max_subscriber_count: (maxSubscriberCount) REQUIRED int
    """

    # region fields

    autoscaling: ModelCSMAutoscalingDefaults  # REQUIRED
    extend_app_cpu_limit: int  # REQUIRED
    extend_app_event_handler_cpu_limit: int  # REQUIRED
    extend_app_memory_limit: int  # REQUIRED
    extend_app_replica_limit: int  # REQUIRED
    extend_appe_event_handler_memory_limit: int  # REQUIRED
    max_subscriber_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_autoscaling(
        self, value: ModelCSMAutoscalingDefaults
    ) -> ApimodelCSMAppLimitsResponse:
        self.autoscaling = value
        return self

    def with_extend_app_cpu_limit(self, value: int) -> ApimodelCSMAppLimitsResponse:
        self.extend_app_cpu_limit = value
        return self

    def with_extend_app_event_handler_cpu_limit(
        self, value: int
    ) -> ApimodelCSMAppLimitsResponse:
        self.extend_app_event_handler_cpu_limit = value
        return self

    def with_extend_app_memory_limit(self, value: int) -> ApimodelCSMAppLimitsResponse:
        self.extend_app_memory_limit = value
        return self

    def with_extend_app_replica_limit(self, value: int) -> ApimodelCSMAppLimitsResponse:
        self.extend_app_replica_limit = value
        return self

    def with_extend_appe_event_handler_memory_limit(
        self, value: int
    ) -> ApimodelCSMAppLimitsResponse:
        self.extend_appe_event_handler_memory_limit = value
        return self

    def with_max_subscriber_count(self, value: int) -> ApimodelCSMAppLimitsResponse:
        self.max_subscriber_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "autoscaling"):
            result["autoscaling"] = self.autoscaling.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["autoscaling"] = ModelCSMAutoscalingDefaults()
        if hasattr(self, "extend_app_cpu_limit"):
            result["extendAppCPULimit"] = int(self.extend_app_cpu_limit)
        elif include_empty:
            result["extendAppCPULimit"] = 0
        if hasattr(self, "extend_app_event_handler_cpu_limit"):
            result["extendAppEventHandlerCPULimit"] = int(
                self.extend_app_event_handler_cpu_limit
            )
        elif include_empty:
            result["extendAppEventHandlerCPULimit"] = 0
        if hasattr(self, "extend_app_memory_limit"):
            result["extendAppMemoryLimit"] = int(self.extend_app_memory_limit)
        elif include_empty:
            result["extendAppMemoryLimit"] = 0
        if hasattr(self, "extend_app_replica_limit"):
            result["extendAppReplicaLimit"] = int(self.extend_app_replica_limit)
        elif include_empty:
            result["extendAppReplicaLimit"] = 0
        if hasattr(self, "extend_appe_event_handler_memory_limit"):
            result["extendAppeEventHandlerMemoryLimit"] = int(
                self.extend_appe_event_handler_memory_limit
            )
        elif include_empty:
            result["extendAppeEventHandlerMemoryLimit"] = 0
        if hasattr(self, "max_subscriber_count"):
            result["maxSubscriberCount"] = int(self.max_subscriber_count)
        elif include_empty:
            result["maxSubscriberCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        autoscaling: ModelCSMAutoscalingDefaults,
        extend_app_cpu_limit: int,
        extend_app_event_handler_cpu_limit: int,
        extend_app_memory_limit: int,
        extend_app_replica_limit: int,
        extend_appe_event_handler_memory_limit: int,
        max_subscriber_count: int,
        **kwargs,
    ) -> ApimodelCSMAppLimitsResponse:
        instance = cls()
        instance.autoscaling = autoscaling
        instance.extend_app_cpu_limit = extend_app_cpu_limit
        instance.extend_app_event_handler_cpu_limit = extend_app_event_handler_cpu_limit
        instance.extend_app_memory_limit = extend_app_memory_limit
        instance.extend_app_replica_limit = extend_app_replica_limit
        instance.extend_appe_event_handler_memory_limit = (
            extend_appe_event_handler_memory_limit
        )
        instance.max_subscriber_count = max_subscriber_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelCSMAppLimitsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "autoscaling" in dict_ and dict_["autoscaling"] is not None:
            instance.autoscaling = ModelCSMAutoscalingDefaults.create_from_dict(
                dict_["autoscaling"], include_empty=include_empty
            )
        elif include_empty:
            instance.autoscaling = ModelCSMAutoscalingDefaults()
        if "extendAppCPULimit" in dict_ and dict_["extendAppCPULimit"] is not None:
            instance.extend_app_cpu_limit = int(dict_["extendAppCPULimit"])
        elif include_empty:
            instance.extend_app_cpu_limit = 0
        if (
            "extendAppEventHandlerCPULimit" in dict_
            and dict_["extendAppEventHandlerCPULimit"] is not None
        ):
            instance.extend_app_event_handler_cpu_limit = int(
                dict_["extendAppEventHandlerCPULimit"]
            )
        elif include_empty:
            instance.extend_app_event_handler_cpu_limit = 0
        if (
            "extendAppMemoryLimit" in dict_
            and dict_["extendAppMemoryLimit"] is not None
        ):
            instance.extend_app_memory_limit = int(dict_["extendAppMemoryLimit"])
        elif include_empty:
            instance.extend_app_memory_limit = 0
        if (
            "extendAppReplicaLimit" in dict_
            and dict_["extendAppReplicaLimit"] is not None
        ):
            instance.extend_app_replica_limit = int(dict_["extendAppReplicaLimit"])
        elif include_empty:
            instance.extend_app_replica_limit = 0
        if (
            "extendAppeEventHandlerMemoryLimit" in dict_
            and dict_["extendAppeEventHandlerMemoryLimit"] is not None
        ):
            instance.extend_appe_event_handler_memory_limit = int(
                dict_["extendAppeEventHandlerMemoryLimit"]
            )
        elif include_empty:
            instance.extend_appe_event_handler_memory_limit = 0
        if "maxSubscriberCount" in dict_ and dict_["maxSubscriberCount"] is not None:
            instance.max_subscriber_count = int(dict_["maxSubscriberCount"])
        elif include_empty:
            instance.max_subscriber_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelCSMAppLimitsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelCSMAppLimitsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelCSMAppLimitsResponse,
        List[ApimodelCSMAppLimitsResponse],
        Dict[Any, ApimodelCSMAppLimitsResponse],
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
            "autoscaling": "autoscaling",
            "extendAppCPULimit": "extend_app_cpu_limit",
            "extendAppEventHandlerCPULimit": "extend_app_event_handler_cpu_limit",
            "extendAppMemoryLimit": "extend_app_memory_limit",
            "extendAppReplicaLimit": "extend_app_replica_limit",
            "extendAppeEventHandlerMemoryLimit": "extend_appe_event_handler_memory_limit",
            "maxSubscriberCount": "max_subscriber_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "autoscaling": True,
            "extendAppCPULimit": True,
            "extendAppEventHandlerCPULimit": True,
            "extendAppMemoryLimit": True,
            "extendAppReplicaLimit": True,
            "extendAppeEventHandlerMemoryLimit": True,
            "maxSubscriberCount": True,
        }

    # endregion static methods
