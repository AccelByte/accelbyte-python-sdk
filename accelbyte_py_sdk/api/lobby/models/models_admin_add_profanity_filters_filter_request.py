# Auto-generated at 2021-10-14T22:17:13.233907+08:00
# from: Justice Lobby Service (1.33.0)

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


class ModelsAdminAddProfanityFiltersFilterRequest(Model):
    """Models admin add profanity filters filter request (models.AdminAddProfanityFiltersFilterRequest)

    Properties:
        filter_: (filter) REQUIRED str

        note: (note) REQUIRED str
    """

    # region fields

    filter_: str                                                                                   # REQUIRED
    note: str                                                                                      # REQUIRED

    # endregion fields

    # region with_x methods

    def with_filter(self, value: str) -> ModelsAdminAddProfanityFiltersFilterRequest:
        self.filter_ = value
        return self

    def with_note(self, value: str) -> ModelsAdminAddProfanityFiltersFilterRequest:
        self.note = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "filter_") and self.filter_:
            result["filter"] = str(self.filter_)
        elif include_empty:
            result["filter"] = str()
        if hasattr(self, "note") and self.note:
            result["note"] = str(self.note)
        elif include_empty:
            result["note"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        filter_: str,
        note: str,
    ) -> ModelsAdminAddProfanityFiltersFilterRequest:
        instance = cls()
        instance.filter_ = filter_
        instance.note = note
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAdminAddProfanityFiltersFilterRequest:
        instance = cls()
        if not dict_:
            return instance
        if "filter" in dict_ and dict_["filter"] is not None:
            instance.filter_ = str(dict_["filter"])
        elif include_empty:
            instance.filter_ = str()
        if "note" in dict_ and dict_["note"] is not None:
            instance.note = str(dict_["note"])
        elif include_empty:
            instance.note = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "filter": "filter_",
            "note": "note",
        }

    # endregion static methods
