# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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


class ModelNotificationTopicResponseV1(Model):
    """Model notification topic response V1 (model.NotificationTopicResponseV1)

    Properties:
        created_at: (createdAt) REQUIRED int

        description: (description) REQUIRED str

        namespace: (namespace) REQUIRED str

        topic_name: (topicName) REQUIRED str
    """

    # region fields

    created_at: int  # REQUIRED
    description: str  # REQUIRED
    namespace: str  # REQUIRED
    topic_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: int) -> ModelNotificationTopicResponseV1:
        self.created_at = value
        return self

    def with_description(self, value: str) -> ModelNotificationTopicResponseV1:
        self.description = value
        return self

    def with_namespace(self, value: str) -> ModelNotificationTopicResponseV1:
        self.namespace = value
        return self

    def with_topic_name(self, value: str) -> ModelNotificationTopicResponseV1:
        self.topic_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "topic_name"):
            result["topicName"] = str(self.topic_name)
        elif include_empty:
            result["topicName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: int,
        description: str,
        namespace: str,
        topic_name: str,
    ) -> ModelNotificationTopicResponseV1:
        instance = cls()
        instance.created_at = created_at
        instance.description = description
        instance.namespace = namespace
        instance.topic_name = topic_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelNotificationTopicResponseV1:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "topicName" in dict_ and dict_["topicName"] is not None:
            instance.topic_name = str(dict_["topicName"])
        elif include_empty:
            instance.topic_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelNotificationTopicResponseV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelNotificationTopicResponseV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelNotificationTopicResponseV1,
        List[ModelNotificationTopicResponseV1],
        Dict[Any, ModelNotificationTopicResponseV1],
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
            "description": "description",
            "namespace": "namespace",
            "topicName": "topic_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "description": True,
            "namespace": True,
            "topicName": True,
        }

    # endregion static methods
