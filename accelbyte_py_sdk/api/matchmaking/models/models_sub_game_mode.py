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

from ..models.models_alliance_flexing_rule import ModelsAllianceFlexingRule
from ..models.models_alliance_rule import ModelsAllianceRule


class ModelsSubGameMode(Model):
    """Models sub game mode (models.SubGameMode)

    Properties:
        alliance: (alliance) REQUIRED ModelsAllianceRule

        alliance_flexing_rule: (alliance_flexing_rule) REQUIRED List[ModelsAllianceFlexingRule]

        name: (name) REQUIRED str
    """

    # region fields

    alliance: ModelsAllianceRule  # REQUIRED
    alliance_flexing_rule: List[ModelsAllianceFlexingRule]  # REQUIRED
    name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_alliance(self, value: ModelsAllianceRule) -> ModelsSubGameMode:
        self.alliance = value
        return self

    def with_alliance_flexing_rule(
        self, value: List[ModelsAllianceFlexingRule]
    ) -> ModelsSubGameMode:
        self.alliance_flexing_rule = value
        return self

    def with_name(self, value: str) -> ModelsSubGameMode:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alliance"):
            result["alliance"] = self.alliance.to_dict(include_empty=include_empty)
        elif include_empty:
            result["alliance"] = ModelsAllianceRule()
        if hasattr(self, "alliance_flexing_rule"):
            result["alliance_flexing_rule"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.alliance_flexing_rule
            ]
        elif include_empty:
            result["alliance_flexing_rule"] = []
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
        alliance: ModelsAllianceRule,
        alliance_flexing_rule: List[ModelsAllianceFlexingRule],
        name: str,
    ) -> ModelsSubGameMode:
        instance = cls()
        instance.alliance = alliance
        instance.alliance_flexing_rule = alliance_flexing_rule
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSubGameMode:
        instance = cls()
        if not dict_:
            return instance
        if "alliance" in dict_ and dict_["alliance"] is not None:
            instance.alliance = ModelsAllianceRule.create_from_dict(
                dict_["alliance"], include_empty=include_empty
            )
        elif include_empty:
            instance.alliance = ModelsAllianceRule()
        if (
            "alliance_flexing_rule" in dict_
            and dict_["alliance_flexing_rule"] is not None
        ):
            instance.alliance_flexing_rule = [
                ModelsAllianceFlexingRule.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["alliance_flexing_rule"]
            ]
        elif include_empty:
            instance.alliance_flexing_rule = []
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSubGameMode]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSubGameMode]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsSubGameMode, List[ModelsSubGameMode], Dict[Any, ModelsSubGameMode]
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
            "alliance": "alliance",
            "alliance_flexing_rule": "alliance_flexing_rule",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alliance": True,
            "alliance_flexing_rule": True,
            "name": True,
        }

    # endregion static methods
