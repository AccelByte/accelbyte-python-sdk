# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ScopeEnum(StrEnum):
    NAMESPACE = "NAMESPACE"
    USER = "USER"


class StatusEnum(StrEnum):
    DRAFT = "DRAFT"
    SENT = "SENT"
    UNSENT = "UNSENT"


class ModelsGetInboxMessagesResponseData(Model):
    """Models get inbox messages response data (models.GetInboxMessagesResponseData)

    Properties:
        created_at: (createdAt) REQUIRED int

        expired_at: (expiredAt) REQUIRED int

        id_: (id) REQUIRED str

        scope: (scope) REQUIRED Union[str, ScopeEnum]

        sender_id: (senderId) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED int

        category: (category) OPTIONAL str

        message: (message) OPTIONAL Dict[str, Any]

        user_ids: (userIds) OPTIONAL List[str]
    """

    # region fields

    created_at: int  # REQUIRED
    expired_at: int  # REQUIRED
    id_: str  # REQUIRED
    scope: Union[str, ScopeEnum]  # REQUIRED
    sender_id: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: int  # REQUIRED
    category: str  # OPTIONAL
    message: Dict[str, Any]  # OPTIONAL
    user_ids: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: int) -> ModelsGetInboxMessagesResponseData:
        self.created_at = value
        return self

    def with_expired_at(self, value: int) -> ModelsGetInboxMessagesResponseData:
        self.expired_at = value
        return self

    def with_id(self, value: str) -> ModelsGetInboxMessagesResponseData:
        self.id_ = value
        return self

    def with_scope(
        self, value: Union[str, ScopeEnum]
    ) -> ModelsGetInboxMessagesResponseData:
        self.scope = value
        return self

    def with_sender_id(self, value: str) -> ModelsGetInboxMessagesResponseData:
        self.sender_id = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> ModelsGetInboxMessagesResponseData:
        self.status = value
        return self

    def with_updated_at(self, value: int) -> ModelsGetInboxMessagesResponseData:
        self.updated_at = value
        return self

    def with_category(self, value: str) -> ModelsGetInboxMessagesResponseData:
        self.category = value
        return self

    def with_message(self, value: Dict[str, Any]) -> ModelsGetInboxMessagesResponseData:
        self.message = value
        return self

    def with_user_ids(self, value: List[str]) -> ModelsGetInboxMessagesResponseData:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "expired_at"):
            result["expiredAt"] = int(self.expired_at)
        elif include_empty:
            result["expiredAt"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "scope"):
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = Union[str, ScopeEnum]()
        if hasattr(self, "sender_id"):
            result["senderId"] = str(self.sender_id)
        elif include_empty:
            result["senderId"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = int(self.updated_at)
        elif include_empty:
            result["updatedAt"] = 0
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = ""
        if hasattr(self, "message"):
            result["message"] = {str(k0): v0 for k0, v0 in self.message.items()}
        elif include_empty:
            result["message"] = {}
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: int,
        expired_at: int,
        id_: str,
        scope: Union[str, ScopeEnum],
        sender_id: str,
        status: Union[str, StatusEnum],
        updated_at: int,
        category: Optional[str] = None,
        message: Optional[Dict[str, Any]] = None,
        user_ids: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelsGetInboxMessagesResponseData:
        instance = cls()
        instance.created_at = created_at
        instance.expired_at = expired_at
        instance.id_ = id_
        instance.scope = scope
        instance.sender_id = sender_id
        instance.status = status
        instance.updated_at = updated_at
        if category is not None:
            instance.category = category
        if message is not None:
            instance.message = message
        if user_ids is not None:
            instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetInboxMessagesResponseData:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = int(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = Union[str, ScopeEnum]()
        if "senderId" in dict_ and dict_["senderId"] is not None:
            instance.sender_id = str(dict_["senderId"])
        elif include_empty:
            instance.sender_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = int(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = 0
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = {str(k0): v0 for k0, v0 in dict_["message"].items()}
        elif include_empty:
            instance.message = {}
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetInboxMessagesResponseData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetInboxMessagesResponseData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetInboxMessagesResponseData,
        List[ModelsGetInboxMessagesResponseData],
        Dict[Any, ModelsGetInboxMessagesResponseData],
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
            "createdAt": "created_at",
            "expiredAt": "expired_at",
            "id": "id_",
            "scope": "scope",
            "senderId": "sender_id",
            "status": "status",
            "updatedAt": "updated_at",
            "category": "category",
            "message": "message",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "expiredAt": True,
            "id": True,
            "scope": True,
            "senderId": True,
            "status": True,
            "updatedAt": True,
            "category": False,
            "message": False,
            "userIds": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "scope": ["NAMESPACE", "USER"],
            "status": ["DRAFT", "SENT", "UNSENT"],
        }

    # endregion static methods
