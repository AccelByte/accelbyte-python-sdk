# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.16.0)

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
from ..models.localization import Localization


class PassCreate(Model):
    """A DTO object for creating pass API call. (PassCreate)

    Properties:
        code: (code) REQUIRED str

        display_order: (displayOrder) REQUIRED int

        localizations: (localizations) REQUIRED Dict[str, Localization]

        pass_item_id: (passItemId) REQUIRED str

        auto_enroll: (autoEnroll) OPTIONAL bool

        images: (images) OPTIONAL List[Image]
    """

    # region fields

    code: str  # REQUIRED
    display_order: int  # REQUIRED
    localizations: Dict[str, Localization]  # REQUIRED
    pass_item_id: str  # REQUIRED
    auto_enroll: bool  # OPTIONAL
    images: List[Image]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> PassCreate:
        self.code = value
        return self

    def with_display_order(self, value: int) -> PassCreate:
        self.display_order = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> PassCreate:
        self.localizations = value
        return self

    def with_pass_item_id(self, value: str) -> PassCreate:
        self.pass_item_id = value
        return self

    def with_auto_enroll(self, value: bool) -> PassCreate:
        self.auto_enroll = value
        return self

    def with_images(self, value: List[Image]) -> PassCreate:
        self.images = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "display_order"):
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = 0
        if hasattr(self, "localizations"):
            result["localizations"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.localizations.items()
            }
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "pass_item_id"):
            result["passItemId"] = str(self.pass_item_id)
        elif include_empty:
            result["passItemId"] = ""
        if hasattr(self, "auto_enroll"):
            result["autoEnroll"] = bool(self.auto_enroll)
        elif include_empty:
            result["autoEnroll"] = False
        if hasattr(self, "images"):
            result["images"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.images
            ]
        elif include_empty:
            result["images"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        display_order: int,
        localizations: Dict[str, Localization],
        pass_item_id: str,
        auto_enroll: Optional[bool] = None,
        images: Optional[List[Image]] = None,
    ) -> PassCreate:
        instance = cls()
        instance.code = code
        instance.display_order = display_order
        instance.localizations = localizations
        instance.pass_item_id = pass_item_id
        if auto_enroll is not None:
            instance.auto_enroll = auto_enroll
        if images is not None:
            instance.images = images
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PassCreate:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = 0
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {
                str(k0): Localization.create_from_dict(v0, include_empty=include_empty)
                for k0, v0 in dict_["localizations"].items()
            }
        elif include_empty:
            instance.localizations = {}
        if "passItemId" in dict_ and dict_["passItemId"] is not None:
            instance.pass_item_id = str(dict_["passItemId"])
        elif include_empty:
            instance.pass_item_id = ""
        if "autoEnroll" in dict_ and dict_["autoEnroll"] is not None:
            instance.auto_enroll = bool(dict_["autoEnroll"])
        elif include_empty:
            instance.auto_enroll = False
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [
                Image.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["images"]
            ]
        elif include_empty:
            instance.images = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PassCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PassCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PassCreate, List[PassCreate], Dict[Any, PassCreate]]:
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
            "code": "code",
            "displayOrder": "display_order",
            "localizations": "localizations",
            "passItemId": "pass_item_id",
            "autoEnroll": "auto_enroll",
            "images": "images",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "displayOrder": True,
            "localizations": True,
            "passItemId": True,
            "autoEnroll": False,
            "images": False,
        }

    # endregion static methods
