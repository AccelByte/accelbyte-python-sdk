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


class ModelsFlexingRule(Model):
    """Models flexing rule (models.FlexingRule)

    Properties:
        attribute: (attribute) REQUIRED str

        criteria: (criteria) REQUIRED str

        duration: (duration) REQUIRED int

        reference: (reference) REQUIRED float
    """

    # region fields

    attribute: str  # REQUIRED
    criteria: str  # REQUIRED
    duration: int  # REQUIRED
    reference: float  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attribute(self, value: str) -> ModelsFlexingRule:
        self.attribute = value
        return self

    def with_criteria(self, value: str) -> ModelsFlexingRule:
        self.criteria = value
        return self

    def with_duration(self, value: int) -> ModelsFlexingRule:
        self.duration = value
        return self

    def with_reference(self, value: float) -> ModelsFlexingRule:
        self.reference = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attribute"):
            result["attribute"] = str(self.attribute)
        elif include_empty:
            result["attribute"] = ""
        if hasattr(self, "criteria"):
            result["criteria"] = str(self.criteria)
        elif include_empty:
            result["criteria"] = ""
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = 0
        if hasattr(self, "reference"):
            result["reference"] = float(self.reference)
        elif include_empty:
            result["reference"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attribute: str,
        criteria: str,
        duration: int,
        reference: float,
    ) -> ModelsFlexingRule:
        instance = cls()
        instance.attribute = attribute
        instance.criteria = criteria
        instance.duration = duration
        instance.reference = reference
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsFlexingRule:
        instance = cls()
        if not dict_:
            return instance
        if "attribute" in dict_ and dict_["attribute"] is not None:
            instance.attribute = str(dict_["attribute"])
        elif include_empty:
            instance.attribute = ""
        if "criteria" in dict_ and dict_["criteria"] is not None:
            instance.criteria = str(dict_["criteria"])
        elif include_empty:
            instance.criteria = ""
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = 0
        if "reference" in dict_ and dict_["reference"] is not None:
            instance.reference = float(dict_["reference"])
        elif include_empty:
            instance.reference = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsFlexingRule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsFlexingRule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsFlexingRule, List[ModelsFlexingRule], Dict[Any, ModelsFlexingRule]
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
            "attribute": "attribute",
            "criteria": "criteria",
            "duration": "duration",
            "reference": "reference",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attribute": True,
            "criteria": True,
            "duration": True,
            "reference": True,
        }

    # endregion static methods
