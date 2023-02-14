# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.20.2)

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


class ModelsUpdatePlayTimeWeightRequest(Model):
    """Models update play time weight request (models.UpdatePlayTimeWeightRequest)

    Properties:
        playtime: (playtime) REQUIRED int

        user_id: (userID) REQUIRED str

        weight: (weight) REQUIRED float
    """

    # region fields

    playtime: int  # REQUIRED
    user_id: str  # REQUIRED
    weight: float  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_playtime(self, value: int) -> ModelsUpdatePlayTimeWeightRequest:
        self.playtime = value
        return self

    def with_user_id(self, value: str) -> ModelsUpdatePlayTimeWeightRequest:
        self.user_id = value
        return self

    def with_weight(self, value: float) -> ModelsUpdatePlayTimeWeightRequest:
        self.weight = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "playtime"):
            result["playtime"] = int(self.playtime)
        elif include_empty:
            result["playtime"] = 0
        if hasattr(self, "user_id"):
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = ""
        if hasattr(self, "weight"):
            result["weight"] = float(self.weight)
        elif include_empty:
            result["weight"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        playtime: int,
        user_id: str,
        weight: float,
    ) -> ModelsUpdatePlayTimeWeightRequest:
        instance = cls()
        instance.playtime = playtime
        instance.user_id = user_id
        instance.weight = weight
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdatePlayTimeWeightRequest:
        instance = cls()
        if not dict_:
            return instance
        if "playtime" in dict_ and dict_["playtime"] is not None:
            instance.playtime = int(dict_["playtime"])
        elif include_empty:
            instance.playtime = 0
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = ""
        if "weight" in dict_ and dict_["weight"] is not None:
            instance.weight = float(dict_["weight"])
        elif include_empty:
            instance.weight = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdatePlayTimeWeightRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdatePlayTimeWeightRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdatePlayTimeWeightRequest,
        List[ModelsUpdatePlayTimeWeightRequest],
        Dict[Any, ModelsUpdatePlayTimeWeightRequest],
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
            "playtime": "playtime",
            "userID": "user_id",
            "weight": "weight",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "playtime": True,
            "userID": True,
            "weight": True,
        }

    # endregion static methods
