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


class ModelsTopicResponse(Model):
    """Models topic response (models.TopicResponse)

    Properties:
        created_at: (createdAt) REQUIRED int

        created_by: (createdBy) REQUIRED str

        last_message_at: (lastMessageAt) REQUIRED int

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        topic_id: (topicId) REQUIRED str

        type_: (type) REQUIRED str
    """

    # region fields

    created_at: int  # REQUIRED
    created_by: str  # REQUIRED
    last_message_at: int  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    topic_id: str  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: int) -> ModelsTopicResponse:
        self.created_at = value
        return self

    def with_created_by(self, value: str) -> ModelsTopicResponse:
        self.created_by = value
        return self

    def with_last_message_at(self, value: int) -> ModelsTopicResponse:
        self.last_message_at = value
        return self

    def with_name(self, value: str) -> ModelsTopicResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsTopicResponse:
        self.namespace = value
        return self

    def with_topic_id(self, value: str) -> ModelsTopicResponse:
        self.topic_id = value
        return self

    def with_type(self, value: str) -> ModelsTopicResponse:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "created_by"):
            result["createdBy"] = str(self.created_by)
        elif include_empty:
            result["createdBy"] = ""
        if hasattr(self, "last_message_at"):
            result["lastMessageAt"] = int(self.last_message_at)
        elif include_empty:
            result["lastMessageAt"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "topic_id"):
            result["topicId"] = str(self.topic_id)
        elif include_empty:
            result["topicId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: int,
        created_by: str,
        last_message_at: int,
        name: str,
        namespace: str,
        topic_id: str,
        type_: str,
        **kwargs,
    ) -> ModelsTopicResponse:
        instance = cls()
        instance.created_at = created_at
        instance.created_by = created_by
        instance.last_message_at = last_message_at
        instance.name = name
        instance.namespace = namespace
        instance.topic_id = topic_id
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsTopicResponse:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "createdBy" in dict_ and dict_["createdBy"] is not None:
            instance.created_by = str(dict_["createdBy"])
        elif include_empty:
            instance.created_by = ""
        if "lastMessageAt" in dict_ and dict_["lastMessageAt"] is not None:
            instance.last_message_at = int(dict_["lastMessageAt"])
        elif include_empty:
            instance.last_message_at = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "topicId" in dict_ and dict_["topicId"] is not None:
            instance.topic_id = str(dict_["topicId"])
        elif include_empty:
            instance.topic_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsTopicResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTopicResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsTopicResponse, List[ModelsTopicResponse], Dict[Any, ModelsTopicResponse]
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
            "createdBy": "created_by",
            "lastMessageAt": "last_message_at",
            "name": "name",
            "namespace": "namespace",
            "topicId": "topic_id",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "createdBy": True,
            "lastMessageAt": True,
            "name": True,
            "namespace": True,
            "topicId": True,
            "type": True,
        }

    # endregion static methods
