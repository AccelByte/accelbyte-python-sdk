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


class RestapiTicketResponse(Model):
    """Restapi ticket response (restapi.ticketResponse)

    Properties:
        category: (category) REQUIRED Union[str, CategoryEnum]

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        notes: (notes) REQUIRED str

        object_id: (objectId) REQUIRED str

        object_type: (objectType) REQUIRED str

        reports_count: (reportsCount) REQUIRED int

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        extension_category: (extensionCategory) OPTIONAL str
    """

    # region fields

    category: Union[str, CategoryEnum]  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    notes: str  # REQUIRED
    object_id: str  # REQUIRED
    object_type: str  # REQUIRED
    reports_count: int  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    extension_category: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category(self, value: Union[str, CategoryEnum]) -> RestapiTicketResponse:
        self.category = value
        return self

    def with_created_at(self, value: str) -> RestapiTicketResponse:
        self.created_at = value
        return self

    def with_id(self, value: str) -> RestapiTicketResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> RestapiTicketResponse:
        self.namespace = value
        return self

    def with_notes(self, value: str) -> RestapiTicketResponse:
        self.notes = value
        return self

    def with_object_id(self, value: str) -> RestapiTicketResponse:
        self.object_id = value
        return self

    def with_object_type(self, value: str) -> RestapiTicketResponse:
        self.object_type = value
        return self

    def with_reports_count(self, value: int) -> RestapiTicketResponse:
        self.reports_count = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> RestapiTicketResponse:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> RestapiTicketResponse:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> RestapiTicketResponse:
        self.user_id = value
        return self

    def with_extension_category(self, value: str) -> RestapiTicketResponse:
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
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "notes"):
            result["notes"] = str(self.notes)
        elif include_empty:
            result["notes"] = ""
        if hasattr(self, "object_id"):
            result["objectId"] = str(self.object_id)
        elif include_empty:
            result["objectId"] = ""
        if hasattr(self, "object_type"):
            result["objectType"] = str(self.object_type)
        elif include_empty:
            result["objectType"] = ""
        if hasattr(self, "reports_count"):
            result["reportsCount"] = int(self.reports_count)
        elif include_empty:
            result["reportsCount"] = 0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
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
        id_: str,
        namespace: str,
        notes: str,
        object_id: str,
        object_type: str,
        reports_count: int,
        status: Union[str, StatusEnum],
        updated_at: str,
        user_id: str,
        extension_category: Optional[str] = None,
    ) -> RestapiTicketResponse:
        instance = cls()
        instance.category = category
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.notes = notes
        instance.object_id = object_id
        instance.object_type = object_type
        instance.reports_count = reports_count
        instance.status = status
        instance.updated_at = updated_at
        instance.user_id = user_id
        if extension_category is not None:
            instance.extension_category = extension_category
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiTicketResponse:
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
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "notes" in dict_ and dict_["notes"] is not None:
            instance.notes = str(dict_["notes"])
        elif include_empty:
            instance.notes = ""
        if "objectId" in dict_ and dict_["objectId"] is not None:
            instance.object_id = str(dict_["objectId"])
        elif include_empty:
            instance.object_id = ""
        if "objectType" in dict_ and dict_["objectType"] is not None:
            instance.object_type = str(dict_["objectType"])
        elif include_empty:
            instance.object_type = ""
        if "reportsCount" in dict_ and dict_["reportsCount"] is not None:
            instance.reports_count = int(dict_["reportsCount"])
        elif include_empty:
            instance.reports_count = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
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
    ) -> Dict[str, RestapiTicketResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiTicketResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiTicketResponse,
        List[RestapiTicketResponse],
        Dict[Any, RestapiTicketResponse],
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
            "id": "id_",
            "namespace": "namespace",
            "notes": "notes",
            "objectId": "object_id",
            "objectType": "object_type",
            "reportsCount": "reports_count",
            "status": "status",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "extensionCategory": "extension_category",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "category": True,
            "createdAt": True,
            "id": True,
            "namespace": True,
            "notes": True,
            "objectId": True,
            "objectType": True,
            "reportsCount": True,
            "status": True,
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
