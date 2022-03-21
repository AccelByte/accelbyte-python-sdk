# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-lobby-server (staging)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelCreateTopicRequest(Model):
    """Model create topic request (model.CreateTopicRequest)

    Properties:
        description: (description) REQUIRED str

        topic: (topic) REQUIRED str
    """

    # region fields

    description: str                                                                               # REQUIRED
    topic: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ModelCreateTopicRequest:
        self.description = value
        return self

    def with_topic(self, value: str) -> ModelCreateTopicRequest:
        self.topic = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "description") or self.description is None:
            return False
        if not hasattr(self, "topic") or self.topic is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "topic"):
            result["topic"] = str(self.topic)
        elif include_empty:
            result["topic"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        topic: str,
    ) -> ModelCreateTopicRequest:
        instance = cls()
        instance.description = description
        instance.topic = topic
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelCreateTopicRequest:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "topic" in dict_ and dict_["topic"] is not None:
            instance.topic = str(dict_["topic"])
        elif include_empty:
            instance.topic = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelCreateTopicRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelCreateTopicRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelCreateTopicRequest, List[ModelCreateTopicRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "description": "description",
            "topic": "topic",
        }

    # endregion static methods
