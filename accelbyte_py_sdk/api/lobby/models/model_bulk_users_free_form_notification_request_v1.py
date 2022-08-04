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


class ModelBulkUsersFreeFormNotificationRequestV1(Model):
    """Model bulk users free form notification request V1 (model.BulkUsersFreeFormNotificationRequestV1)

    Properties:
        message: (message) REQUIRED str

        topic_name: (topicName) REQUIRED str

        user_ids: (userIds) REQUIRED List[str]
    """

    # region fields

    message: str  # REQUIRED
    topic_name: str  # REQUIRED
    user_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_message(self, value: str) -> ModelBulkUsersFreeFormNotificationRequestV1:
        self.message = value
        return self

    def with_topic_name(
        self, value: str
    ) -> ModelBulkUsersFreeFormNotificationRequestV1:
        self.topic_name = value
        return self

    def with_user_ids(
        self, value: List[str]
    ) -> ModelBulkUsersFreeFormNotificationRequestV1:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "topic_name"):
            result["topicName"] = str(self.topic_name)
        elif include_empty:
            result["topicName"] = ""
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
        message: str,
        topic_name: str,
        user_ids: List[str],
    ) -> ModelBulkUsersFreeFormNotificationRequestV1:
        instance = cls()
        instance.message = message
        instance.topic_name = topic_name
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelBulkUsersFreeFormNotificationRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "topicName" in dict_ and dict_["topicName"] is not None:
            instance.topic_name = str(dict_["topicName"])
        elif include_empty:
            instance.topic_name = ""
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelBulkUsersFreeFormNotificationRequestV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelBulkUsersFreeFormNotificationRequestV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelBulkUsersFreeFormNotificationRequestV1,
        List[ModelBulkUsersFreeFormNotificationRequestV1],
        Dict[Any, ModelBulkUsersFreeFormNotificationRequestV1],
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
            "message": "message",
            "topicName": "topic_name",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "message": True,
            "topicName": True,
            "userIds": True,
        }

    # endregion static methods
