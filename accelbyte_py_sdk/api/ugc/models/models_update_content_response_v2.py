# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ugc Service

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
from ....core import StrEnum

from ..models.models_payload_url import ModelsPayloadURL


class ContentStatusEnum(StrEnum):
    PUBLISHED = "PUBLISHED"
    UNDER_REVIEW = "UNDER_REVIEW"


class ModelsUpdateContentResponseV2(Model):
    """Models update content response V2 (models.UpdateContentResponseV2)

    Properties:
        channel_id: (channelId) REQUIRED str

        content_status: (contentStatus) REQUIRED Union[str, ContentStatusEnum]

        created_time: (createdTime) REQUIRED str

        file_location: (fileLocation) REQUIRED str

        id_: (id) REQUIRED str

        is_hidden: (isHidden) REQUIRED bool

        is_official: (isOfficial) REQUIRED bool

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        parent_namespace: (parentNamespace) REQUIRED str

        share_code: (shareCode) REQUIRED str

        tags: (tags) REQUIRED List[str]

        user_id: (userId) REQUIRED str

        content_type: (contentType) OPTIONAL str

        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        file_extension: (fileExtension) OPTIONAL str

        payload_url: (payloadURL) OPTIONAL List[ModelsPayloadURL]

        sub_type: (subType) OPTIONAL str

        type_: (type) OPTIONAL str

        updated_time: (updatedTime) OPTIONAL str
    """

    # region fields

    channel_id: str  # REQUIRED
    content_status: Union[str, ContentStatusEnum]  # REQUIRED
    created_time: str  # REQUIRED
    file_location: str  # REQUIRED
    id_: str  # REQUIRED
    is_hidden: bool  # REQUIRED
    is_official: bool  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    parent_namespace: str  # REQUIRED
    share_code: str  # REQUIRED
    tags: List[str]  # REQUIRED
    user_id: str  # REQUIRED
    content_type: str  # OPTIONAL
    custom_attributes: Dict[str, Any]  # OPTIONAL
    file_extension: str  # OPTIONAL
    payload_url: List[ModelsPayloadURL]  # OPTIONAL
    sub_type: str  # OPTIONAL
    type_: str  # OPTIONAL
    updated_time: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel_id(self, value: str) -> ModelsUpdateContentResponseV2:
        self.channel_id = value
        return self

    def with_content_status(
        self, value: Union[str, ContentStatusEnum]
    ) -> ModelsUpdateContentResponseV2:
        self.content_status = value
        return self

    def with_created_time(self, value: str) -> ModelsUpdateContentResponseV2:
        self.created_time = value
        return self

    def with_file_location(self, value: str) -> ModelsUpdateContentResponseV2:
        self.file_location = value
        return self

    def with_id(self, value: str) -> ModelsUpdateContentResponseV2:
        self.id_ = value
        return self

    def with_is_hidden(self, value: bool) -> ModelsUpdateContentResponseV2:
        self.is_hidden = value
        return self

    def with_is_official(self, value: bool) -> ModelsUpdateContentResponseV2:
        self.is_official = value
        return self

    def with_name(self, value: str) -> ModelsUpdateContentResponseV2:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsUpdateContentResponseV2:
        self.namespace = value
        return self

    def with_parent_namespace(self, value: str) -> ModelsUpdateContentResponseV2:
        self.parent_namespace = value
        return self

    def with_share_code(self, value: str) -> ModelsUpdateContentResponseV2:
        self.share_code = value
        return self

    def with_tags(self, value: List[str]) -> ModelsUpdateContentResponseV2:
        self.tags = value
        return self

    def with_user_id(self, value: str) -> ModelsUpdateContentResponseV2:
        self.user_id = value
        return self

    def with_content_type(self, value: str) -> ModelsUpdateContentResponseV2:
        self.content_type = value
        return self

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsUpdateContentResponseV2:
        self.custom_attributes = value
        return self

    def with_file_extension(self, value: str) -> ModelsUpdateContentResponseV2:
        self.file_extension = value
        return self

    def with_payload_url(
        self, value: List[ModelsPayloadURL]
    ) -> ModelsUpdateContentResponseV2:
        self.payload_url = value
        return self

    def with_sub_type(self, value: str) -> ModelsUpdateContentResponseV2:
        self.sub_type = value
        return self

    def with_type(self, value: str) -> ModelsUpdateContentResponseV2:
        self.type_ = value
        return self

    def with_updated_time(self, value: str) -> ModelsUpdateContentResponseV2:
        self.updated_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel_id"):
            result["channelId"] = str(self.channel_id)
        elif include_empty:
            result["channelId"] = ""
        if hasattr(self, "content_status"):
            result["contentStatus"] = str(self.content_status)
        elif include_empty:
            result["contentStatus"] = Union[str, ContentStatusEnum]()
        if hasattr(self, "created_time"):
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = ""
        if hasattr(self, "file_location"):
            result["fileLocation"] = str(self.file_location)
        elif include_empty:
            result["fileLocation"] = ""
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
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "parent_namespace"):
            result["parentNamespace"] = str(self.parent_namespace)
        elif include_empty:
            result["parentNamespace"] = ""
        if hasattr(self, "share_code"):
            result["shareCode"] = str(self.share_code)
        elif include_empty:
            result["shareCode"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = ""
        if hasattr(self, "payload_url"):
            result["payloadURL"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.payload_url
            ]
        elif include_empty:
            result["payloadURL"] = []
        if hasattr(self, "sub_type"):
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "updated_time"):
            result["updatedTime"] = str(self.updated_time)
        elif include_empty:
            result["updatedTime"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        channel_id: str,
        content_status: Union[str, ContentStatusEnum],
        created_time: str,
        file_location: str,
        id_: str,
        is_hidden: bool,
        is_official: bool,
        name: str,
        namespace: str,
        parent_namespace: str,
        share_code: str,
        tags: List[str],
        user_id: str,
        content_type: Optional[str] = None,
        custom_attributes: Optional[Dict[str, Any]] = None,
        file_extension: Optional[str] = None,
        payload_url: Optional[List[ModelsPayloadURL]] = None,
        sub_type: Optional[str] = None,
        type_: Optional[str] = None,
        updated_time: Optional[str] = None,
        **kwargs,
    ) -> ModelsUpdateContentResponseV2:
        instance = cls()
        instance.channel_id = channel_id
        instance.content_status = content_status
        instance.created_time = created_time
        instance.file_location = file_location
        instance.id_ = id_
        instance.is_hidden = is_hidden
        instance.is_official = is_official
        instance.name = name
        instance.namespace = namespace
        instance.parent_namespace = parent_namespace
        instance.share_code = share_code
        instance.tags = tags
        instance.user_id = user_id
        if content_type is not None:
            instance.content_type = content_type
        if custom_attributes is not None:
            instance.custom_attributes = custom_attributes
        if file_extension is not None:
            instance.file_extension = file_extension
        if payload_url is not None:
            instance.payload_url = payload_url
        if sub_type is not None:
            instance.sub_type = sub_type
        if type_ is not None:
            instance.type_ = type_
        if updated_time is not None:
            instance.updated_time = updated_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateContentResponseV2:
        instance = cls()
        if not dict_:
            return instance
        if "channelId" in dict_ and dict_["channelId"] is not None:
            instance.channel_id = str(dict_["channelId"])
        elif include_empty:
            instance.channel_id = ""
        if "contentStatus" in dict_ and dict_["contentStatus"] is not None:
            instance.content_status = str(dict_["contentStatus"])
        elif include_empty:
            instance.content_status = Union[str, ContentStatusEnum]()
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = ""
        if "fileLocation" in dict_ and dict_["fileLocation"] is not None:
            instance.file_location = str(dict_["fileLocation"])
        elif include_empty:
            instance.file_location = ""
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
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "parentNamespace" in dict_ and dict_["parentNamespace"] is not None:
            instance.parent_namespace = str(dict_["parentNamespace"])
        elif include_empty:
            instance.parent_namespace = ""
        if "shareCode" in dict_ and dict_["shareCode"] is not None:
            instance.share_code = str(dict_["shareCode"])
        elif include_empty:
            instance.share_code = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = ""
        if "payloadURL" in dict_ and dict_["payloadURL"] is not None:
            instance.payload_url = [
                ModelsPayloadURL.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["payloadURL"]
            ]
        elif include_empty:
            instance.payload_url = []
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "updatedTime" in dict_ and dict_["updatedTime"] is not None:
            instance.updated_time = str(dict_["updatedTime"])
        elif include_empty:
            instance.updated_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateContentResponseV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateContentResponseV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateContentResponseV2,
        List[ModelsUpdateContentResponseV2],
        Dict[Any, ModelsUpdateContentResponseV2],
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
            "contentStatus": "content_status",
            "createdTime": "created_time",
            "fileLocation": "file_location",
            "id": "id_",
            "isHidden": "is_hidden",
            "isOfficial": "is_official",
            "name": "name",
            "namespace": "namespace",
            "parentNamespace": "parent_namespace",
            "shareCode": "share_code",
            "tags": "tags",
            "userId": "user_id",
            "contentType": "content_type",
            "customAttributes": "custom_attributes",
            "fileExtension": "file_extension",
            "payloadURL": "payload_url",
            "subType": "sub_type",
            "type": "type_",
            "updatedTime": "updated_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "channelId": True,
            "contentStatus": True,
            "createdTime": True,
            "fileLocation": True,
            "id": True,
            "isHidden": True,
            "isOfficial": True,
            "name": True,
            "namespace": True,
            "parentNamespace": True,
            "shareCode": True,
            "tags": True,
            "userId": True,
            "contentType": False,
            "customAttributes": False,
            "fileExtension": False,
            "payloadURL": False,
            "subType": False,
            "type": False,
            "updatedTime": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "contentStatus": ["PUBLISHED", "UNDER_REVIEW"],
        }

    # endregion static methods
