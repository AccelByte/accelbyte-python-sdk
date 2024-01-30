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


class ModelsSaveInboxMessageResponse(Model):
    """Models save inbox message response (models.SaveInboxMessageResponse)

    Properties:
        category: (category) REQUIRED str

        expired_at: (expiredAt) REQUIRED int

        id_: (id) REQUIRED str

        message: (message) REQUIRED Dict[str, Any]

        scope: (scope) REQUIRED Union[str, ScopeEnum]

        status: (status) REQUIRED Union[str, StatusEnum]

        user_i_ds: (userIDs) REQUIRED List[str]
    """

    # region fields

    category: str  # REQUIRED
    expired_at: int  # REQUIRED
    id_: str  # REQUIRED
    message: Dict[str, Any]  # REQUIRED
    scope: Union[str, ScopeEnum]  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    user_i_ds: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_category(self, value: str) -> ModelsSaveInboxMessageResponse:
        self.category = value
        return self

    def with_expired_at(self, value: int) -> ModelsSaveInboxMessageResponse:
        self.expired_at = value
        return self

    def with_id(self, value: str) -> ModelsSaveInboxMessageResponse:
        self.id_ = value
        return self

    def with_message(self, value: Dict[str, Any]) -> ModelsSaveInboxMessageResponse:
        self.message = value
        return self

    def with_scope(
        self, value: Union[str, ScopeEnum]
    ) -> ModelsSaveInboxMessageResponse:
        self.scope = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> ModelsSaveInboxMessageResponse:
        self.status = value
        return self

    def with_user_i_ds(self, value: List[str]) -> ModelsSaveInboxMessageResponse:
        self.user_i_ds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = ""
        if hasattr(self, "expired_at"):
            result["expiredAt"] = int(self.expired_at)
        elif include_empty:
            result["expiredAt"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "message"):
            result["message"] = {str(k0): v0 for k0, v0 in self.message.items()}
        elif include_empty:
            result["message"] = {}
        if hasattr(self, "scope"):
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = Union[str, ScopeEnum]()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "user_i_ds"):
            result["userIDs"] = [str(i0) for i0 in self.user_i_ds]
        elif include_empty:
            result["userIDs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        category: str,
        expired_at: int,
        id_: str,
        message: Dict[str, Any],
        scope: Union[str, ScopeEnum],
        status: Union[str, StatusEnum],
        user_i_ds: List[str],
        **kwargs,
    ) -> ModelsSaveInboxMessageResponse:
        instance = cls()
        instance.category = category
        instance.expired_at = expired_at
        instance.id_ = id_
        instance.message = message
        instance.scope = scope
        instance.status = status
        instance.user_i_ds = user_i_ds
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSaveInboxMessageResponse:
        instance = cls()
        if not dict_:
            return instance
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = ""
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = int(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = {str(k0): v0 for k0, v0 in dict_["message"].items()}
        elif include_empty:
            instance.message = {}
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = Union[str, ScopeEnum]()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "userIDs" in dict_ and dict_["userIDs"] is not None:
            instance.user_i_ds = [str(i0) for i0 in dict_["userIDs"]]
        elif include_empty:
            instance.user_i_ds = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSaveInboxMessageResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSaveInboxMessageResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsSaveInboxMessageResponse,
        List[ModelsSaveInboxMessageResponse],
        Dict[Any, ModelsSaveInboxMessageResponse],
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
            "expiredAt": "expired_at",
            "id": "id_",
            "message": "message",
            "scope": "scope",
            "status": "status",
            "userIDs": "user_i_ds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "category": True,
            "expiredAt": True,
            "id": True,
            "message": True,
            "scope": True,
            "status": True,
            "userIDs": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "scope": ["NAMESPACE", "USER"],
            "status": ["DRAFT", "SENT", "UNSENT"],
        }

    # endregion static methods
