# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.9.0)

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

from ..models.models_creator_follow_state import ModelsCreatorFollowState
from ..models.models_like_state import ModelsLikeState
from ..models.models_payload_url import ModelsPayloadURL
from ..models.models_preview_url import ModelsPreviewURL
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

        updated_time: (updatedTime) REQUIRED str

        user_id: (userId) REQUIRED str

        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        groups: (groups) OPTIONAL List[str]

        like_state: (likeState) OPTIONAL ModelsLikeState

        payload: (payload) OPTIONAL str

        payload_url: (payloadURL) OPTIONAL List[ModelsPayloadURL]

        preview_url: (previewURL) OPTIONAL List[ModelsPreviewURL]

        screenshots: (screenshots) OPTIONAL List[ModelsScreenshotResponse]
    """

    # region fields

    channel_id: str  # REQUIRED
    created_time: str  # REQUIRED
    creator_follow_state: ModelsCreatorFollowState  # REQUIRED
    creator_name: str  # REQUIRED
    download_count: int  # REQUIRED
    file_extension: str  # REQUIRED
    id_: str  # REQUIRED
    is_hidden: bool  # REQUIRED
    is_official: bool  # REQUIRED
    like_count: int  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    share_code: str  # REQUIRED
    sub_type: str  # REQUIRED
    tags: List[str]  # REQUIRED
    type_: str  # REQUIRED
    updated_time: str  # REQUIRED
    user_id: str  # REQUIRED
    custom_attributes: Dict[str, Any]  # OPTIONAL
    groups: List[str]  # OPTIONAL
    like_state: ModelsLikeState  # OPTIONAL
    payload: str  # OPTIONAL
    payload_url: List[ModelsPayloadURL]  # OPTIONAL
    preview_url: List[ModelsPreviewURL]  # OPTIONAL
    screenshots: List[ModelsScreenshotResponse]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel_id(self, value: str) -> ModelsContentDownloadResponse:
        self.channel_id = value
        return self

    def with_created_time(self, value: str) -> ModelsContentDownloadResponse:
        self.created_time = value
        return self

    def with_creator_follow_state(
        self, value: ModelsCreatorFollowState
    ) -> ModelsContentDownloadResponse:
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

    def with_updated_time(self, value: str) -> ModelsContentDownloadResponse:
        self.updated_time = value
        return self

    def with_user_id(self, value: str) -> ModelsContentDownloadResponse:
        self.user_id = value
        return self

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsContentDownloadResponse:
        self.custom_attributes = value
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

    def with_payload_url(
        self, value: List[ModelsPayloadURL]
    ) -> ModelsContentDownloadResponse:
        self.payload_url = value
        return self

    def with_preview_url(
        self, value: List[ModelsPreviewURL]
    ) -> ModelsContentDownloadResponse:
        self.preview_url = value
        return self

    def with_screenshots(
        self, value: List[ModelsScreenshotResponse]
    ) -> ModelsContentDownloadResponse:
        self.screenshots = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel_id"):
            result["channelId"] = str(self.channel_id)
        elif include_empty:
            result["channelId"] = ""
        if hasattr(self, "created_time"):
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = ""
        if hasattr(self, "creator_follow_state"):
            result["creatorFollowState"] = self.creator_follow_state.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["creatorFollowState"] = ModelsCreatorFollowState()
        if hasattr(self, "creator_name"):
            result["creatorName"] = str(self.creator_name)
        elif include_empty:
            result["creatorName"] = ""
        if hasattr(self, "download_count"):
            result["downloadCount"] = int(self.download_count)
        elif include_empty:
            result["downloadCount"] = 0
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "is_hidden"):
            result["isHidden"] = bool(self.is_hidden)
        elif include_empty:
            result["isHidden"] = False
        if hasattr(self, "is_official"):
            result["isOfficial"] = bool(self.is_official)
        elif include_empty:
            result["isOfficial"] = False
        if hasattr(self, "like_count"):
            result["likeCount"] = int(self.like_count)
        elif include_empty:
            result["likeCount"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "share_code"):
            result["shareCode"] = str(self.share_code)
        elif include_empty:
            result["shareCode"] = ""
        if hasattr(self, "sub_type"):
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "updated_time"):
            result["updatedTime"] = str(self.updated_time)
        elif include_empty:
            result["updatedTime"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
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
            result["payload"] = ""
        if hasattr(self, "payload_url"):
            result["payloadURL"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.payload_url
            ]
        elif include_empty:
            result["payloadURL"] = []
        if hasattr(self, "preview_url"):
            result["previewURL"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.preview_url
            ]
        elif include_empty:
            result["previewURL"] = []
        if hasattr(self, "screenshots"):
            result["screenshots"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.screenshots
            ]
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
        updated_time: str,
        user_id: str,
        custom_attributes: Optional[Dict[str, Any]] = None,
        groups: Optional[List[str]] = None,
        like_state: Optional[ModelsLikeState] = None,
        payload: Optional[str] = None,
        payload_url: Optional[List[ModelsPayloadURL]] = None,
        preview_url: Optional[List[ModelsPreviewURL]] = None,
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
        instance.updated_time = updated_time
        instance.user_id = user_id
        if custom_attributes is not None:
            instance.custom_attributes = custom_attributes
        if groups is not None:
            instance.groups = groups
        if like_state is not None:
            instance.like_state = like_state
        if payload is not None:
            instance.payload = payload
        if payload_url is not None:
            instance.payload_url = payload_url
        if preview_url is not None:
            instance.preview_url = preview_url
        if screenshots is not None:
            instance.screenshots = screenshots
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsContentDownloadResponse:
        instance = cls()
        if not dict_:
            return instance
        if "channelId" in dict_ and dict_["channelId"] is not None:
            instance.channel_id = str(dict_["channelId"])
        elif include_empty:
            instance.channel_id = ""
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = ""
        if "creatorFollowState" in dict_ and dict_["creatorFollowState"] is not None:
            instance.creator_follow_state = ModelsCreatorFollowState.create_from_dict(
                dict_["creatorFollowState"], include_empty=include_empty
            )
        elif include_empty:
            instance.creator_follow_state = ModelsCreatorFollowState()
        if "creatorName" in dict_ and dict_["creatorName"] is not None:
            instance.creator_name = str(dict_["creatorName"])
        elif include_empty:
            instance.creator_name = ""
        if "downloadCount" in dict_ and dict_["downloadCount"] is not None:
            instance.download_count = int(dict_["downloadCount"])
        elif include_empty:
            instance.download_count = 0
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isHidden" in dict_ and dict_["isHidden"] is not None:
            instance.is_hidden = bool(dict_["isHidden"])
        elif include_empty:
            instance.is_hidden = False
        if "isOfficial" in dict_ and dict_["isOfficial"] is not None:
            instance.is_official = bool(dict_["isOfficial"])
        elif include_empty:
            instance.is_official = False
        if "likeCount" in dict_ and dict_["likeCount"] is not None:
            instance.like_count = int(dict_["likeCount"])
        elif include_empty:
            instance.like_count = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "shareCode" in dict_ and dict_["shareCode"] is not None:
            instance.share_code = str(dict_["shareCode"])
        elif include_empty:
            instance.share_code = ""
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "updatedTime" in dict_ and dict_["updatedTime"] is not None:
            instance.updated_time = str(dict_["updatedTime"])
        elif include_empty:
            instance.updated_time = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "groups" in dict_ and dict_["groups"] is not None:
            instance.groups = [str(i0) for i0 in dict_["groups"]]
        elif include_empty:
            instance.groups = []
        if "likeState" in dict_ and dict_["likeState"] is not None:
            instance.like_state = ModelsLikeState.create_from_dict(
                dict_["likeState"], include_empty=include_empty
            )
        elif include_empty:
            instance.like_state = ModelsLikeState()
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = str(dict_["payload"])
        elif include_empty:
            instance.payload = ""
        if "payloadURL" in dict_ and dict_["payloadURL"] is not None:
            instance.payload_url = [
                ModelsPayloadURL.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["payloadURL"]
            ]
        elif include_empty:
            instance.payload_url = []
        if "previewURL" in dict_ and dict_["previewURL"] is not None:
            instance.preview_url = [
                ModelsPreviewURL.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["previewURL"]
            ]
        elif include_empty:
            instance.preview_url = []
        if "screenshots" in dict_ and dict_["screenshots"] is not None:
            instance.screenshots = [
                ModelsScreenshotResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["screenshots"]
            ]
        elif include_empty:
            instance.screenshots = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsContentDownloadResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsContentDownloadResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsContentDownloadResponse,
        List[ModelsContentDownloadResponse],
        Dict[Any, ModelsContentDownloadResponse],
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
            "updatedTime": "updated_time",
            "userId": "user_id",
            "customAttributes": "custom_attributes",
            "groups": "groups",
            "likeState": "like_state",
            "payload": "payload",
            "payloadURL": "payload_url",
            "previewURL": "preview_url",
            "screenshots": "screenshots",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "channelId": True,
            "createdTime": True,
            "creatorFollowState": True,
            "creatorName": True,
            "downloadCount": True,
            "fileExtension": True,
            "id": True,
            "isHidden": True,
            "isOfficial": True,
            "likeCount": True,
            "name": True,
            "namespace": True,
            "shareCode": True,
            "subType": True,
            "tags": True,
            "type": True,
            "updatedTime": True,
            "userId": True,
            "customAttributes": False,
            "groups": False,
            "likeState": False,
            "payload": False,
            "payloadURL": False,
            "previewURL": False,
            "screenshots": False,
        }

    # endregion static methods
