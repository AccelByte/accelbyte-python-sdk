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
from ....core import StrEnum

from ..models.module_reference import ModuleReference


class FeatureEnum(StrEnum):
    CAMPAIGN = "CAMPAIGN"
    CATALOG = "CATALOG"
    DLC = "DLC"
    ENTITLEMENT = "ENTITLEMENT"
    IAP = "IAP"
    REWARD = "REWARD"


class FeatureReference(Model):
    """Feature reference (FeatureReference)

    Properties:
        feature: (feature) OPTIONAL Union[str, FeatureEnum]

        references: (references) OPTIONAL List[ModuleReference]
    """

    # region fields

    feature: Union[str, FeatureEnum]  # OPTIONAL
    references: List[ModuleReference]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_feature(self, value: Union[str, FeatureEnum]) -> FeatureReference:
        self.feature = value
        return self

    def with_references(self, value: List[ModuleReference]) -> FeatureReference:
        self.references = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "feature"):
            result["feature"] = str(self.feature)
        elif include_empty:
            result["feature"] = Union[str, FeatureEnum]()
        if hasattr(self, "references"):
            result["references"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.references
            ]
        elif include_empty:
            result["references"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        feature: Optional[Union[str, FeatureEnum]] = None,
        references: Optional[List[ModuleReference]] = None,
        **kwargs,
    ) -> FeatureReference:
        instance = cls()
        if feature is not None:
            instance.feature = feature
        if references is not None:
            instance.references = references
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FeatureReference:
        instance = cls()
        if not dict_:
            return instance
        if "feature" in dict_ and dict_["feature"] is not None:
            instance.feature = str(dict_["feature"])
        elif include_empty:
            instance.feature = Union[str, FeatureEnum]()
        if "references" in dict_ and dict_["references"] is not None:
            instance.references = [
                ModuleReference.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["references"]
            ]
        elif include_empty:
            instance.references = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FeatureReference]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FeatureReference]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[FeatureReference, List[FeatureReference], Dict[Any, FeatureReference]]:
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
            "feature": "feature",
            "references": "references",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "feature": False,
            "references": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "feature": ["CAMPAIGN", "CATALOG", "DLC", "ENTITLEMENT", "IAP", "REWARD"],
        }

    # endregion static methods
