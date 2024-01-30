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

from ..models.models_category_hook import ModelsCategoryHook


class ModelsUpdateInboxCategoryRequest(Model):
    """Models update inbox category request (models.UpdateInboxCategoryRequest)

    Properties:
        enabled: (enabled) REQUIRED bool

        expires_in: (expiresIn) REQUIRED int

        hook: (hook) REQUIRED ModelsCategoryHook

        save_inbox: (saveInbox) REQUIRED bool

        send_notification: (sendNotification) REQUIRED bool

        json_schema: (jsonSchema) OPTIONAL Dict[str, Any]
    """

    # region fields

    enabled: bool  # REQUIRED
    expires_in: int  # REQUIRED
    hook: ModelsCategoryHook  # REQUIRED
    save_inbox: bool  # REQUIRED
    send_notification: bool  # REQUIRED
    json_schema: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_enabled(self, value: bool) -> ModelsUpdateInboxCategoryRequest:
        self.enabled = value
        return self

    def with_expires_in(self, value: int) -> ModelsUpdateInboxCategoryRequest:
        self.expires_in = value
        return self

    def with_hook(self, value: ModelsCategoryHook) -> ModelsUpdateInboxCategoryRequest:
        self.hook = value
        return self

    def with_save_inbox(self, value: bool) -> ModelsUpdateInboxCategoryRequest:
        self.save_inbox = value
        return self

    def with_send_notification(self, value: bool) -> ModelsUpdateInboxCategoryRequest:
        self.send_notification = value
        return self

    def with_json_schema(
        self, value: Dict[str, Any]
    ) -> ModelsUpdateInboxCategoryRequest:
        self.json_schema = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "expires_in"):
            result["expiresIn"] = int(self.expires_in)
        elif include_empty:
            result["expiresIn"] = 0
        if hasattr(self, "hook"):
            result["hook"] = self.hook.to_dict(include_empty=include_empty)
        elif include_empty:
            result["hook"] = ModelsCategoryHook()
        if hasattr(self, "save_inbox"):
            result["saveInbox"] = bool(self.save_inbox)
        elif include_empty:
            result["saveInbox"] = False
        if hasattr(self, "send_notification"):
            result["sendNotification"] = bool(self.send_notification)
        elif include_empty:
            result["sendNotification"] = False
        if hasattr(self, "json_schema"):
            result["jsonSchema"] = {str(k0): v0 for k0, v0 in self.json_schema.items()}
        elif include_empty:
            result["jsonSchema"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enabled: bool,
        expires_in: int,
        hook: ModelsCategoryHook,
        save_inbox: bool,
        send_notification: bool,
        json_schema: Optional[Dict[str, Any]] = None,
        **kwargs,
    ) -> ModelsUpdateInboxCategoryRequest:
        instance = cls()
        instance.enabled = enabled
        instance.expires_in = expires_in
        instance.hook = hook
        instance.save_inbox = save_inbox
        instance.send_notification = send_notification
        if json_schema is not None:
            instance.json_schema = json_schema
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateInboxCategoryRequest:
        instance = cls()
        if not dict_:
            return instance
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if "expiresIn" in dict_ and dict_["expiresIn"] is not None:
            instance.expires_in = int(dict_["expiresIn"])
        elif include_empty:
            instance.expires_in = 0
        if "hook" in dict_ and dict_["hook"] is not None:
            instance.hook = ModelsCategoryHook.create_from_dict(
                dict_["hook"], include_empty=include_empty
            )
        elif include_empty:
            instance.hook = ModelsCategoryHook()
        if "saveInbox" in dict_ and dict_["saveInbox"] is not None:
            instance.save_inbox = bool(dict_["saveInbox"])
        elif include_empty:
            instance.save_inbox = False
        if "sendNotification" in dict_ and dict_["sendNotification"] is not None:
            instance.send_notification = bool(dict_["sendNotification"])
        elif include_empty:
            instance.send_notification = False
        if "jsonSchema" in dict_ and dict_["jsonSchema"] is not None:
            instance.json_schema = {
                str(k0): v0 for k0, v0 in dict_["jsonSchema"].items()
            }
        elif include_empty:
            instance.json_schema = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateInboxCategoryRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateInboxCategoryRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateInboxCategoryRequest,
        List[ModelsUpdateInboxCategoryRequest],
        Dict[Any, ModelsUpdateInboxCategoryRequest],
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
            "enabled": "enabled",
            "expiresIn": "expires_in",
            "hook": "hook",
            "saveInbox": "save_inbox",
            "sendNotification": "send_notification",
            "jsonSchema": "json_schema",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enabled": True,
            "expiresIn": True,
            "hook": True,
            "saveInbox": True,
            "sendNotification": True,
            "jsonSchema": False,
        }

    # endregion static methods
