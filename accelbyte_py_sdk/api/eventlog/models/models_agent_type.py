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


class ModelsAgentType(Model):
    """Models agent type (models.AgentType)

    Properties:
        agent_type: (AgentType) REQUIRED int

        description: (Description) REQUIRED str
    """

    # region fields

    agent_type: int  # REQUIRED
    description: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_agent_type(self, value: int) -> ModelsAgentType:
        self.agent_type = value
        return self

    def with_description(self, value: str) -> ModelsAgentType:
        self.description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "agent_type"):
            result["AgentType"] = int(self.agent_type)
        elif include_empty:
            result["AgentType"] = 0
        if hasattr(self, "description"):
            result["Description"] = str(self.description)
        elif include_empty:
            result["Description"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        agent_type: int,
        description: str,
    ) -> ModelsAgentType:
        instance = cls()
        instance.agent_type = agent_type
        instance.description = description
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAgentType:
        instance = cls()
        if not dict_:
            return instance
        if "AgentType" in dict_ and dict_["AgentType"] is not None:
            instance.agent_type = int(dict_["AgentType"])
        elif include_empty:
            instance.agent_type = 0
        if "Description" in dict_ and dict_["Description"] is not None:
            instance.description = str(dict_["Description"])
        elif include_empty:
            instance.description = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAgentType]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAgentType]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsAgentType, List[ModelsAgentType], Dict[Any, ModelsAgentType]]:
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
            "AgentType": "agent_type",
            "Description": "description",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AgentType": True,
            "Description": True,
        }

    # endregion static methods
