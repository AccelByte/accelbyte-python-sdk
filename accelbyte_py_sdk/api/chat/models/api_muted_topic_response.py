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


class ApiMutedTopicResponse(Model):
    """Api muted topic response (api.MutedTopicResponse)

    Properties:
        expiration_time: (expirationTime) REQUIRED int

        remaining_time: (remainingTime) REQUIRED int

        topic_id: (topicId) REQUIRED str
    """

    # region fields

    expiration_time: int  # REQUIRED
    remaining_time: int  # REQUIRED
    topic_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_expiration_time(self, value: int) -> ApiMutedTopicResponse:
        self.expiration_time = value
        return self

    def with_remaining_time(self, value: int) -> ApiMutedTopicResponse:
        self.remaining_time = value
        return self

    def with_topic_id(self, value: str) -> ApiMutedTopicResponse:
        self.topic_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "expiration_time"):
            result["expirationTime"] = int(self.expiration_time)
        elif include_empty:
            result["expirationTime"] = 0
        if hasattr(self, "remaining_time"):
            result["remainingTime"] = int(self.remaining_time)
        elif include_empty:
            result["remainingTime"] = 0
        if hasattr(self, "topic_id"):
            result["topicId"] = str(self.topic_id)
        elif include_empty:
            result["topicId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, expiration_time: int, remaining_time: int, topic_id: str, **kwargs
    ) -> ApiMutedTopicResponse:
        instance = cls()
        instance.expiration_time = expiration_time
        instance.remaining_time = remaining_time
        instance.topic_id = topic_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiMutedTopicResponse:
        instance = cls()
        if not dict_:
            return instance
        if "expirationTime" in dict_ and dict_["expirationTime"] is not None:
            instance.expiration_time = int(dict_["expirationTime"])
        elif include_empty:
            instance.expiration_time = 0
        if "remainingTime" in dict_ and dict_["remainingTime"] is not None:
            instance.remaining_time = int(dict_["remainingTime"])
        elif include_empty:
            instance.remaining_time = 0
        if "topicId" in dict_ and dict_["topicId"] is not None:
            instance.topic_id = str(dict_["topicId"])
        elif include_empty:
            instance.topic_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiMutedTopicResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiMutedTopicResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiMutedTopicResponse,
        List[ApiMutedTopicResponse],
        Dict[Any, ApiMutedTopicResponse],
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
            "expirationTime": "expiration_time",
            "remainingTime": "remaining_time",
            "topicId": "topic_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "expirationTime": True,
            "remainingTime": True,
            "topicId": True,
        }

    # endregion static methods
