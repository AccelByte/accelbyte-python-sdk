# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.17.2)

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


class ModelsCombinationAlliances(Model):
    """Models combination alliances (models.Combination.alliances)

    Properties:
        max: (max) REQUIRED int

        min: (min) REQUIRED int

        name: (name) REQUIRED str
    """

    # region fields

    max: int  # REQUIRED
    min: int  # REQUIRED
    name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_max(self, value: int) -> ModelsCombinationAlliances:
        self.max = value
        return self

    def with_min(self, value: int) -> ModelsCombinationAlliances:
        self.min = value
        return self

    def with_name(self, value: str) -> ModelsCombinationAlliances:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max"):
            result["max"] = int(self.max)
        elif include_empty:
            result["max"] = 0
        if hasattr(self, "min"):
            result["min"] = int(self.min)
        elif include_empty:
            result["min"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max: int,
        min: int,
        name: str,
    ) -> ModelsCombinationAlliances:
        instance = cls()
        instance.max = max
        instance.min = min
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCombinationAlliances:
        instance = cls()
        if not dict_:
            return instance
        if "max" in dict_ and dict_["max"] is not None:
            instance.max = int(dict_["max"])
        elif include_empty:
            instance.max = 0
        if "min" in dict_ and dict_["min"] is not None:
            instance.min = int(dict_["min"])
        elif include_empty:
            instance.min = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCombinationAlliances]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCombinationAlliances]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCombinationAlliances,
        List[ModelsCombinationAlliances],
        Dict[Any, ModelsCombinationAlliances],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "max": "max",
            "min": "min",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "max": True,
            "min": True,
            "name": True,
        }

    # endregion static methods
