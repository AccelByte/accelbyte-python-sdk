# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Achievement Service

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


class ModelsBatchQueryUserAchievementRequest(Model):
    """Models batch query user achievement request (models.BatchQueryUserAchievementRequest)

    Properties:
        codes: (codes) REQUIRED List[str]

        status: (status) REQUIRED int
    """

    # region fields

    codes: List[str]  # REQUIRED
    status: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_codes(self, value: List[str]) -> ModelsBatchQueryUserAchievementRequest:
        self.codes = value
        return self

    def with_status(self, value: int) -> ModelsBatchQueryUserAchievementRequest:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "codes"):
            result["codes"] = [str(i0) for i0 in self.codes]
        elif include_empty:
            result["codes"] = []
        if hasattr(self, "status"):
            result["status"] = int(self.status)
        elif include_empty:
            result["status"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, codes: List[str], status: int, **kwargs
    ) -> ModelsBatchQueryUserAchievementRequest:
        instance = cls()
        instance.codes = codes
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBatchQueryUserAchievementRequest:
        instance = cls()
        if not dict_:
            return instance
        if "codes" in dict_ and dict_["codes"] is not None:
            instance.codes = [str(i0) for i0 in dict_["codes"]]
        elif include_empty:
            instance.codes = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = int(dict_["status"])
        elif include_empty:
            instance.status = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBatchQueryUserAchievementRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBatchQueryUserAchievementRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBatchQueryUserAchievementRequest,
        List[ModelsBatchQueryUserAchievementRequest],
        Dict[Any, ModelsBatchQueryUserAchievementRequest],
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
            "codes": "codes",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "codes": True,
            "status": True,
        }

    # endregion static methods
