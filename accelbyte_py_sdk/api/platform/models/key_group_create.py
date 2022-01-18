# justice-platform-service (4.1.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class KeyGroupCreate(Model):
    """A DTO object for creating KeyGroup API call. (KeyGroupCreate)

    Properties:
        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        status: (status) OPTIONAL str

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    name: str                                                                                      # REQUIRED
    description: str                                                                               # OPTIONAL
    status: str                                                                                    # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> KeyGroupCreate:
        self.name = value
        return self

    def with_description(self, value: str) -> KeyGroupCreate:
        self.description = value
        return self

    def with_status(self, value: str) -> KeyGroupCreate:
        self.status = value
        return self

    def with_tags(self, value: List[str]) -> KeyGroupCreate:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: str,
        description: Optional[str] = None,
        status: Optional[str] = None,
        tags: Optional[List[str]] = None,
    ) -> KeyGroupCreate:
        instance = cls()
        instance.name = name
        if description is not None:
            instance.description = description
        if status is not None:
            instance.status = status
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> KeyGroupCreate:
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
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "name": "name",
            "description": "description",
            "status": "status",
            "tags": "tags",
        }

    # endregion static methods
