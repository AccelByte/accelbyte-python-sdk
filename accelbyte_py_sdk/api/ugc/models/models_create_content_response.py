# justice-ugc-service (1.9.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.models_payload_url import ModelsPayloadURL


class ModelsCreateContentResponse(Model):
    """Models create content response (models.CreateContentResponse)

    Properties:
        channel_id: (channelId) REQUIRED str

        created_time: (createdTime) REQUIRED str

        creator_name: (creatorName) REQUIRED str

        file_extension: (fileExtension) REQUIRED str

        id_: (id) REQUIRED str

        is_hidden: (isHidden) REQUIRED bool

        is_official: (isOfficial) REQUIRED bool

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        preview: (preview) REQUIRED str

        share_code: (shareCode) REQUIRED str

        sub_type: (subType) REQUIRED str

        tags: (tags) REQUIRED List[str]

        type_: (type) REQUIRED str

        user_id: (userId) REQUIRED str

        payload_url: (payloadURL) OPTIONAL List[ModelsPayloadURL]
    """

    # region fields

    channel_id: str                                                                                # REQUIRED
    created_time: str                                                                              # REQUIRED
    creator_name: str                                                                              # REQUIRED
    file_extension: str                                                                            # REQUIRED
    id_: str                                                                                       # REQUIRED
    is_hidden: bool                                                                                # REQUIRED
    is_official: bool                                                                              # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    preview: str                                                                                   # REQUIRED
    share_code: str                                                                                # REQUIRED
    sub_type: str                                                                                  # REQUIRED
    tags: List[str]                                                                                # REQUIRED
    type_: str                                                                                     # REQUIRED
    user_id: str                                                                                   # REQUIRED
    payload_url: List[ModelsPayloadURL]                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel_id(self, value: str) -> ModelsCreateContentResponse:
        self.channel_id = value
        return self

    def with_created_time(self, value: str) -> ModelsCreateContentResponse:
        self.created_time = value
        return self

    def with_creator_name(self, value: str) -> ModelsCreateContentResponse:
        self.creator_name = value
        return self

    def with_file_extension(self, value: str) -> ModelsCreateContentResponse:
        self.file_extension = value
        return self

    def with_id(self, value: str) -> ModelsCreateContentResponse:
        self.id_ = value
        return self

    def with_is_hidden(self, value: bool) -> ModelsCreateContentResponse:
        self.is_hidden = value
        return self

    def with_is_official(self, value: bool) -> ModelsCreateContentResponse:
        self.is_official = value
        return self

    def with_name(self, value: str) -> ModelsCreateContentResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsCreateContentResponse:
        self.namespace = value
        return self

    def with_preview(self, value: str) -> ModelsCreateContentResponse:
        self.preview = value
        return self

    def with_share_code(self, value: str) -> ModelsCreateContentResponse:
        self.share_code = value
        return self

    def with_sub_type(self, value: str) -> ModelsCreateContentResponse:
        self.sub_type = value
        return self

    def with_tags(self, value: List[str]) -> ModelsCreateContentResponse:
        self.tags = value
        return self

    def with_type(self, value: str) -> ModelsCreateContentResponse:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> ModelsCreateContentResponse:
        self.user_id = value
        return self

    def with_payload_url(self, value: List[ModelsPayloadURL]) -> ModelsCreateContentResponse:
        self.payload_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel_id"):
            result["channelId"] = str(self.channel_id)
        elif include_empty:
            result["channelId"] = str()
        if hasattr(self, "created_time"):
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = str()
        if hasattr(self, "creator_name"):
            result["creatorName"] = str(self.creator_name)
        elif include_empty:
            result["creatorName"] = str()
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "is_hidden"):
            result["isHidden"] = bool(self.is_hidden)
        elif include_empty:
            result["isHidden"] = bool()
        if hasattr(self, "is_official"):
            result["isOfficial"] = bool(self.is_official)
        elif include_empty:
            result["isOfficial"] = bool()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "preview"):
            result["preview"] = str(self.preview)
        elif include_empty:
            result["preview"] = str()
        if hasattr(self, "share_code"):
            result["shareCode"] = str(self.share_code)
        elif include_empty:
            result["shareCode"] = str()
        if hasattr(self, "sub_type"):
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = str()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "payload_url"):
            result["payloadURL"] = [i0.to_dict(include_empty=include_empty) for i0 in self.payload_url]
        elif include_empty:
            result["payloadURL"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        channel_id: str,
        created_time: str,
        creator_name: str,
        file_extension: str,
        id_: str,
        is_hidden: bool,
        is_official: bool,
        name: str,
        namespace: str,
        preview: str,
        share_code: str,
        sub_type: str,
        tags: List[str],
        type_: str,
        user_id: str,
        payload_url: Optional[List[ModelsPayloadURL]] = None,
    ) -> ModelsCreateContentResponse:
        instance = cls()
        instance.channel_id = channel_id
        instance.created_time = created_time
        instance.creator_name = creator_name
        instance.file_extension = file_extension
        instance.id_ = id_
        instance.is_hidden = is_hidden
        instance.is_official = is_official
        instance.name = name
        instance.namespace = namespace
        instance.preview = preview
        instance.share_code = share_code
        instance.sub_type = sub_type
        instance.tags = tags
        instance.type_ = type_
        instance.user_id = user_id
        if payload_url is not None:
            instance.payload_url = payload_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateContentResponse:
        instance = cls()
        if not dict_:
            return instance
        if "channelId" in dict_ and dict_["channelId"] is not None:
            instance.channel_id = str(dict_["channelId"])
        elif include_empty:
            instance.channel_id = str()
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = str()
        if "creatorName" in dict_ and dict_["creatorName"] is not None:
            instance.creator_name = str(dict_["creatorName"])
        elif include_empty:
            instance.creator_name = str()
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "isHidden" in dict_ and dict_["isHidden"] is not None:
            instance.is_hidden = bool(dict_["isHidden"])
        elif include_empty:
            instance.is_hidden = bool()
        if "isOfficial" in dict_ and dict_["isOfficial"] is not None:
            instance.is_official = bool(dict_["isOfficial"])
        elif include_empty:
            instance.is_official = bool()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "preview" in dict_ and dict_["preview"] is not None:
            instance.preview = str(dict_["preview"])
        elif include_empty:
            instance.preview = str()
        if "shareCode" in dict_ and dict_["shareCode"] is not None:
            instance.share_code = str(dict_["shareCode"])
        elif include_empty:
            instance.share_code = str()
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "payloadURL" in dict_ and dict_["payloadURL"] is not None:
            instance.payload_url = [ModelsPayloadURL.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["payloadURL"]]
        elif include_empty:
            instance.payload_url = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "channelId": "channel_id",
            "createdTime": "created_time",
            "creatorName": "creator_name",
            "fileExtension": "file_extension",
            "id": "id_",
            "isHidden": "is_hidden",
            "isOfficial": "is_official",
            "name": "name",
            "namespace": "namespace",
            "preview": "preview",
            "shareCode": "share_code",
            "subType": "sub_type",
            "tags": "tags",
            "type": "type_",
            "userId": "user_id",
            "payloadURL": "payload_url",
        }

    # endregion static methods