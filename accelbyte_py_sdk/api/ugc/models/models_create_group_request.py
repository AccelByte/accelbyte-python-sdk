# justice-ugc-service (1.9.0)

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


class ModelsCreateGroupRequest(Model):
    """Models create group request (models.CreateGroupRequest)

    Properties:
        contents: (contents) REQUIRED List[str]

        name: (name) REQUIRED str
    """

    # region fields

    contents: List[str]                                                                            # REQUIRED
    name: str                                                                                      # REQUIRED

    # endregion fields

    # region with_x methods

    def with_contents(self, value: List[str]) -> ModelsCreateGroupRequest:
        self.contents = value
        return self

    def with_name(self, value: str) -> ModelsCreateGroupRequest:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "contents"):
            result["contents"] = [str(i0) for i0 in self.contents]
        elif include_empty:
            result["contents"] = []
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        contents: List[str],
        name: str,
    ) -> ModelsCreateGroupRequest:
        instance = cls()
        instance.contents = contents
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateGroupRequest:
        instance = cls()
        if not dict_:
            return instance
        if "contents" in dict_ and dict_["contents"] is not None:
            instance.contents = [str(i0) for i0 in dict_["contents"]]
        elif include_empty:
            instance.contents = []
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "contents": "contents",
            "name": "name",
        }

    # endregion static methods