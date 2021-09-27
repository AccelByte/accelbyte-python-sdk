# Auto-generated at 2021-09-27T17:12:36.411333+08:00
# from: Justice Platform Service (3.24.0)

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


class XsollaPaywallConfigRequest(Model):
    """Xsolla paywall config request

    Properties:
        theme: (theme) OPTIONAL str

        size: (size) OPTIONAL str

        device: (device) OPTIONAL str

        show_close_button: (showCloseButton) OPTIONAL bool
    """

    # region fields

    theme: str                                                                                     # OPTIONAL
    size: str                                                                                      # OPTIONAL
    device: str                                                                                    # OPTIONAL
    show_close_button: bool                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_theme(self, value: str) -> XsollaPaywallConfigRequest:
        self.theme = value
        return self

    def with_size(self, value: str) -> XsollaPaywallConfigRequest:
        self.size = value
        return self

    def with_device(self, value: str) -> XsollaPaywallConfigRequest:
        self.device = value
        return self

    def with_show_close_button(self, value: bool) -> XsollaPaywallConfigRequest:
        self.show_close_button = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "theme") and self.theme:
            result["theme"] = str(self.theme)
        elif include_empty:
            result["theme"] = str()
        if hasattr(self, "size") and self.size:
            result["size"] = str(self.size)
        elif include_empty:
            result["size"] = str()
        if hasattr(self, "device") and self.device:
            result["device"] = str(self.device)
        elif include_empty:
            result["device"] = str()
        if hasattr(self, "show_close_button") and self.show_close_button:
            result["showCloseButton"] = bool(self.show_close_button)
        elif include_empty:
            result["showCloseButton"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        theme: Optional[str] = None,
        size: Optional[str] = None,
        device: Optional[str] = None,
        show_close_button: Optional[bool] = None,
    ) -> XsollaPaywallConfigRequest:
        instance = cls()
        if theme is not None:
            instance.theme = theme
        if size is not None:
            instance.size = size
        if device is not None:
            instance.device = device
        if show_close_button is not None:
            instance.show_close_button = show_close_button
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> XsollaPaywallConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "theme" in dict_ and dict_["theme"] is not None:
            instance.theme = str(dict_["theme"])
        elif include_empty:
            instance.theme = str()
        if "size" in dict_ and dict_["size"] is not None:
            instance.size = str(dict_["size"])
        elif include_empty:
            instance.size = str()
        if "device" in dict_ and dict_["device"] is not None:
            instance.device = str(dict_["device"])
        elif include_empty:
            instance.device = str()
        if "showCloseButton" in dict_ and dict_["showCloseButton"] is not None:
            instance.show_close_button = bool(dict_["showCloseButton"])
        elif include_empty:
            instance.show_close_button = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "theme": "theme",
            "size": "size",
            "device": "device",
            "showCloseButton": "show_close_button",
        }

    # endregion static methods
