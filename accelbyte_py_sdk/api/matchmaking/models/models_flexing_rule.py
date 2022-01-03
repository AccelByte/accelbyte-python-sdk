# Justice Matchmaking Service (2.12.1)

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


class ModelsFlexingRule(Model):
    """Models flexing rule (models.FlexingRule)

    Properties:
        attribute: (attribute) REQUIRED str

        criteria: (criteria) REQUIRED str

        duration: (duration) REQUIRED int

        reference: (reference) REQUIRED float
    """

    # region fields

    attribute: str                                                                                 # REQUIRED
    criteria: str                                                                                  # REQUIRED
    duration: int                                                                                  # REQUIRED
    reference: float                                                                               # REQUIRED

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
            result["attribute"] = str()
        if hasattr(self, "criteria"):
            result["criteria"] = str(self.criteria)
        elif include_empty:
            result["criteria"] = str()
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = int()
        if hasattr(self, "reference"):
            result["reference"] = float(self.reference)
        elif include_empty:
            result["reference"] = float()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsFlexingRule:
        instance = cls()
        if not dict_:
            return instance
        if "attribute" in dict_ and dict_["attribute"] is not None:
            instance.attribute = str(dict_["attribute"])
        elif include_empty:
            instance.attribute = str()
        if "criteria" in dict_ and dict_["criteria"] is not None:
            instance.criteria = str(dict_["criteria"])
        elif include_empty:
            instance.criteria = str()
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = int()
        if "reference" in dict_ and dict_["reference"] is not None:
            instance.reference = float(dict_["reference"])
        elif include_empty:
            instance.reference = float()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "attribute": "attribute",
            "criteria": "criteria",
            "duration": "duration",
            "reference": "reference",
        }

    # endregion static methods
