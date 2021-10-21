# justice-social-service (1.18.1)

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


class Attribute(Model):
    """Attribute (Attribute)

    Properties:
        name: (name) OPTIONAL str

        value: (value) OPTIONAL str
    """

    # region fields

    name: str                                                                                      # OPTIONAL
    value: str                                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> Attribute:
        self.name = value
        return self

    def with_value(self, value: str) -> Attribute:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "value") and self.value:
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: Optional[str] = None,
        value: Optional[str] = None,
    ) -> Attribute:
        instance = cls()
        if name is not None:
            instance.name = name
        if value is not None:
            instance.value = value
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Attribute:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "name": "name",
            "value": "value",
        }

    # endregion static methods
