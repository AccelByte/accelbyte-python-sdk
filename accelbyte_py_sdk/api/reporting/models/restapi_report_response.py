# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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


class CategoryEnum(StrEnum):
    CHAT = "CHAT"
    EXTENSION = "EXTENSION"
    UGC = "UGC"
    USER = "USER"


class RestapiReportResponse(Model):
    """Restapi report response (restapi.reportResponse)

    Properties:
        additional_info: (additionalInfo) REQUIRED Dict[str, Any]

        category: (category) REQUIRED Union[str, CategoryEnum]

        comment: (comment) REQUIRED str

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        object_id: (objectId) REQUIRED str

        object_type: (objectType) REQUIRED str

        reason: (reason) REQUIRED str

        reporter_id: (reporterId) REQUIRED str

        ticket_id: (ticketId) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        extension_category: (extensionCategory) OPTIONAL str
    """

    # region fields

    additional_info: Dict[str, Any]  # REQUIRED
    category: Union[str, CategoryEnum]  # REQUIRED
    comment: str  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    object_id: str  # REQUIRED
    object_type: str  # REQUIRED
    reason: str  # REQUIRED
    reporter_id: str  # REQUIRED
    ticket_id: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    extension_category: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_additional_info(self, value: Dict[str, Any]) -> RestapiReportResponse:
        self.additional_info = value
        return self

    def with_category(self, value: Union[str, CategoryEnum]) -> RestapiReportResponse:
        self.category = value
        return self

    def with_comment(self, value: str) -> RestapiReportResponse:
        self.comment = value
        return self

    def with_created_at(self, value: str) -> RestapiReportResponse:
        self.created_at = value
        return self

    def with_id(self, value: str) -> RestapiReportResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> RestapiReportResponse:
        self.namespace = value
        return self

    def with_object_id(self, value: str) -> RestapiReportResponse:
        self.object_id = value
        return self

    def with_object_type(self, value: str) -> RestapiReportResponse:
        self.object_type = value
        return self

    def with_reason(self, value: str) -> RestapiReportResponse:
        self.reason = value
        return self

    def with_reporter_id(self, value: str) -> RestapiReportResponse:
        self.reporter_id = value
        return self

    def with_ticket_id(self, value: str) -> RestapiReportResponse:
        self.ticket_id = value
        return self

    def with_updated_at(self, value: str) -> RestapiReportResponse:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> RestapiReportResponse:
        self.user_id = value
        return self

    def with_extension_category(self, value: str) -> RestapiReportResponse:
        self.extension_category = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additional_info"):
            result["additionalInfo"] = {
                str(k0): v0 for k0, v0 in self.additional_info.items()
            }
        elif include_empty:
            result["additionalInfo"] = {}
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = Union[str, CategoryEnum]()
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "object_id"):
            result["objectId"] = str(self.object_id)
        elif include_empty:
            result["objectId"] = ""
        if hasattr(self, "object_type"):
            result["objectType"] = str(self.object_type)
        elif include_empty:
            result["objectType"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "reporter_id"):
            result["reporterId"] = str(self.reporter_id)
        elif include_empty:
            result["reporterId"] = ""
        if hasattr(self, "ticket_id"):
            result["ticketId"] = str(self.ticket_id)
        elif include_empty:
            result["ticketId"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "extension_category"):
            result["extensionCategory"] = str(self.extension_category)
        elif include_empty:
            result["extensionCategory"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        additional_info: Dict[str, Any],
        category: Union[str, CategoryEnum],
        comment: str,
        created_at: str,
        id_: str,
        namespace: str,
        object_id: str,
        object_type: str,
        reason: str,
        reporter_id: str,
        ticket_id: str,
        updated_at: str,
        user_id: str,
        extension_category: Optional[str] = None,
    ) -> RestapiReportResponse:
        instance = cls()
        instance.additional_info = additional_info
        instance.category = category
        instance.comment = comment
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.object_id = object_id
        instance.object_type = object_type
        instance.reason = reason
        instance.reporter_id = reporter_id
        instance.ticket_id = ticket_id
        instance.updated_at = updated_at
        instance.user_id = user_id
        if extension_category is not None:
            instance.extension_category = extension_category
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiReportResponse:
        instance = cls()
        if not dict_:
            return instance
        if "additionalInfo" in dict_ and dict_["additionalInfo"] is not None:
            instance.additional_info = {
                str(k0): v0 for k0, v0 in dict_["additionalInfo"].items()
            }
        elif include_empty:
            instance.additional_info = {}
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = Union[str, CategoryEnum]()
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "objectId" in dict_ and dict_["objectId"] is not None:
            instance.object_id = str(dict_["objectId"])
        elif include_empty:
            instance.object_id = ""
        if "objectType" in dict_ and dict_["objectType"] is not None:
            instance.object_type = str(dict_["objectType"])
        elif include_empty:
            instance.object_type = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "reporterId" in dict_ and dict_["reporterId"] is not None:
            instance.reporter_id = str(dict_["reporterId"])
        elif include_empty:
            instance.reporter_id = ""
        if "ticketId" in dict_ and dict_["ticketId"] is not None:
            instance.ticket_id = str(dict_["ticketId"])
        elif include_empty:
            instance.ticket_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiReportResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiReportResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiReportResponse,
        List[RestapiReportResponse],
        Dict[Any, RestapiReportResponse],
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
            "additionalInfo": "additional_info",
            "category": "category",
            "comment": "comment",
            "createdAt": "created_at",
            "id": "id_",
            "namespace": "namespace",
            "objectId": "object_id",
            "objectType": "object_type",
            "reason": "reason",
            "reporterId": "reporter_id",
            "ticketId": "ticket_id",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "extensionCategory": "extension_category",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "additionalInfo": True,
            "category": True,
            "comment": True,
            "createdAt": True,
            "id": True,
            "namespace": True,
            "objectId": True,
            "objectType": True,
            "reason": True,
            "reporterId": True,
            "ticketId": True,
            "updatedAt": True,
            "userId": True,
            "extensionCategory": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "category": ["CHAT", "EXTENSION", "UGC", "USER"],
        }

    # endregion static methods
