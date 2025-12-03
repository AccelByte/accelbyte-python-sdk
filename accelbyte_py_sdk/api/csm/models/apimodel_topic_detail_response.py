# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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

from ..models.apimodel_topic_subscription import ApimodelTopicSubscription


class ApimodelTopicDetailResponse(Model):
    """Apimodel topic detail response (apimodel.TopicDetailResponse)

    Properties:
        game_name: (gameName) REQUIRED str

        id_: (id) REQUIRED str

        region: (region) REQUIRED str

        studio_name: (studioName) REQUIRED str

        topic_arn: (topicArn) REQUIRED str

        topic_name: (topicName) REQUIRED str

        description: (description) OPTIONAL str

        subscribers: (subscribers) OPTIONAL List[ApimodelTopicSubscription]
    """

    # region fields

    game_name: str  # REQUIRED
    id_: str  # REQUIRED
    region: str  # REQUIRED
    studio_name: str  # REQUIRED
    topic_arn: str  # REQUIRED
    topic_name: str  # REQUIRED
    description: str  # OPTIONAL
    subscribers: List[ApimodelTopicSubscription]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_game_name(self, value: str) -> ApimodelTopicDetailResponse:
        self.game_name = value
        return self

    def with_id(self, value: str) -> ApimodelTopicDetailResponse:
        self.id_ = value
        return self

    def with_region(self, value: str) -> ApimodelTopicDetailResponse:
        self.region = value
        return self

    def with_studio_name(self, value: str) -> ApimodelTopicDetailResponse:
        self.studio_name = value
        return self

    def with_topic_arn(self, value: str) -> ApimodelTopicDetailResponse:
        self.topic_arn = value
        return self

    def with_topic_name(self, value: str) -> ApimodelTopicDetailResponse:
        self.topic_name = value
        return self

    def with_description(self, value: str) -> ApimodelTopicDetailResponse:
        self.description = value
        return self

    def with_subscribers(
        self, value: List[ApimodelTopicSubscription]
    ) -> ApimodelTopicDetailResponse:
        self.subscribers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "game_name"):
            result["gameName"] = str(self.game_name)
        elif include_empty:
            result["gameName"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "studio_name"):
            result["studioName"] = str(self.studio_name)
        elif include_empty:
            result["studioName"] = ""
        if hasattr(self, "topic_arn"):
            result["topicArn"] = str(self.topic_arn)
        elif include_empty:
            result["topicArn"] = ""
        if hasattr(self, "topic_name"):
            result["topicName"] = str(self.topic_name)
        elif include_empty:
            result["topicName"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "subscribers"):
            result["subscribers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.subscribers
            ]
        elif include_empty:
            result["subscribers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        game_name: str,
        id_: str,
        region: str,
        studio_name: str,
        topic_arn: str,
        topic_name: str,
        description: Optional[str] = None,
        subscribers: Optional[List[ApimodelTopicSubscription]] = None,
        **kwargs,
    ) -> ApimodelTopicDetailResponse:
        instance = cls()
        instance.game_name = game_name
        instance.id_ = id_
        instance.region = region
        instance.studio_name = studio_name
        instance.topic_arn = topic_arn
        instance.topic_name = topic_name
        if description is not None:
            instance.description = description
        if subscribers is not None:
            instance.subscribers = subscribers
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelTopicDetailResponse:
        instance = cls()
        if not dict_:
            return instance
        if "gameName" in dict_ and dict_["gameName"] is not None:
            instance.game_name = str(dict_["gameName"])
        elif include_empty:
            instance.game_name = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "studioName" in dict_ and dict_["studioName"] is not None:
            instance.studio_name = str(dict_["studioName"])
        elif include_empty:
            instance.studio_name = ""
        if "topicArn" in dict_ and dict_["topicArn"] is not None:
            instance.topic_arn = str(dict_["topicArn"])
        elif include_empty:
            instance.topic_arn = ""
        if "topicName" in dict_ and dict_["topicName"] is not None:
            instance.topic_name = str(dict_["topicName"])
        elif include_empty:
            instance.topic_name = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "subscribers" in dict_ and dict_["subscribers"] is not None:
            instance.subscribers = [
                ApimodelTopicSubscription.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["subscribers"]
            ]
        elif include_empty:
            instance.subscribers = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelTopicDetailResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelTopicDetailResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelTopicDetailResponse,
        List[ApimodelTopicDetailResponse],
        Dict[Any, ApimodelTopicDetailResponse],
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
            "gameName": "game_name",
            "id": "id_",
            "region": "region",
            "studioName": "studio_name",
            "topicArn": "topic_arn",
            "topicName": "topic_name",
            "description": "description",
            "subscribers": "subscribers",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "gameName": True,
            "id": True,
            "region": True,
            "studioName": True,
            "topicArn": True,
            "topicName": True,
            "description": False,
            "subscribers": False,
        }

    # endregion static methods
