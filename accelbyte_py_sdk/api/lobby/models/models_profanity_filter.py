# Auto-generated at 2021-10-14T22:17:13.265425+08:00
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


class ModelsProfanityFilter(Model):
    """Models profanity filter (models.ProfanityFilter)

    Properties:
        filter_: (filter) REQUIRED str

        list_name: (listName) REQUIRED str

        namespace: (namespace) REQUIRED str

        note: (note) REQUIRED str
    """

    # region fields

    filter_: str                                                                                   # REQUIRED
    list_name: str                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    note: str                                                                                      # REQUIRED

    # endregion fields

    # region with_x methods

    def with_filter(self, value: str) -> ModelsProfanityFilter:
        self.filter_ = value
        return self

    def with_list_name(self, value: str) -> ModelsProfanityFilter:
        self.list_name = value
        return self

    def with_namespace(self, value: str) -> ModelsProfanityFilter:
        self.namespace = value
        return self

    def with_note(self, value: str) -> ModelsProfanityFilter:
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
        if hasattr(self, "list_name") and self.list_name:
            result["listName"] = str(self.list_name)
        elif include_empty:
            result["listName"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
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
        list_name: str,
        namespace: str,
        note: str,
    ) -> ModelsProfanityFilter:
        instance = cls()
        instance.filter_ = filter_
        instance.list_name = list_name
        instance.namespace = namespace
        instance.note = note
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsProfanityFilter:
        instance = cls()
        if not dict_:
            return instance
        if "filter" in dict_ and dict_["filter"] is not None:
            instance.filter_ = str(dict_["filter"])
        elif include_empty:
            instance.filter_ = str()
        if "listName" in dict_ and dict_["listName"] is not None:
            instance.list_name = str(dict_["listName"])
        elif include_empty:
            instance.list_name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "note" in dict_ and dict_["note"] is not None:
            instance.note = str(dict_["note"])
        elif include_empty:
            instance.note = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "filter": "filter_",
            "listName": "list_name",
            "namespace": "namespace",
            "note": "note",
        }

    # endregion static methods
