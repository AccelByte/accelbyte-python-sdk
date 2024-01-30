# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class EntitlementPrechekResult(Model):
    """Entitlement prechek result (EntitlementPrechekResult)

    Properties:
        is_revoke_possible: (isRevokePossible) OPTIONAL bool
    """

    # region fields

    is_revoke_possible: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_is_revoke_possible(self, value: bool) -> EntitlementPrechekResult:
        self.is_revoke_possible = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_revoke_possible"):
            result["isRevokePossible"] = bool(self.is_revoke_possible)
        elif include_empty:
            result["isRevokePossible"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, is_revoke_possible: Optional[bool] = None, **kwargs
    ) -> EntitlementPrechekResult:
        instance = cls()
        if is_revoke_possible is not None:
            instance.is_revoke_possible = is_revoke_possible
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementPrechekResult:
        instance = cls()
        if not dict_:
            return instance
        if "isRevokePossible" in dict_ and dict_["isRevokePossible"] is not None:
            instance.is_revoke_possible = bool(dict_["isRevokePossible"])
        elif include_empty:
            instance.is_revoke_possible = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementPrechekResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementPrechekResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementPrechekResult,
        List[EntitlementPrechekResult],
        Dict[Any, EntitlementPrechekResult],
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
            "isRevokePossible": "is_revoke_possible",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isRevokePossible": False,
        }

    # endregion static methods
