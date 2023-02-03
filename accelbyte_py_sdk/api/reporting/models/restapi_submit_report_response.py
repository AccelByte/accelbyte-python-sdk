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


class StatusEnum(StrEnum):
    AUTO_MODERATED = "AUTO_MODERATED"
    CLOSED = "CLOSED"
    OPEN = "OPEN"
    UNKNOWN = "UNKNOWN"


class RestapiSubmitReportResponse(Model):
    """Restapi submit report response (restapi.submitReportResponse)

    Properties:
        category: (category) REQUIRED Union[str, CategoryEnum]

        created_at: (createdAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        object_id: (objectId) REQUIRED str

        object_type: (objectType) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        ticket_id: (ticketId) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        extension_category: (extensionCategory) OPTIONAL str
    """

    # region fields

    category: Union[str, CategoryEnum]  # REQUIRED
    created_at: str  # REQUIRED
    namespace: str  # REQUIRED
    object_id: str  # REQUIRED
    object_type: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    ticket_id: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    extension_category: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category(
        self, value: Union[str, CategoryEnum]
    ) -> RestapiSubmitReportResponse:
        self.category = value
        return self

    def with_created_at(self, value: str) -> RestapiSubmitReportResponse:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> RestapiSubmitReportResponse:
        self.namespace = value
        return self

    def with_object_id(self, value: str) -> RestapiSubmitReportResponse:
        self.object_id = value
        return self

    def with_object_type(self, value: str) -> RestapiSubmitReportResponse:
        self.object_type = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> RestapiSubmitReportResponse:
        self.status = value
        return self

    def with_ticket_id(self, value: str) -> RestapiSubmitReportResponse:
        self.ticket_id = value
        return self

    def with_updated_at(self, value: str) -> RestapiSubmitReportResponse:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> RestapiSubmitReportResponse:
        self.user_id = value
        return self

    def with_extension_category(self, value: str) -> RestapiSubmitReportResponse:
        self.extension_category = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = Union[str, CategoryEnum]()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
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
        category: Union[str, CategoryEnum],
        created_at: str,
        namespace: str,
        object_id: str,
        object_type: str,
        status: Union[str, StatusEnum],
        ticket_id: str,
        updated_at: str,
        user_id: str,
        extension_category: Optional[str] = None,
    ) -> RestapiSubmitReportResponse:
        instance = cls()
        instance.category = category
        instance.created_at = created_at
        instance.namespace = namespace
        instance.object_id = object_id
        instance.object_type = object_type
        instance.status = status
        instance.ticket_id = ticket_id
        instance.updated_at = updated_at
        instance.user_id = user_id
        if extension_category is not None:
            instance.extension_category = extension_category
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiSubmitReportResponse:
        instance = cls()
        if not dict_:
            return instance
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = Union[str, CategoryEnum]()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
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
    ) -> Dict[str, RestapiSubmitReportResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiSubmitReportResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiSubmitReportResponse,
        List[RestapiSubmitReportResponse],
        Dict[Any, RestapiSubmitReportResponse],
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
            "category": "category",
            "createdAt": "created_at",
            "namespace": "namespace",
            "objectId": "object_id",
            "objectType": "object_type",
            "status": "status",
            "ticketId": "ticket_id",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "extensionCategory": "extension_category",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "category": True,
            "createdAt": True,
            "namespace": True,
            "objectId": True,
            "objectType": True,
            "status": True,
            "ticketId": True,
            "updatedAt": True,
            "userId": True,
            "extensionCategory": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "category": ["CHAT", "EXTENSION", "UGC", "USER"],
            "status": ["AUTO_MODERATED", "CLOSED", "OPEN", "UNKNOWN"],
        }

    # endregion static methods
