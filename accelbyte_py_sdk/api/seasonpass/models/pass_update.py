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
from ..models.localization import Localization


class PassUpdate(Model):
    """A DTO object for updating pass API call. (PassUpdate)

    Properties:
        auto_enroll: (autoEnroll) OPTIONAL bool

        display_order: (displayOrder) OPTIONAL int

        images: (images) OPTIONAL List[Image]

        localizations: (localizations) OPTIONAL Dict[str, Localization]

        pass_item_id: (passItemId) OPTIONAL str
    """

    # region fields

    auto_enroll: bool  # OPTIONAL
    display_order: int  # OPTIONAL
    images: List[Image]  # OPTIONAL
    localizations: Dict[str, Localization]  # OPTIONAL
    pass_item_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auto_enroll(self, value: bool) -> PassUpdate:
        self.auto_enroll = value
        return self

    def with_display_order(self, value: int) -> PassUpdate:
        self.display_order = value
        return self

    def with_images(self, value: List[Image]) -> PassUpdate:
        self.images = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> PassUpdate:
        self.localizations = value
        return self

    def with_pass_item_id(self, value: str) -> PassUpdate:
        self.pass_item_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_enroll"):
            result["autoEnroll"] = bool(self.auto_enroll)
        elif include_empty:
            result["autoEnroll"] = False
        if hasattr(self, "display_order"):
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = 0
        if hasattr(self, "images"):
            result["images"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.images
            ]
        elif include_empty:
            result["images"] = []
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_enroll: Optional[bool] = None,
        display_order: Optional[int] = None,
        images: Optional[List[Image]] = None,
        localizations: Optional[Dict[str, Localization]] = None,
        pass_item_id: Optional[str] = None,
    ) -> PassUpdate:
        instance = cls()
        if auto_enroll is not None:
            instance.auto_enroll = auto_enroll
        if display_order is not None:
            instance.display_order = display_order
        if images is not None:
            instance.images = images
        if localizations is not None:
            instance.localizations = localizations
        if pass_item_id is not None:
            instance.pass_item_id = pass_item_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PassUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "autoEnroll" in dict_ and dict_["autoEnroll"] is not None:
            instance.auto_enroll = bool(dict_["autoEnroll"])
        elif include_empty:
            instance.auto_enroll = False
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = 0
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [
                Image.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["images"]
            ]
        elif include_empty:
            instance.images = []
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PassUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PassUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PassUpdate, List[PassUpdate], Dict[Any, PassUpdate]]:
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
            "displayOrder": "display_order",
            "images": "images",
            "localizations": "localizations",
            "passItemId": "pass_item_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "autoEnroll": False,
            "displayOrder": False,
            "images": False,
            "localizations": False,
            "passItemId": False,
        }

    # endregion static methods
