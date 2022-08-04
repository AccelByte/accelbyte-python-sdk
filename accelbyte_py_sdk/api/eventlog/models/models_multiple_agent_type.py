# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Event Log Service ()

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

from ..models.models_agent_type import ModelsAgentType


class ModelsMultipleAgentType(Model):
    """Models multiple agent type (models.MultipleAgentType)

    Properties:
        agent_types: (AgentTypes) REQUIRED List[ModelsAgentType]
    """

    # region fields

    agent_types: List[ModelsAgentType]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_agent_types(self, value: List[ModelsAgentType]) -> ModelsMultipleAgentType:
        self.agent_types = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "agent_types"):
            result["AgentTypes"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.agent_types
            ]
        elif include_empty:
            result["AgentTypes"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        agent_types: List[ModelsAgentType],
    ) -> ModelsMultipleAgentType:
        instance = cls()
        instance.agent_types = agent_types
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMultipleAgentType:
        instance = cls()
        if not dict_:
            return instance
        if "AgentTypes" in dict_ and dict_["AgentTypes"] is not None:
            instance.agent_types = [
                ModelsAgentType.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["AgentTypes"]
            ]
        elif include_empty:
            instance.agent_types = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMultipleAgentType]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMultipleAgentType]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMultipleAgentType,
        List[ModelsMultipleAgentType],
        Dict[Any, ModelsMultipleAgentType],
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
            "AgentTypes": "agent_types",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AgentTypes": True,
        }

    # endregion static methods
