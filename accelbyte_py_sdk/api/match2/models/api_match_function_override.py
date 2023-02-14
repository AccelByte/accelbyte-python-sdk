# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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


class ApiMatchFunctionOverride(Model):
    """Api match function override (api.MatchFunctionOverride)

    Properties:
        backfill_matches: (backfill_matches) OPTIONAL str

        hydration: (hydration) OPTIONAL List[str]

        make_matches: (make_matches) OPTIONAL str

        stat_codes: (stat_codes) OPTIONAL List[str]

        validation: (validation) OPTIONAL List[str]
    """

    # region fields

    backfill_matches: str  # OPTIONAL
    hydration: List[str]  # OPTIONAL
    make_matches: str  # OPTIONAL
    stat_codes: List[str]  # OPTIONAL
    validation: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_backfill_matches(self, value: str) -> ApiMatchFunctionOverride:
        self.backfill_matches = value
        return self

    def with_hydration(self, value: List[str]) -> ApiMatchFunctionOverride:
        self.hydration = value
        return self

    def with_make_matches(self, value: str) -> ApiMatchFunctionOverride:
        self.make_matches = value
        return self

    def with_stat_codes(self, value: List[str]) -> ApiMatchFunctionOverride:
        self.stat_codes = value
        return self

    def with_validation(self, value: List[str]) -> ApiMatchFunctionOverride:
        self.validation = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill_matches"):
            result["backfill_matches"] = str(self.backfill_matches)
        elif include_empty:
            result["backfill_matches"] = ""
        if hasattr(self, "hydration"):
            result["hydration"] = [str(i0) for i0 in self.hydration]
        elif include_empty:
            result["hydration"] = []
        if hasattr(self, "make_matches"):
            result["make_matches"] = str(self.make_matches)
        elif include_empty:
            result["make_matches"] = ""
        if hasattr(self, "stat_codes"):
            result["stat_codes"] = [str(i0) for i0 in self.stat_codes]
        elif include_empty:
            result["stat_codes"] = []
        if hasattr(self, "validation"):
            result["validation"] = [str(i0) for i0 in self.validation]
        elif include_empty:
            result["validation"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill_matches: Optional[str] = None,
        hydration: Optional[List[str]] = None,
        make_matches: Optional[str] = None,
        stat_codes: Optional[List[str]] = None,
        validation: Optional[List[str]] = None,
    ) -> ApiMatchFunctionOverride:
        instance = cls()
        if backfill_matches is not None:
            instance.backfill_matches = backfill_matches
        if hydration is not None:
            instance.hydration = hydration
        if make_matches is not None:
            instance.make_matches = make_matches
        if stat_codes is not None:
            instance.stat_codes = stat_codes
        if validation is not None:
            instance.validation = validation
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiMatchFunctionOverride:
        instance = cls()
        if not dict_:
            return instance
        if "backfill_matches" in dict_ and dict_["backfill_matches"] is not None:
            instance.backfill_matches = str(dict_["backfill_matches"])
        elif include_empty:
            instance.backfill_matches = ""
        if "hydration" in dict_ and dict_["hydration"] is not None:
            instance.hydration = [str(i0) for i0 in dict_["hydration"]]
        elif include_empty:
            instance.hydration = []
        if "make_matches" in dict_ and dict_["make_matches"] is not None:
            instance.make_matches = str(dict_["make_matches"])
        elif include_empty:
            instance.make_matches = ""
        if "stat_codes" in dict_ and dict_["stat_codes"] is not None:
            instance.stat_codes = [str(i0) for i0 in dict_["stat_codes"]]
        elif include_empty:
            instance.stat_codes = []
        if "validation" in dict_ and dict_["validation"] is not None:
            instance.validation = [str(i0) for i0 in dict_["validation"]]
        elif include_empty:
            instance.validation = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiMatchFunctionOverride]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiMatchFunctionOverride]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiMatchFunctionOverride,
        List[ApiMatchFunctionOverride],
        Dict[Any, ApiMatchFunctionOverride],
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
            "backfill_matches": "backfill_matches",
            "hydration": "hydration",
            "make_matches": "make_matches",
            "stat_codes": "stat_codes",
            "validation": "validation",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "backfill_matches": False,
            "hydration": False,
            "make_matches": False,
            "stat_codes": False,
            "validation": False,
        }

    # endregion static methods
