# Auto-generated at 2021-10-14T22:17:17.873544+08:00
# from: Justice SessionBrowser Service ()

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


class ModelsPartyMember(Model):
    """Models party member (models.PartyMember)

    Properties:
        extra_attributes: (extra_attributes) REQUIRED Dict[str, Any]

        user_id: (user_id) REQUIRED str
    """

    # region fields

    extra_attributes: Dict[str, Any]                                                               # REQUIRED
    user_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_extra_attributes(self, value: Dict[str, Any]) -> ModelsPartyMember:
        self.extra_attributes = value
        return self

    def with_user_id(self, value: str) -> ModelsPartyMember:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extra_attributes") and self.extra_attributes:
            result["extra_attributes"] = {str(k0): v0 for k0, v0 in self.extra_attributes.items()}
        elif include_empty:
            result["extra_attributes"] = {}
        if hasattr(self, "user_id") and self.user_id:
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        extra_attributes: Dict[str, Any],
        user_id: str,
    ) -> ModelsPartyMember:
        instance = cls()
        instance.extra_attributes = extra_attributes
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPartyMember:
        instance = cls()
        if not dict_:
            return instance
        if "extra_attributes" in dict_ and dict_["extra_attributes"] is not None:
            instance.extra_attributes = {str(k0): v0 for k0, v0 in dict_["extra_attributes"].items()}
        elif include_empty:
            instance.extra_attributes = {}
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "extra_attributes": "extra_attributes",
            "user_id": "user_id",
        }

    # endregion static methods
