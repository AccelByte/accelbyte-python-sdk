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


class ModelCreateTopicRequestV1(Model):
    """Model create topic request V1 (model.CreateTopicRequestV1)

    Properties:
        description: (description) REQUIRED str

        topic_name: (topicName) REQUIRED str
    """

    # region fields

    description: str  # REQUIRED
    topic_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ModelCreateTopicRequestV1:
        self.description = value
        return self

    def with_topic_name(self, value: str) -> ModelCreateTopicRequestV1:
        self.topic_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        description: str,
        topic_name: str,
    ) -> ModelCreateTopicRequestV1:
        instance = cls()
        instance.description = description
        instance.topic_name = topic_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCreateTopicRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "topicName" in dict_ and dict_["topicName"] is not None:
            instance.topic_name = str(dict_["topicName"])
        elif include_empty:
            instance.topic_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCreateTopicRequestV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCreateTopicRequestV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCreateTopicRequestV1,
        List[ModelCreateTopicRequestV1],
        Dict[Any, ModelCreateTopicRequestV1],
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
            "description": "description",
            "topicName": "topic_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "topicName": True,
        }

    # endregion static methods
