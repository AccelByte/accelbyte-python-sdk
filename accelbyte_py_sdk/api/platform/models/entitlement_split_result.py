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

from ..models.entitlement_info import EntitlementInfo


class EntitlementSplitResult(Model):
    """Entitlement split result (EntitlementSplitResult)

    Properties:
        source: (source) OPTIONAL EntitlementInfo

        target: (target) OPTIONAL EntitlementInfo
    """

    # region fields

    source: EntitlementInfo  # OPTIONAL
    target: EntitlementInfo  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_source(self, value: EntitlementInfo) -> EntitlementSplitResult:
        self.source = value
        return self

    def with_target(self, value: EntitlementInfo) -> EntitlementSplitResult:
        self.target = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "source"):
            result["source"] = self.source.to_dict(include_empty=include_empty)
        elif include_empty:
            result["source"] = EntitlementInfo()
        if hasattr(self, "target"):
            result["target"] = self.target.to_dict(include_empty=include_empty)
        elif include_empty:
            result["target"] = EntitlementInfo()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        source: Optional[EntitlementInfo] = None,
        target: Optional[EntitlementInfo] = None,
        **kwargs,
    ) -> EntitlementSplitResult:
        instance = cls()
        if source is not None:
            instance.source = source
        if target is not None:
            instance.target = target
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementSplitResult:
        instance = cls()
        if not dict_:
            return instance
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = EntitlementInfo.create_from_dict(
                dict_["source"], include_empty=include_empty
            )
        elif include_empty:
            instance.source = EntitlementInfo()
        if "target" in dict_ and dict_["target"] is not None:
            instance.target = EntitlementInfo.create_from_dict(
                dict_["target"], include_empty=include_empty
            )
        elif include_empty:
            instance.target = EntitlementInfo()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementSplitResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementSplitResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementSplitResult,
        List[EntitlementSplitResult],
        Dict[Any, EntitlementSplitResult],
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
            "source": "source",
            "target": "target",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "source": False,
            "target": False,
        }

    # endregion static methods
