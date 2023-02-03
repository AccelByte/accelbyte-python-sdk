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

from ..models.restapi_moderation_rule_actions_request import (
    RestapiModerationRuleActionsRequest,
)


class CategoryEnum(StrEnum):
    CHAT = "CHAT"
    EXTENSION = "EXTENSION"
    UGC = "UGC"
    USER = "USER"


class ActionEnum(StrEnum):
    HIDECONTENT = "HideContent"


class RestapiModerationRuleRequest(Model):
    """Restapi moderation rule request (restapi.ModerationRuleRequest)

    Properties:
        active: (active) REQUIRED bool

        category: (category) REQUIRED Union[str, CategoryEnum]

        reason: (reason) REQUIRED str

        threshold: (threshold) REQUIRED int

        action: (action) OPTIONAL Union[str, ActionEnum]

        actions: (actions) OPTIONAL RestapiModerationRuleActionsRequest

        extension_category: (extensionCategory) OPTIONAL str
    """

    # region fields

    active: bool  # REQUIRED
    category: Union[str, CategoryEnum]  # REQUIRED
    reason: str  # REQUIRED
    threshold: int  # REQUIRED
    action: Union[str, ActionEnum]  # OPTIONAL
    actions: RestapiModerationRuleActionsRequest  # OPTIONAL
    extension_category: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> RestapiModerationRuleRequest:
        self.active = value
        return self

    def with_category(
        self, value: Union[str, CategoryEnum]
    ) -> RestapiModerationRuleRequest:
        self.category = value
        return self

    def with_reason(self, value: str) -> RestapiModerationRuleRequest:
        self.reason = value
        return self

    def with_threshold(self, value: int) -> RestapiModerationRuleRequest:
        self.threshold = value
        return self

    def with_action(
        self, value: Union[str, ActionEnum]
    ) -> RestapiModerationRuleRequest:
        self.action = value
        return self

    def with_actions(
        self, value: RestapiModerationRuleActionsRequest
    ) -> RestapiModerationRuleRequest:
        self.actions = value
        return self

    def with_extension_category(self, value: str) -> RestapiModerationRuleRequest:
        self.extension_category = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = Union[str, CategoryEnum]()
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
            result["action"] = Union[str, ActionEnum]()
        if hasattr(self, "actions"):
            result["actions"] = self.actions.to_dict(include_empty=include_empty)
        elif include_empty:
            result["actions"] = RestapiModerationRuleActionsRequest()
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
        active: bool,
        category: Union[str, CategoryEnum],
        reason: str,
        threshold: int,
        action: Optional[Union[str, ActionEnum]] = None,
        actions: Optional[RestapiModerationRuleActionsRequest] = None,
        extension_category: Optional[str] = None,
    ) -> RestapiModerationRuleRequest:
        instance = cls()
        instance.active = active
        instance.category = category
        instance.reason = reason
        instance.threshold = threshold
        if action is not None:
            instance.action = action
        if actions is not None:
            instance.actions = actions
        if extension_category is not None:
            instance.extension_category = extension_category
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiModerationRuleRequest:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = Union[str, CategoryEnum]()
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
            instance.action = Union[str, ActionEnum]()
        if "actions" in dict_ and dict_["actions"] is not None:
            instance.actions = RestapiModerationRuleActionsRequest.create_from_dict(
                dict_["actions"], include_empty=include_empty
            )
        elif include_empty:
            instance.actions = RestapiModerationRuleActionsRequest()
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiModerationRuleRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiModerationRuleRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiModerationRuleRequest,
        List[RestapiModerationRuleRequest],
        Dict[Any, RestapiModerationRuleRequest],
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
            "active": "active",
            "category": "category",
            "reason": "reason",
            "threshold": "threshold",
            "action": "action",
            "actions": "actions",
            "extensionCategory": "extension_category",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "category": True,
            "reason": True,
            "threshold": True,
            "action": False,
            "actions": False,
            "extensionCategory": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "category": ["CHAT", "EXTENSION", "UGC", "USER"],
            "action": ["HideContent"],
        }

    # endregion static methods
