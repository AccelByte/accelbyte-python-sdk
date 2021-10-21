# Auto-generated at 2021-10-21T08:52:30.647426+08:00
# from: Justice platform Service (3.34.0)

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


class KeyGroupUpdate(Model):
    """A DTO object for creating KeyGroup API call. (KeyGroupUpdate)

    Properties:
        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        status: (status) OPTIONAL str
    """

    # region fields

    name: str                                                                                      # REQUIRED
    description: str                                                                               # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    status: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> KeyGroupUpdate:
        self.name = value
        return self

    def with_description(self, value: str) -> KeyGroupUpdate:
        self.description = value
        return self

    def with_tags(self, value: List[str]) -> KeyGroupUpdate:
        self.tags = value
        return self

    def with_status(self, value: str) -> KeyGroupUpdate:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: str,
        description: Optional[str] = None,
        tags: Optional[List[str]] = None,
        status: Optional[str] = None,
    ) -> KeyGroupUpdate:
        instance = cls()
        instance.name = name
        if description is not None:
            instance.description = description
        if tags is not None:
            instance.tags = tags
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> KeyGroupUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "name": "name",
            "description": "description",
            "tags": "tags",
            "status": "status",
        }

    # endregion static methods
