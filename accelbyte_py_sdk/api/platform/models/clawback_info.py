# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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
from ....core import StrEnum


class FeedbackStatusEnum(StrEnum):
    FAIL = "FAIL"
    INIT = "INIT"
    SUCCESS = "SUCCESS"


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    IGNORED = "IGNORED"
    INIT = "INIT"
    SUCCESS = "SUCCESS"


class ClawbackInfo(Model):
    """Clawback info (ClawbackInfo)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        dry_run: (dryRun) OPTIONAL bool

        event_content: (eventContent) OPTIONAL Dict[str, Any]

        event_id: (eventId) OPTIONAL str

        event_type: (eventType) OPTIONAL str

        external_order_id: (externalOrderId) OPTIONAL str

        feedback_content: (feedbackContent) OPTIONAL Dict[str, Any]

        feedback_status: (feedbackStatus) OPTIONAL Union[str, FeedbackStatusEnum]

        feedback_status_reason: (feedbackStatusReason) OPTIONAL str

        platform: (platform) OPTIONAL str

        process_id: (processId) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        status_reason: (statusReason) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    created_at: str  # OPTIONAL
    dry_run: bool  # OPTIONAL
    event_content: Dict[str, Any]  # OPTIONAL
    event_id: str  # OPTIONAL
    event_type: str  # OPTIONAL
    external_order_id: str  # OPTIONAL
    feedback_content: Dict[str, Any]  # OPTIONAL
    feedback_status: Union[str, FeedbackStatusEnum]  # OPTIONAL
    feedback_status_reason: str  # OPTIONAL
    platform: str  # OPTIONAL
    process_id: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    status_reason: str  # OPTIONAL
    updated_at: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ClawbackInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ClawbackInfo:
        self.namespace = value
        return self

    def with_created_at(self, value: str) -> ClawbackInfo:
        self.created_at = value
        return self

    def with_dry_run(self, value: bool) -> ClawbackInfo:
        self.dry_run = value
        return self

    def with_event_content(self, value: Dict[str, Any]) -> ClawbackInfo:
        self.event_content = value
        return self

    def with_event_id(self, value: str) -> ClawbackInfo:
        self.event_id = value
        return self

    def with_event_type(self, value: str) -> ClawbackInfo:
        self.event_type = value
        return self

    def with_external_order_id(self, value: str) -> ClawbackInfo:
        self.external_order_id = value
        return self

    def with_feedback_content(self, value: Dict[str, Any]) -> ClawbackInfo:
        self.feedback_content = value
        return self

    def with_feedback_status(
        self, value: Union[str, FeedbackStatusEnum]
    ) -> ClawbackInfo:
        self.feedback_status = value
        return self

    def with_feedback_status_reason(self, value: str) -> ClawbackInfo:
        self.feedback_status_reason = value
        return self

    def with_platform(self, value: str) -> ClawbackInfo:
        self.platform = value
        return self

    def with_process_id(self, value: str) -> ClawbackInfo:
        self.process_id = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> ClawbackInfo:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> ClawbackInfo:
        self.status_reason = value
        return self

    def with_updated_at(self, value: str) -> ClawbackInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> ClawbackInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "dry_run"):
            result["dryRun"] = bool(self.dry_run)
        elif include_empty:
            result["dryRun"] = False
        if hasattr(self, "event_content"):
            result["eventContent"] = {
                str(k0): v0 for k0, v0 in self.event_content.items()
            }
        elif include_empty:
            result["eventContent"] = {}
        if hasattr(self, "event_id"):
            result["eventId"] = str(self.event_id)
        elif include_empty:
            result["eventId"] = ""
        if hasattr(self, "event_type"):
            result["eventType"] = str(self.event_type)
        elif include_empty:
            result["eventType"] = ""
        if hasattr(self, "external_order_id"):
            result["externalOrderId"] = str(self.external_order_id)
        elif include_empty:
            result["externalOrderId"] = ""
        if hasattr(self, "feedback_content"):
            result["feedbackContent"] = {
                str(k0): v0 for k0, v0 in self.feedback_content.items()
            }
        elif include_empty:
            result["feedbackContent"] = {}
        if hasattr(self, "feedback_status"):
            result["feedbackStatus"] = str(self.feedback_status)
        elif include_empty:
            result["feedbackStatus"] = Union[str, FeedbackStatusEnum]()
        if hasattr(self, "feedback_status_reason"):
            result["feedbackStatusReason"] = str(self.feedback_status_reason)
        elif include_empty:
            result["feedbackStatusReason"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "process_id"):
            result["processId"] = str(self.process_id)
        elif include_empty:
            result["processId"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        created_at: Optional[str] = None,
        dry_run: Optional[bool] = None,
        event_content: Optional[Dict[str, Any]] = None,
        event_id: Optional[str] = None,
        event_type: Optional[str] = None,
        external_order_id: Optional[str] = None,
        feedback_content: Optional[Dict[str, Any]] = None,
        feedback_status: Optional[Union[str, FeedbackStatusEnum]] = None,
        feedback_status_reason: Optional[str] = None,
        platform: Optional[str] = None,
        process_id: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        status_reason: Optional[str] = None,
        updated_at: Optional[str] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> ClawbackInfo:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        if created_at is not None:
            instance.created_at = created_at
        if dry_run is not None:
            instance.dry_run = dry_run
        if event_content is not None:
            instance.event_content = event_content
        if event_id is not None:
            instance.event_id = event_id
        if event_type is not None:
            instance.event_type = event_type
        if external_order_id is not None:
            instance.external_order_id = external_order_id
        if feedback_content is not None:
            instance.feedback_content = feedback_content
        if feedback_status is not None:
            instance.feedback_status = feedback_status
        if feedback_status_reason is not None:
            instance.feedback_status_reason = feedback_status_reason
        if platform is not None:
            instance.platform = platform
        if process_id is not None:
            instance.process_id = process_id
        if status is not None:
            instance.status = status
        if status_reason is not None:
            instance.status_reason = status_reason
        if updated_at is not None:
            instance.updated_at = updated_at
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClawbackInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "dryRun" in dict_ and dict_["dryRun"] is not None:
            instance.dry_run = bool(dict_["dryRun"])
        elif include_empty:
            instance.dry_run = False
        if "eventContent" in dict_ and dict_["eventContent"] is not None:
            instance.event_content = {
                str(k0): v0 for k0, v0 in dict_["eventContent"].items()
            }
        elif include_empty:
            instance.event_content = {}
        if "eventId" in dict_ and dict_["eventId"] is not None:
            instance.event_id = str(dict_["eventId"])
        elif include_empty:
            instance.event_id = ""
        if "eventType" in dict_ and dict_["eventType"] is not None:
            instance.event_type = str(dict_["eventType"])
        elif include_empty:
            instance.event_type = ""
        if "externalOrderId" in dict_ and dict_["externalOrderId"] is not None:
            instance.external_order_id = str(dict_["externalOrderId"])
        elif include_empty:
            instance.external_order_id = ""
        if "feedbackContent" in dict_ and dict_["feedbackContent"] is not None:
            instance.feedback_content = {
                str(k0): v0 for k0, v0 in dict_["feedbackContent"].items()
            }
        elif include_empty:
            instance.feedback_content = {}
        if "feedbackStatus" in dict_ and dict_["feedbackStatus"] is not None:
            instance.feedback_status = str(dict_["feedbackStatus"])
        elif include_empty:
            instance.feedback_status = Union[str, FeedbackStatusEnum]()
        if (
            "feedbackStatusReason" in dict_
            and dict_["feedbackStatusReason"] is not None
        ):
            instance.feedback_status_reason = str(dict_["feedbackStatusReason"])
        elif include_empty:
            instance.feedback_status_reason = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "processId" in dict_ and dict_["processId"] is not None:
            instance.process_id = str(dict_["processId"])
        elif include_empty:
            instance.process_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClawbackInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClawbackInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ClawbackInfo, List[ClawbackInfo], Dict[Any, ClawbackInfo]]:
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
            "id": "id_",
            "namespace": "namespace",
            "createdAt": "created_at",
            "dryRun": "dry_run",
            "eventContent": "event_content",
            "eventId": "event_id",
            "eventType": "event_type",
            "externalOrderId": "external_order_id",
            "feedbackContent": "feedback_content",
            "feedbackStatus": "feedback_status",
            "feedbackStatusReason": "feedback_status_reason",
            "platform": "platform",
            "processId": "process_id",
            "status": "status",
            "statusReason": "status_reason",
            "updatedAt": "updated_at",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "namespace": True,
            "createdAt": False,
            "dryRun": False,
            "eventContent": False,
            "eventId": False,
            "eventType": False,
            "externalOrderId": False,
            "feedbackContent": False,
            "feedbackStatus": False,
            "feedbackStatusReason": False,
            "platform": False,
            "processId": False,
            "status": False,
            "statusReason": False,
            "updatedAt": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "feedbackStatus": ["FAIL", "INIT", "SUCCESS"],
            "status": ["FAIL", "IGNORED", "INIT", "SUCCESS"],
        }

    # endregion static methods
