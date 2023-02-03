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

from ..models.restapi_ban_account_action_response import RestapiBanAccountActionResponse


class RestapiModerationRuleActionsResponse(Model):
    """Restapi moderation rule actions response (restapi.ModerationRuleActionsResponse)

    Properties:
        ban_account: (banAccount) OPTIONAL RestapiBanAccountActionResponse

        delete_chat: (deleteChat) OPTIONAL bool

        extension_action_ids: (extensionActionIds) OPTIONAL List[str]

        hide_content: (hideContent) OPTIONAL bool
    """

    # region fields

    ban_account: RestapiBanAccountActionResponse  # OPTIONAL
    delete_chat: bool  # OPTIONAL
    extension_action_ids: List[str]  # OPTIONAL
    hide_content: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ban_account(
        self, value: RestapiBanAccountActionResponse
    ) -> RestapiModerationRuleActionsResponse:
        self.ban_account = value
        return self

    def with_delete_chat(self, value: bool) -> RestapiModerationRuleActionsResponse:
        self.delete_chat = value
        return self

    def with_extension_action_ids(
        self, value: List[str]
    ) -> RestapiModerationRuleActionsResponse:
        self.extension_action_ids = value
        return self

    def with_hide_content(self, value: bool) -> RestapiModerationRuleActionsResponse:
        self.hide_content = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban_account"):
            result["banAccount"] = self.ban_account.to_dict(include_empty=include_empty)
        elif include_empty:
            result["banAccount"] = RestapiBanAccountActionResponse()
        if hasattr(self, "delete_chat"):
            result["deleteChat"] = bool(self.delete_chat)
        elif include_empty:
            result["deleteChat"] = False
        if hasattr(self, "extension_action_ids"):
            result["extensionActionIds"] = [str(i0) for i0 in self.extension_action_ids]
        elif include_empty:
            result["extensionActionIds"] = []
        if hasattr(self, "hide_content"):
            result["hideContent"] = bool(self.hide_content)
        elif include_empty:
            result["hideContent"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban_account: Optional[RestapiBanAccountActionResponse] = None,
        delete_chat: Optional[bool] = None,
        extension_action_ids: Optional[List[str]] = None,
        hide_content: Optional[bool] = None,
    ) -> RestapiModerationRuleActionsResponse:
        instance = cls()
        if ban_account is not None:
            instance.ban_account = ban_account
        if delete_chat is not None:
            instance.delete_chat = delete_chat
        if extension_action_ids is not None:
            instance.extension_action_ids = extension_action_ids
        if hide_content is not None:
            instance.hide_content = hide_content
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiModerationRuleActionsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "banAccount" in dict_ and dict_["banAccount"] is not None:
            instance.ban_account = RestapiBanAccountActionResponse.create_from_dict(
                dict_["banAccount"], include_empty=include_empty
            )
        elif include_empty:
            instance.ban_account = RestapiBanAccountActionResponse()
        if "deleteChat" in dict_ and dict_["deleteChat"] is not None:
            instance.delete_chat = bool(dict_["deleteChat"])
        elif include_empty:
            instance.delete_chat = False
        if "extensionActionIds" in dict_ and dict_["extensionActionIds"] is not None:
            instance.extension_action_ids = [
                str(i0) for i0 in dict_["extensionActionIds"]
            ]
        elif include_empty:
            instance.extension_action_ids = []
        if "hideContent" in dict_ and dict_["hideContent"] is not None:
            instance.hide_content = bool(dict_["hideContent"])
        elif include_empty:
            instance.hide_content = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiModerationRuleActionsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiModerationRuleActionsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiModerationRuleActionsResponse,
        List[RestapiModerationRuleActionsResponse],
        Dict[Any, RestapiModerationRuleActionsResponse],
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
            "banAccount": "ban_account",
            "deleteChat": "delete_chat",
            "extensionActionIds": "extension_action_ids",
            "hideContent": "hide_content",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "banAccount": False,
            "deleteChat": False,
            "extensionActionIds": False,
            "hideContent": False,
        }

    # endregion static methods
