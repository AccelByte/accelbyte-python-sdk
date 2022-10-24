# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class DeviceEnum(StrEnum):
    DESKTOP = "DESKTOP"
    MOBILE = "MOBILE"


class SizeEnum(StrEnum):
    LARGE = "LARGE"
    MEDIUM = "MEDIUM"
    SMALL = "SMALL"


class ThemeEnum(StrEnum):
    DARK = "DARK"
    DEFAULT = "DEFAULT"
    DEFAULT_DARK = "DEFAULT_DARK"


class XsollaPaywallConfigRequest(Model):
    """Xsolla paywall config request (XsollaPaywallConfigRequest)

    Properties:
        device: (device) OPTIONAL Union[str, DeviceEnum]

        show_close_button: (showCloseButton) OPTIONAL bool

        size: (size) OPTIONAL Union[str, SizeEnum]

        theme: (theme) OPTIONAL Union[str, ThemeEnum]
    """

    # region fields

    device: Union[str, DeviceEnum]  # OPTIONAL
    show_close_button: bool  # OPTIONAL
    size: Union[str, SizeEnum]  # OPTIONAL
    theme: Union[str, ThemeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_device(self, value: Union[str, DeviceEnum]) -> XsollaPaywallConfigRequest:
        self.device = value
        return self

    def with_show_close_button(self, value: bool) -> XsollaPaywallConfigRequest:
        self.show_close_button = value
        return self

    def with_size(self, value: Union[str, SizeEnum]) -> XsollaPaywallConfigRequest:
        self.size = value
        return self

    def with_theme(self, value: Union[str, ThemeEnum]) -> XsollaPaywallConfigRequest:
        self.theme = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "device"):
            result["device"] = str(self.device)
        elif include_empty:
            result["device"] = Union[str, DeviceEnum]()
        if hasattr(self, "show_close_button"):
            result["showCloseButton"] = bool(self.show_close_button)
        elif include_empty:
            result["showCloseButton"] = False
        if hasattr(self, "size"):
            result["size"] = str(self.size)
        elif include_empty:
            result["size"] = Union[str, SizeEnum]()
        if hasattr(self, "theme"):
            result["theme"] = str(self.theme)
        elif include_empty:
            result["theme"] = Union[str, ThemeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        device: Optional[Union[str, DeviceEnum]] = None,
        show_close_button: Optional[bool] = None,
        size: Optional[Union[str, SizeEnum]] = None,
        theme: Optional[Union[str, ThemeEnum]] = None,
    ) -> XsollaPaywallConfigRequest:
        instance = cls()
        if device is not None:
            instance.device = device
        if show_close_button is not None:
            instance.show_close_button = show_close_button
        if size is not None:
            instance.size = size
        if theme is not None:
            instance.theme = theme
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XsollaPaywallConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "device" in dict_ and dict_["device"] is not None:
            instance.device = str(dict_["device"])
        elif include_empty:
            instance.device = Union[str, DeviceEnum]()
        if "showCloseButton" in dict_ and dict_["showCloseButton"] is not None:
            instance.show_close_button = bool(dict_["showCloseButton"])
        elif include_empty:
            instance.show_close_button = False
        if "size" in dict_ and dict_["size"] is not None:
            instance.size = str(dict_["size"])
        elif include_empty:
            instance.size = Union[str, SizeEnum]()
        if "theme" in dict_ and dict_["theme"] is not None:
            instance.theme = str(dict_["theme"])
        elif include_empty:
            instance.theme = Union[str, ThemeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XsollaPaywallConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XsollaPaywallConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XsollaPaywallConfigRequest,
        List[XsollaPaywallConfigRequest],
        Dict[Any, XsollaPaywallConfigRequest],
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
            "device": "device",
            "showCloseButton": "show_close_button",
            "size": "size",
            "theme": "theme",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "device": False,
            "showCloseButton": False,
            "size": False,
            "theme": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "device": ["DESKTOP", "MOBILE"],
            "size": ["LARGE", "MEDIUM", "SMALL"],
            "theme": ["DARK", "DEFAULT", "DEFAULT_DARK"],
        }

    # endregion static methods
