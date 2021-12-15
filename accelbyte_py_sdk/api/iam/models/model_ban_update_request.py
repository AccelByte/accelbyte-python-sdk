# justice-iam-service (4.9.0)

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


class ModelBanUpdateRequest(Model):
    """Model ban update request (model.BanUpdateRequest)

    Properties:
        enabled: (enabled) REQUIRED bool

        skip_notif: (skipNotif) REQUIRED bool
    """

    # region fields

    enabled: bool                                                                                  # REQUIRED
    skip_notif: bool                                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_enabled(self, value: bool) -> ModelBanUpdateRequest:
        self.enabled = value
        return self

    def with_skip_notif(self, value: bool) -> ModelBanUpdateRequest:
        self.skip_notif = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = bool()
        if hasattr(self, "skip_notif"):
            result["skipNotif"] = bool(self.skip_notif)
        elif include_empty:
            result["skipNotif"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enabled: bool,
        skip_notif: bool,
    ) -> ModelBanUpdateRequest:
        instance = cls()
        instance.enabled = enabled
        instance.skip_notif = skip_notif
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelBanUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = bool()
        if "skipNotif" in dict_ and dict_["skipNotif"] is not None:
            instance.skip_notif = bool(dict_["skipNotif"])
        elif include_empty:
            instance.skip_notif = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "enabled": "enabled",
            "skipNotif": "skip_notif",
        }

    # endregion static methods
