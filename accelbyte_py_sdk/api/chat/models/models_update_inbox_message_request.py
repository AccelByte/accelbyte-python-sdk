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


class ModelsUpdateInboxMessageRequest(Model):
    """Models update inbox message request (models.UpdateInboxMessageRequest)

    Properties:
        expired_at: (expiredAt) REQUIRED int

        message: (message) REQUIRED Dict[str, Any]

        scope: (scope) REQUIRED Union[str, ScopeEnum]

        user_ids: (userIds) REQUIRED List[str]
    """

    # region fields

    expired_at: int  # REQUIRED
    message: Dict[str, Any]  # REQUIRED
    scope: Union[str, ScopeEnum]  # REQUIRED
    user_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_expired_at(self, value: int) -> ModelsUpdateInboxMessageRequest:
        self.expired_at = value
        return self

    def with_message(self, value: Dict[str, Any]) -> ModelsUpdateInboxMessageRequest:
        self.message = value
        return self

    def with_scope(
        self, value: Union[str, ScopeEnum]
    ) -> ModelsUpdateInboxMessageRequest:
        self.scope = value
        return self

    def with_user_ids(self, value: List[str]) -> ModelsUpdateInboxMessageRequest:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "expired_at"):
            result["expiredAt"] = int(self.expired_at)
        elif include_empty:
            result["expiredAt"] = 0
        if hasattr(self, "message"):
            result["message"] = {str(k0): v0 for k0, v0 in self.message.items()}
        elif include_empty:
            result["message"] = {}
        if hasattr(self, "scope"):
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = Union[str, ScopeEnum]()
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
        expired_at: int,
        message: Dict[str, Any],
        scope: Union[str, ScopeEnum],
        user_ids: List[str],
        **kwargs,
    ) -> ModelsUpdateInboxMessageRequest:
        instance = cls()
        instance.expired_at = expired_at
        instance.message = message
        instance.scope = scope
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateInboxMessageRequest:
        instance = cls()
        if not dict_:
            return instance
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = int(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = 0
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = {str(k0): v0 for k0, v0 in dict_["message"].items()}
        elif include_empty:
            instance.message = {}
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = Union[str, ScopeEnum]()
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateInboxMessageRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateInboxMessageRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateInboxMessageRequest,
        List[ModelsUpdateInboxMessageRequest],
        Dict[Any, ModelsUpdateInboxMessageRequest],
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
            "expiredAt": "expired_at",
            "message": "message",
            "scope": "scope",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "expiredAt": True,
            "message": True,
            "scope": True,
            "userIds": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "scope": ["NAMESPACE", "USER"],
        }

    # endregion static methods
