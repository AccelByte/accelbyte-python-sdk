# Justice Matchmaking Service (2.12.0)

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


class ModelsMatchingRule(Model):
    """Models matching rule (models.MatchingRule)

    Properties:
        attribute: (attribute) REQUIRED str

        criteria: (criteria) REQUIRED str

        reference: (reference) REQUIRED float
    """

    # region fields

    attribute: str                                                                                 # REQUIRED
    criteria: str                                                                                  # REQUIRED
    reference: float                                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attribute(self, value: str) -> ModelsMatchingRule:
        self.attribute = value
        return self

    def with_criteria(self, value: str) -> ModelsMatchingRule:
        self.criteria = value
        return self

    def with_reference(self, value: float) -> ModelsMatchingRule:
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
        reference: float,
    ) -> ModelsMatchingRule:
        instance = cls()
        instance.attribute = attribute
        instance.criteria = criteria
        instance.reference = reference
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsMatchingRule:
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
            "reference": "reference",
        }

    # endregion static methods
