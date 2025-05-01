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


class ModelsGetListTopicKafkaResponse(Model):
    """Models get list topic kafka response (models.GetListTopicKafkaResponse)

    Properties:
        topic_name: (topicName) REQUIRED List[str]
    """

    # region fields

    topic_name: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_topic_name(self, value: List[str]) -> ModelsGetListTopicKafkaResponse:
        self.topic_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "topic_name"):
            result["topicName"] = [str(i0) for i0 in self.topic_name]
        elif include_empty:
            result["topicName"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, topic_name: List[str], **kwargs) -> ModelsGetListTopicKafkaResponse:
        instance = cls()
        instance.topic_name = topic_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetListTopicKafkaResponse:
        instance = cls()
        if not dict_:
            return instance
        if "topicName" in dict_ and dict_["topicName"] is not None:
            instance.topic_name = [str(i0) for i0 in dict_["topicName"]]
        elif include_empty:
            instance.topic_name = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetListTopicKafkaResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetListTopicKafkaResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetListTopicKafkaResponse,
        List[ModelsGetListTopicKafkaResponse],
        Dict[Any, ModelsGetListTopicKafkaResponse],
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
            "topicName": "topic_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "topicName": True,
        }

    # endregion static methods
