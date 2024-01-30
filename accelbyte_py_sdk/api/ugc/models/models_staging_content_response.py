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

from ..models.models_screenshot_response import ModelsScreenshotResponse


class StatusEnum(StrEnum):
    APPROVED = "APPROVED"
    PENDING = "PENDING"
    REJECTED = "REJECTED"


class ModelsStagingContentResponse(Model):
    """Models staging content response (models.StagingContentResponse)

    Properties:
        channel_id: (channelId) REQUIRED str

        created_time: (createdTime) REQUIRED str

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        tags: (tags) REQUIRED List[str]

        user_id: (userId) REQUIRED str

        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        file_extension: (fileExtension) OPTIONAL str

        note: (note) OPTIONAL str

        payload_url: (payloadURL) OPTIONAL str

        screenshots: (screenshots) OPTIONAL List[ModelsScreenshotResponse]

        sub_type: (subType) OPTIONAL str

        type_: (type) OPTIONAL str

        updated_time: (updatedTime) OPTIONAL str
    """

    # region fields

    channel_id: str  # REQUIRED
    created_time: str  # REQUIRED
    id_: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    tags: List[str]  # REQUIRED
    user_id: str  # REQUIRED
    custom_attributes: Dict[str, Any]  # OPTIONAL
    file_extension: str  # OPTIONAL
    note: str  # OPTIONAL
    payload_url: str  # OPTIONAL
    screenshots: List[ModelsScreenshotResponse]  # OPTIONAL
    sub_type: str  # OPTIONAL
    type_: str  # OPTIONAL
    updated_time: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel_id(self, value: str) -> ModelsStagingContentResponse:
        self.channel_id = value
        return self

    def with_created_time(self, value: str) -> ModelsStagingContentResponse:
        self.created_time = value
        return self

    def with_id(self, value: str) -> ModelsStagingContentResponse:
        self.id_ = value
        return self

    def with_name(self, value: str) -> ModelsStagingContentResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsStagingContentResponse:
        self.namespace = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> ModelsStagingContentResponse:
        self.status = value
        return self

    def with_tags(self, value: List[str]) -> ModelsStagingContentResponse:
        self.tags = value
        return self

    def with_user_id(self, value: str) -> ModelsStagingContentResponse:
        self.user_id = value
        return self

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsStagingContentResponse:
        self.custom_attributes = value
        return self

    def with_file_extension(self, value: str) -> ModelsStagingContentResponse:
        self.file_extension = value
        return self

    def with_note(self, value: str) -> ModelsStagingContentResponse:
        self.note = value
        return self

    def with_payload_url(self, value: str) -> ModelsStagingContentResponse:
        self.payload_url = value
        return self

    def with_screenshots(
        self, value: List[ModelsScreenshotResponse]
    ) -> ModelsStagingContentResponse:
        self.screenshots = value
        return self

    def with_sub_type(self, value: str) -> ModelsStagingContentResponse:
        self.sub_type = value
        return self

    def with_type(self, value: str) -> ModelsStagingContentResponse:
        self.type_ = value
        return self

    def with_updated_time(self, value: str) -> ModelsStagingContentResponse:
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
        if hasattr(self, "created_time"):
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
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
        if hasattr(self, "file_extension"):
            result["fileExtension"] = str(self.file_extension)
        elif include_empty:
            result["fileExtension"] = ""
        if hasattr(self, "note"):
            result["note"] = str(self.note)
        elif include_empty:
            result["note"] = ""
        if hasattr(self, "payload_url"):
            result["payloadURL"] = str(self.payload_url)
        elif include_empty:
            result["payloadURL"] = ""
        if hasattr(self, "screenshots"):
            result["screenshots"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.screenshots
            ]
        elif include_empty:
            result["screenshots"] = []
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
        created_time: str,
        id_: str,
        name: str,
        namespace: str,
        status: Union[str, StatusEnum],
        tags: List[str],
        user_id: str,
        custom_attributes: Optional[Dict[str, Any]] = None,
        file_extension: Optional[str] = None,
        note: Optional[str] = None,
        payload_url: Optional[str] = None,
        screenshots: Optional[List[ModelsScreenshotResponse]] = None,
        sub_type: Optional[str] = None,
        type_: Optional[str] = None,
        updated_time: Optional[str] = None,
        **kwargs,
    ) -> ModelsStagingContentResponse:
        instance = cls()
        instance.channel_id = channel_id
        instance.created_time = created_time
        instance.id_ = id_
        instance.name = name
        instance.namespace = namespace
        instance.status = status
        instance.tags = tags
        instance.user_id = user_id
        if custom_attributes is not None:
            instance.custom_attributes = custom_attributes
        if file_extension is not None:
            instance.file_extension = file_extension
        if note is not None:
            instance.note = note
        if payload_url is not None:
            instance.payload_url = payload_url
        if screenshots is not None:
            instance.screenshots = screenshots
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
    ) -> ModelsStagingContentResponse:
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
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
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
        if "fileExtension" in dict_ and dict_["fileExtension"] is not None:
            instance.file_extension = str(dict_["fileExtension"])
        elif include_empty:
            instance.file_extension = ""
        if "note" in dict_ and dict_["note"] is not None:
            instance.note = str(dict_["note"])
        elif include_empty:
            instance.note = ""
        if "payloadURL" in dict_ and dict_["payloadURL"] is not None:
            instance.payload_url = str(dict_["payloadURL"])
        elif include_empty:
            instance.payload_url = ""
        if "screenshots" in dict_ and dict_["screenshots"] is not None:
            instance.screenshots = [
                ModelsScreenshotResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["screenshots"]
            ]
        elif include_empty:
            instance.screenshots = []
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
    ) -> Dict[str, ModelsStagingContentResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsStagingContentResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsStagingContentResponse,
        List[ModelsStagingContentResponse],
        Dict[Any, ModelsStagingContentResponse],
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
            "id": "id_",
            "name": "name",
            "namespace": "namespace",
            "status": "status",
            "tags": "tags",
            "userId": "user_id",
            "customAttributes": "custom_attributes",
            "fileExtension": "file_extension",
            "note": "note",
            "payloadURL": "payload_url",
            "screenshots": "screenshots",
            "subType": "sub_type",
            "type": "type_",
            "updatedTime": "updated_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "channelId": True,
            "createdTime": True,
            "id": True,
            "name": True,
            "namespace": True,
            "status": True,
            "tags": True,
            "userId": True,
            "customAttributes": False,
            "fileExtension": False,
            "note": False,
            "payloadURL": False,
            "screenshots": False,
            "subType": False,
            "type": False,
            "updatedTime": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["APPROVED", "PENDING", "REJECTED"],
        }

    # endregion static methods
