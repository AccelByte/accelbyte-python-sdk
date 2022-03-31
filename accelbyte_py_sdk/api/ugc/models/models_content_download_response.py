# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-ugc-service (1.15.1)

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

from ..models.models_creator_follow_state import ModelsCreatorFollowState
from ..models.models_like_state import ModelsLikeState
from ..models.models_payload_url import ModelsPayloadURL
from ..models.models_screenshot_response import ModelsScreenshotResponse


class ModelsContentDownloadResponse(Model):
    """Models content download response (models.ContentDownloadResponse)

    Properties:
        channel_id: (channelId) REQUIRED str

        created_time: (createdTime) REQUIRED str

        creator_follow_state: (creatorFollowState) REQUIRED ModelsCreatorFollowState

        creator_name: (creatorName) REQUIRED str

        download_count: (downloadCount) REQUIRED int

        file_extension: (fileExtension) REQUIRED str

        id_: (id) REQUIRED str

        is_hidden: (isHidden) REQUIRED bool

        is_official: (isOfficial) REQUIRED bool

        like_count: (likeCount) REQUIRED int

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        share_code: (shareCode) REQUIRED str

        sub_type: (subType) REQUIRED str

        tags: (tags) REQUIRED List[str]

        type_: (type) REQUIRED str

        user_id: (userId) REQUIRED str

        groups: (groups) OPTIONAL List[str]

        like_state: (likeState) OPTIONAL ModelsLikeState

        payload: (payload) OPTIONAL str

        payload_url: (payloadURL) OPTIONAL List[ModelsPayloadURL]

        screenshots: (screenshots) OPTIONAL List[ModelsScreenshotResponse]
    """

    # region fields

    channel_id: str                                                                                # REQUIRED
    created_time: str                                                                              # REQUIRED
    creator_follow_state: ModelsCreatorFollowState                                                 # REQUIRED
    creator_name: str                                                                              # REQUIRED
    download_count: int                                                                            # REQUIRED
    file_extension: str                                                                            # REQUIRED
    id_: str                                                                                       # REQUIRED
    is_hidden: bool                                                                                # REQUIRED
    is_official: bool                                                                              # REQUIRED
    like_count: int                                                                                # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    share_code: str                                                                                # REQUIRED
    sub_type: str                                                                                  # REQUIRED
    tags: List[str]                                                                                # REQUIRED
    type_: str                                                                                     # REQUIRED
    user_id: str                                                                                   # REQUIRED
    groups: List[str]                                                                              # OPTIONAL
    like_state: ModelsLikeState                                                                    # OPTIONAL
    payload: str                                                                                   # OPTIONAL
    payload_url: List[ModelsPayloadURL]                                                            # OPTIONAL
    screenshots: List[ModelsScreenshotResponse]                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel_id(self, value: str) -> ModelsContentDownloadResponse:
        self.channel_id = value
        return self

    def with_created_time(self, value: str) -> ModelsContentDownloadResponse:
        self.created_time = value
        return self

    def with_creator_follow_state(self, value: ModelsCreatorFollowState) -> ModelsContentDownloadResponse:
        self.creator_follow_state = value
        return self

    def with_creator_name(self, value: str) -> ModelsContentDownloadResponse:
        self.creator_name = value
        return self

    def with_download_count(self, value: int) -> ModelsContentDownloadResponse:
        self.download_count = value
        return self

    def with_file_extension(self, value: str) -> ModelsContentDownloadResponse:
        self.file_extension = value
        return self

    def with_id(self, value: str) -> ModelsContentDownloadResponse:
        self.id_ = value
        return self

    def with_is_hidden(self, value: bool) -> ModelsContentDownloadResponse:
        self.is_hidden = value
        return self

    def with_is_official(self, value: bool) -> ModelsContentDownloadResponse:
        self.is_official = value
        return self

    def with_like_count(self, value: int) -> ModelsContentDownloadResponse:
        self.like_count = value
        return self

    def with_name(self, value: str) -> ModelsContentDownloadResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsContentDownloadResponse:
        self.namespace = value
        return self

    def with_share_code(self, value: str) -> ModelsContentDownloadResponse:
        self.share_code = value
        return self

    def with_sub_type(self, value: str) -> ModelsContentDownloadResponse:
        self.sub_type = value
        return self

    def with_tags(self, value: List[str]) -> ModelsContentDownloadResponse:
        self.tags = value
        return self

    def with_type(self, value: str) -> ModelsContentDownloadResponse:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> ModelsContentDownloadResponse:
        self.user_id = value
        return self

    def with_groups(self, value: List[str]) -> ModelsContentDownloadResponse:
        self.groups = value
        return self

    def with_like_state(self, value: ModelsLikeState) -> ModelsContentDownloadResponse:
        self.like_state = value
        return self

    def with_payload(self, value: str) -> ModelsContentDownloadResponse:
        self.payload = value
        return self

    def with_payload_url(self, value: List[ModelsPayloadURL]) -> ModelsContentDownloadResponse:
        self.payload_url = value
        return self

    def with_screenshots(self, value: List[ModelsScreenshotResponse]) -> ModelsContentDownloadResponse:
        self.screenshots = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "channel_id") or self.channel_id is None:
            return False
        if not hasattr(self, "created_time") or self.created_time is None:
            return False
        if not hasattr(self, "creator_follow_state") or self.creator_follow_state is None:
            return False
        if not hasattr(self, "creator_name") or self.creator_name is None:
            return False
        if not hasattr(self, "download_count") or self.download_count is None:
            return False
        if not hasattr(self, "file_extension") or self.file_extension is None:
            return False
        if not hasattr(self, "id_") or self.id_ is None:
            return False
        if not hasattr(self, "is_hidden") or self.is_hidden is None:
            return False
        if not hasattr(self, "is_official") or self.is_official is None:
            return False
        if not hasattr(self, "like_count") or self.like_count is None:
            return False
        if not hasattr(self, "name") or self.name is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "share_code") or self.share_code is None:
            return False
        if not hasattr(self, "sub_type") or self.sub_type is None:
            return False
        if not hasattr(self, "tags") or self.tags is None:
            return False
        if not hasattr(self, "type_") or self.type_ is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        # enum checks
        # pattern checks
        return True

    # endregion is/has methods

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
        if hasattr(self, "creator_follow_state"):
            result["creatorFollowState"] = self.creator_follow_state.to_dict(include_empty=include_empty)
        elif include_empty:
            result["creatorFollowState"] = ModelsCreatorFollowState()
        if hasattr(self, "creator_name"):
            result["creatorName"] = str(self.creator_name)
        elif include_empty:
            result["creatorName"] = str()
        if hasattr(self, "download_count"):
            result["downloadCount"] = int(self.download_count)
        elif include_empty:
            result["downloadCount"] = int()
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
        if hasattr(self, "like_count"):
            result["likeCount"] = int(self.like_count)
        elif include_empty:
            result["likeCount"] = int()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
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
        if hasattr(self, "groups"):
            result["groups"] = [str(i0) for i0 in self.groups]
        elif include_empty:
            result["groups"] = []
        if hasattr(self, "like_state"):
            result["likeState"] = self.like_state.to_dict(include_empty=include_empty)
        elif include_empty:
            result["likeState"] = ModelsLikeState()
        if hasattr(self, "payload"):
            result["payload"] = str(self.payload)
        elif include_empty:
            result["payload"] = str()
        if hasattr(self, "payload_url"):
            result["payloadURL"] = [i0.to_dict(include_empty=include_empty) for i0 in self.payload_url]
        elif include_empty:
            result["payloadURL"] = []
        if hasattr(self, "screenshots"):
            result["screenshots"] = [i0.to_dict(include_empty=include_empty) for i0 in self.screenshots]
        elif include_empty:
            result["screenshots"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        channel_id: str,
        created_time: str,
        creator_follow_state: ModelsCreatorFollowState,
        creator_name: str,
        download_count: int,
        file_extension: str,
        id_: str,
        is_hidden: bool,
        is_official: bool,
        like_count: int,
        name: str,
        namespace: str,
        share_code: str,
        sub_type: str,
        tags: List[str],
        type_: str,
        user_id: str,
        groups: Optional[List[str]] = None,
        like_state: Optional[ModelsLikeState] = None,
        payload: Optional[str] = None,
        payload_url: Optional[List[ModelsPayloadURL]] = None,
        screenshots: Optional[List[ModelsScreenshotResponse]] = None,
    ) -> ModelsContentDownloadResponse:
        instance = cls()
        instance.channel_id = channel_id
        instance.created_time = created_time
        instance.creator_follow_state = creator_follow_state
        instance.creator_name = creator_name
        instance.download_count = download_count
        instance.file_extension = file_extension
        instance.id_ = id_
        instance.is_hidden = is_hidden
        instance.is_official = is_official
        instance.like_count = like_count
        instance.name = name
        instance.namespace = namespace
        instance.share_code = share_code
        instance.sub_type = sub_type
        instance.tags = tags
        instance.type_ = type_
        instance.user_id = user_id
        if groups is not None:
            instance.groups = groups
        if like_state is not None:
            instance.like_state = like_state
        if payload is not None:
            instance.payload = payload
        if payload_url is not None:
            instance.payload_url = payload_url
        if screenshots is not None:
            instance.screenshots = screenshots
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsContentDownloadResponse:
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
        if "creatorFollowState" in dict_ and dict_["creatorFollowState"] is not None:
            instance.creator_follow_state = ModelsCreatorFollowState.create_from_dict(dict_["creatorFollowState"], include_empty=include_empty)
        elif include_empty:
            instance.creator_follow_state = ModelsCreatorFollowState()
        if "creatorName" in dict_ and dict_["creatorName"] is not None:
            instance.creator_name = str(dict_["creatorName"])
        elif include_empty:
            instance.creator_name = str()
        if "downloadCount" in dict_ and dict_["downloadCount"] is not None:
            instance.download_count = int(dict_["downloadCount"])
        elif include_empty:
            instance.download_count = int()
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
        if "likeCount" in dict_ and dict_["likeCount"] is not None:
            instance.like_count = int(dict_["likeCount"])
        elif include_empty:
            instance.like_count = int()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
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
        if "groups" in dict_ and dict_["groups"] is not None:
            instance.groups = [str(i0) for i0 in dict_["groups"]]
        elif include_empty:
            instance.groups = []
        if "likeState" in dict_ and dict_["likeState"] is not None:
            instance.like_state = ModelsLikeState.create_from_dict(dict_["likeState"], include_empty=include_empty)
        elif include_empty:
            instance.like_state = ModelsLikeState()
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = str(dict_["payload"])
        elif include_empty:
            instance.payload = str()
        if "payloadURL" in dict_ and dict_["payloadURL"] is not None:
            instance.payload_url = [ModelsPayloadURL.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["payloadURL"]]
        elif include_empty:
            instance.payload_url = []
        if "screenshots" in dict_ and dict_["screenshots"] is not None:
            instance.screenshots = [ModelsScreenshotResponse.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["screenshots"]]
        elif include_empty:
            instance.screenshots = []
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsContentDownloadResponse]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsContentDownloadResponse]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsContentDownloadResponse, List[ModelsContentDownloadResponse]]:
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
            "channelId": "channel_id",
            "createdTime": "created_time",
            "creatorFollowState": "creator_follow_state",
            "creatorName": "creator_name",
            "downloadCount": "download_count",
            "fileExtension": "file_extension",
            "id": "id_",
            "isHidden": "is_hidden",
            "isOfficial": "is_official",
            "likeCount": "like_count",
            "name": "name",
            "namespace": "namespace",
            "shareCode": "share_code",
            "subType": "sub_type",
            "tags": "tags",
            "type": "type_",
            "userId": "user_id",
            "groups": "groups",
            "likeState": "like_state",
            "payload": "payload",
            "payloadURL": "payload_url",
            "screenshots": "screenshots",
        }

    # endregion static methods
