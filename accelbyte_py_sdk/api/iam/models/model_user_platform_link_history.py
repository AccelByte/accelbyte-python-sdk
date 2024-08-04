# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelUserPlatformLinkHistory(Model):
    """Model user platform link history (model.UserPlatformLinkHistory)

    Properties:
        action: (action) REQUIRED str

        actor: (actor) REQUIRED str

        actor_type: (actorType) REQUIRED str

        created_at: (createdAt) REQUIRED int

        namespace: (namespace) REQUIRED str

        platform: (platform) REQUIRED str

        platform_display_name: (platformDisplayName) REQUIRED str

        platform_id: (platformId) REQUIRED str

        platform_user_id: (platformUserId) REQUIRED str

        publisher_user_id: (publisherUserId) REQUIRED str
    """

    # region fields

    action: str  # REQUIRED
    actor: str  # REQUIRED
    actor_type: str  # REQUIRED
    created_at: int  # REQUIRED
    namespace: str  # REQUIRED
    platform: str  # REQUIRED
    platform_display_name: str  # REQUIRED
    platform_id: str  # REQUIRED
    platform_user_id: str  # REQUIRED
    publisher_user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ModelUserPlatformLinkHistory:
        self.action = value
        return self

    def with_actor(self, value: str) -> ModelUserPlatformLinkHistory:
        self.actor = value
        return self

    def with_actor_type(self, value: str) -> ModelUserPlatformLinkHistory:
        self.actor_type = value
        return self

    def with_created_at(self, value: int) -> ModelUserPlatformLinkHistory:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> ModelUserPlatformLinkHistory:
        self.namespace = value
        return self

    def with_platform(self, value: str) -> ModelUserPlatformLinkHistory:
        self.platform = value
        return self

    def with_platform_display_name(self, value: str) -> ModelUserPlatformLinkHistory:
        self.platform_display_name = value
        return self

    def with_platform_id(self, value: str) -> ModelUserPlatformLinkHistory:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ModelUserPlatformLinkHistory:
        self.platform_user_id = value
        return self

    def with_publisher_user_id(self, value: str) -> ModelUserPlatformLinkHistory:
        self.publisher_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = ""
        if hasattr(self, "actor"):
            result["actor"] = str(self.actor)
        elif include_empty:
            result["actor"] = ""
        if hasattr(self, "actor_type"):
            result["actorType"] = str(self.actor_type)
        elif include_empty:
            result["actorType"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "platform_display_name"):
            result["platformDisplayName"] = str(self.platform_display_name)
        elif include_empty:
            result["platformDisplayName"] = ""
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        if hasattr(self, "publisher_user_id"):
            result["publisherUserId"] = str(self.publisher_user_id)
        elif include_empty:
            result["publisherUserId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: str,
        actor: str,
        actor_type: str,
        created_at: int,
        namespace: str,
        platform: str,
        platform_display_name: str,
        platform_id: str,
        platform_user_id: str,
        publisher_user_id: str,
        **kwargs,
    ) -> ModelUserPlatformLinkHistory:
        instance = cls()
        instance.action = action
        instance.actor = actor
        instance.actor_type = actor_type
        instance.created_at = created_at
        instance.namespace = namespace
        instance.platform = platform
        instance.platform_display_name = platform_display_name
        instance.platform_id = platform_id
        instance.platform_user_id = platform_user_id
        instance.publisher_user_id = publisher_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserPlatformLinkHistory:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = ""
        if "actor" in dict_ and dict_["actor"] is not None:
            instance.actor = str(dict_["actor"])
        elif include_empty:
            instance.actor = ""
        if "actorType" in dict_ and dict_["actorType"] is not None:
            instance.actor_type = str(dict_["actorType"])
        elif include_empty:
            instance.actor_type = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "platformDisplayName" in dict_ and dict_["platformDisplayName"] is not None:
            instance.platform_display_name = str(dict_["platformDisplayName"])
        elif include_empty:
            instance.platform_display_name = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        if "publisherUserId" in dict_ and dict_["publisherUserId"] is not None:
            instance.publisher_user_id = str(dict_["publisherUserId"])
        elif include_empty:
            instance.publisher_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserPlatformLinkHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserPlatformLinkHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserPlatformLinkHistory,
        List[ModelUserPlatformLinkHistory],
        Dict[Any, ModelUserPlatformLinkHistory],
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
            "action": "action",
            "actor": "actor",
            "actorType": "actor_type",
            "createdAt": "created_at",
            "namespace": "namespace",
            "platform": "platform",
            "platformDisplayName": "platform_display_name",
            "platformId": "platform_id",
            "platformUserId": "platform_user_id",
            "publisherUserId": "publisher_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "actor": True,
            "actorType": True,
            "createdAt": True,
            "namespace": True,
            "platform": True,
            "platformDisplayName": True,
            "platformId": True,
            "platformUserId": True,
            "publisherUserId": True,
        }

    # endregion static methods
