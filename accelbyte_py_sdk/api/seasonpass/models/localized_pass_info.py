# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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

from ..models.image import Image


class LocalizedPassInfo(Model):
    """A DTO object for public user retrieving pass info. (LocalizedPassInfo)

    Properties:
        auto_enroll: (autoEnroll) REQUIRED bool

        code: (code) REQUIRED str

        created_at: (createdAt) REQUIRED str

        display_order: (displayOrder) REQUIRED str

        language: (language) REQUIRED str

        namespace: (namespace) REQUIRED str

        pass_item_id: (passItemId) REQUIRED str

        season_id: (seasonId) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        description: (description) OPTIONAL str

        images: (images) OPTIONAL List[Image]

        title: (title) OPTIONAL str
    """

    # region fields

    auto_enroll: bool  # REQUIRED
    code: str  # REQUIRED
    created_at: str  # REQUIRED
    display_order: str  # REQUIRED
    language: str  # REQUIRED
    namespace: str  # REQUIRED
    pass_item_id: str  # REQUIRED
    season_id: str  # REQUIRED
    updated_at: str  # REQUIRED
    description: str  # OPTIONAL
    images: List[Image]  # OPTIONAL
    title: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auto_enroll(self, value: bool) -> LocalizedPassInfo:
        self.auto_enroll = value
        return self

    def with_code(self, value: str) -> LocalizedPassInfo:
        self.code = value
        return self

    def with_created_at(self, value: str) -> LocalizedPassInfo:
        self.created_at = value
        return self

    def with_display_order(self, value: str) -> LocalizedPassInfo:
        self.display_order = value
        return self

    def with_language(self, value: str) -> LocalizedPassInfo:
        self.language = value
        return self

    def with_namespace(self, value: str) -> LocalizedPassInfo:
        self.namespace = value
        return self

    def with_pass_item_id(self, value: str) -> LocalizedPassInfo:
        self.pass_item_id = value
        return self

    def with_season_id(self, value: str) -> LocalizedPassInfo:
        self.season_id = value
        return self

    def with_updated_at(self, value: str) -> LocalizedPassInfo:
        self.updated_at = value
        return self

    def with_description(self, value: str) -> LocalizedPassInfo:
        self.description = value
        return self

    def with_images(self, value: List[Image]) -> LocalizedPassInfo:
        self.images = value
        return self

    def with_title(self, value: str) -> LocalizedPassInfo:
        self.title = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_enroll"):
            result["autoEnroll"] = bool(self.auto_enroll)
        elif include_empty:
            result["autoEnroll"] = False
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "display_order"):
            result["displayOrder"] = str(self.display_order)
        elif include_empty:
            result["displayOrder"] = ""
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "pass_item_id"):
            result["passItemId"] = str(self.pass_item_id)
        elif include_empty:
            result["passItemId"] = ""
        if hasattr(self, "season_id"):
            result["seasonId"] = str(self.season_id)
        elif include_empty:
            result["seasonId"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "images"):
            result["images"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.images
            ]
        elif include_empty:
            result["images"] = []
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_enroll: bool,
        code: str,
        created_at: str,
        display_order: str,
        language: str,
        namespace: str,
        pass_item_id: str,
        season_id: str,
        updated_at: str,
        description: Optional[str] = None,
        images: Optional[List[Image]] = None,
        title: Optional[str] = None,
    ) -> LocalizedPassInfo:
        instance = cls()
        instance.auto_enroll = auto_enroll
        instance.code = code
        instance.created_at = created_at
        instance.display_order = display_order
        instance.language = language
        instance.namespace = namespace
        instance.pass_item_id = pass_item_id
        instance.season_id = season_id
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if images is not None:
            instance.images = images
        if title is not None:
            instance.title = title
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LocalizedPassInfo:
        instance = cls()
        if not dict_:
            return instance
        if "autoEnroll" in dict_ and dict_["autoEnroll"] is not None:
            instance.auto_enroll = bool(dict_["autoEnroll"])
        elif include_empty:
            instance.auto_enroll = False
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = str(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = ""
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "passItemId" in dict_ and dict_["passItemId"] is not None:
            instance.pass_item_id = str(dict_["passItemId"])
        elif include_empty:
            instance.pass_item_id = ""
        if "seasonId" in dict_ and dict_["seasonId"] is not None:
            instance.season_id = str(dict_["seasonId"])
        elif include_empty:
            instance.season_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [
                Image.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["images"]
            ]
        elif include_empty:
            instance.images = []
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LocalizedPassInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LocalizedPassInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        LocalizedPassInfo, List[LocalizedPassInfo], Dict[Any, LocalizedPassInfo]
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
            "autoEnroll": "auto_enroll",
            "code": "code",
            "createdAt": "created_at",
            "displayOrder": "display_order",
            "language": "language",
            "namespace": "namespace",
            "passItemId": "pass_item_id",
            "seasonId": "season_id",
            "updatedAt": "updated_at",
            "description": "description",
            "images": "images",
            "title": "title",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "autoEnroll": True,
            "code": True,
            "createdAt": True,
            "displayOrder": True,
            "language": True,
            "namespace": True,
            "passItemId": True,
            "seasonId": True,
            "updatedAt": True,
            "description": False,
            "images": False,
            "title": False,
        }

    # endregion static methods
