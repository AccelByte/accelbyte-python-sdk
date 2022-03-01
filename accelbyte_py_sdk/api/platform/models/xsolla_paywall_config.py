# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.3.2)

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


class XsollaPaywallConfig(Model):
    """Xsolla paywall config (XsollaPaywallConfig)

    Properties:
        device: (device) REQUIRED str

        show_close_button: (showCloseButton) REQUIRED bool

        size: (size) REQUIRED str

        theme: (theme) REQUIRED str
    """

    # region fields

    device: str                                                                                    # REQUIRED
    show_close_button: bool                                                                        # REQUIRED
    size: str                                                                                      # REQUIRED
    theme: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_device(self, value: str) -> XsollaPaywallConfig:
        self.device = value
        return self

    def with_show_close_button(self, value: bool) -> XsollaPaywallConfig:
        self.show_close_button = value
        return self

    def with_size(self, value: str) -> XsollaPaywallConfig:
        self.size = value
        return self

    def with_theme(self, value: str) -> XsollaPaywallConfig:
        self.theme = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "device"):
            result["device"] = str(self.device)
        elif include_empty:
            result["device"] = str()
        if hasattr(self, "show_close_button"):
            result["showCloseButton"] = bool(self.show_close_button)
        elif include_empty:
            result["showCloseButton"] = bool()
        if hasattr(self, "size"):
            result["size"] = str(self.size)
        elif include_empty:
            result["size"] = str()
        if hasattr(self, "theme"):
            result["theme"] = str(self.theme)
        elif include_empty:
            result["theme"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        device: str,
        show_close_button: bool,
        size: str,
        theme: str,
    ) -> XsollaPaywallConfig:
        instance = cls()
        instance.device = device
        instance.show_close_button = show_close_button
        instance.size = size
        instance.theme = theme
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> XsollaPaywallConfig:
        instance = cls()
        if not dict_:
            return instance
        if "device" in dict_ and dict_["device"] is not None:
            instance.device = str(dict_["device"])
        elif include_empty:
            instance.device = str()
        if "showCloseButton" in dict_ and dict_["showCloseButton"] is not None:
            instance.show_close_button = bool(dict_["showCloseButton"])
        elif include_empty:
            instance.show_close_button = bool()
        if "size" in dict_ and dict_["size"] is not None:
            instance.size = str(dict_["size"])
        elif include_empty:
            instance.size = str()
        if "theme" in dict_ and dict_["theme"] is not None:
            instance.theme = str(dict_["theme"])
        elif include_empty:
            instance.theme = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, XsollaPaywallConfig]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[XsollaPaywallConfig]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[XsollaPaywallConfig, List[XsollaPaywallConfig]]:
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
            "device": "device",
            "showCloseButton": "show_close_button",
            "size": "size",
            "theme": "theme",
        }

    # endregion static methods
