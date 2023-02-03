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

from ..models.restapi_moderation_rule_actions_response import (
    RestapiModerationRuleActionsResponse,
)


class RestapiModerationRuleResponse(Model):
    """Restapi moderation rule response (restapi.ModerationRuleResponse)

    Properties:
        actions: (actions) REQUIRED RestapiModerationRuleActionsResponse

        active: (active) REQUIRED bool

        category: (category) REQUIRED str

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        reason: (reason) REQUIRED str

        threshold: (threshold) REQUIRED int

        action: (action) OPTIONAL str

        extension_category: (extensionCategory) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    actions: RestapiModerationRuleActionsResponse  # REQUIRED
    active: bool  # REQUIRED
    category: str  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    reason: str  # REQUIRED
    threshold: int  # REQUIRED
    action: str  # OPTIONAL
    extension_category: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_actions(
        self, value: RestapiModerationRuleActionsResponse
    ) -> RestapiModerationRuleResponse:
        self.actions = value
        return self

    def with_active(self, value: bool) -> RestapiModerationRuleResponse:
        self.active = value
        return self

    def with_category(self, value: str) -> RestapiModerationRuleResponse:
        self.category = value
        return self

    def with_created_at(self, value: str) -> RestapiModerationRuleResponse:
        self.created_at = value
        return self

    def with_id(self, value: str) -> RestapiModerationRuleResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> RestapiModerationRuleResponse:
        self.namespace = value
        return self

    def with_reason(self, value: str) -> RestapiModerationRuleResponse:
        self.reason = value
        return self

    def with_threshold(self, value: int) -> RestapiModerationRuleResponse:
        self.threshold = value
        return self

    def with_action(self, value: str) -> RestapiModerationRuleResponse:
        self.action = value
        return self

    def with_extension_category(self, value: str) -> RestapiModerationRuleResponse:
        self.extension_category = value
        return self

    def with_updated_at(self, value: str) -> RestapiModerationRuleResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "actions"):
            result["actions"] = self.actions.to_dict(include_empty=include_empty)
        elif include_empty:
            result["actions"] = RestapiModerationRuleActionsResponse()
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = ""
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
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "threshold"):
            result["threshold"] = int(self.threshold)
        elif include_empty:
            result["threshold"] = 0
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = ""
        if hasattr(self, "extension_category"):
            result["extensionCategory"] = str(self.extension_category)
        elif include_empty:
            result["extensionCategory"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        actions: RestapiModerationRuleActionsResponse,
        active: bool,
        category: str,
        created_at: str,
        id_: str,
        namespace: str,
        reason: str,
        threshold: int,
        action: Optional[str] = None,
        extension_category: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> RestapiModerationRuleResponse:
        instance = cls()
        instance.actions = actions
        instance.active = active
        instance.category = category
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.reason = reason
        instance.threshold = threshold
        if action is not None:
            instance.action = action
        if extension_category is not None:
            instance.extension_category = extension_category
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiModerationRuleResponse:
        instance = cls()
        if not dict_:
            return instance
        if "actions" in dict_ and dict_["actions"] is not None:
            instance.actions = RestapiModerationRuleActionsResponse.create_from_dict(
                dict_["actions"], include_empty=include_empty
            )
        elif include_empty:
            instance.actions = RestapiModerationRuleActionsResponse()
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = ""
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
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "threshold" in dict_ and dict_["threshold"] is not None:
            instance.threshold = int(dict_["threshold"])
        elif include_empty:
            instance.threshold = 0
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = ""
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiModerationRuleResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiModerationRuleResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiModerationRuleResponse,
        List[RestapiModerationRuleResponse],
        Dict[Any, RestapiModerationRuleResponse],
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
            "actions": "actions",
            "active": "active",
            "category": "category",
            "createdAt": "created_at",
            "id": "id_",
            "namespace": "namespace",
            "reason": "reason",
            "threshold": "threshold",
            "action": "action",
            "extensionCategory": "extension_category",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "actions": True,
            "active": True,
            "category": True,
            "createdAt": True,
            "id": True,
            "namespace": True,
            "reason": True,
            "threshold": True,
            "action": False,
            "extensionCategory": False,
            "updatedAt": False,
        }

    # endregion static methods
