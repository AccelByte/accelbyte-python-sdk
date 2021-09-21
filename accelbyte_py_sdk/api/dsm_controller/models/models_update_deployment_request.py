# Auto-generated at 2021-09-21T14:10:33.126980+08:00
# from: Justice DsmController Service (2.4.0)

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


class ModelsUpdateDeploymentRequest(Model):
    """Models update deployment request

    Properties:
        configuration: (configuration) REQUIRED str

        game_version: (game_version) REQUIRED str

        regions: (regions) REQUIRED List[str]
    """

    # region fields

    configuration: str                                                                             # REQUIRED
    game_version: str                                                                              # REQUIRED
    regions: List[str]                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_configuration(self, value: str) -> ModelsUpdateDeploymentRequest:
        self.configuration = value
        return self

    def with_game_version(self, value: str) -> ModelsUpdateDeploymentRequest:
        self.game_version = value
        return self

    def with_regions(self, value: List[str]) -> ModelsUpdateDeploymentRequest:
        self.regions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "configuration") and self.configuration:
            result["configuration"] = str(self.configuration)
        elif include_empty:
            result["configuration"] = str()
        if hasattr(self, "game_version") and self.game_version:
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = str()
        if hasattr(self, "regions") and self.regions:
            result["regions"] = [str(i0) for i0 in self.regions]
        elif include_empty:
            result["regions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        configuration: str,
        game_version: str,
        regions: List[str],
    ) -> ModelsUpdateDeploymentRequest:
        instance = cls()
        instance.configuration = configuration
        instance.game_version = game_version
        instance.regions = regions
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUpdateDeploymentRequest:
        instance = cls()
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = str(dict_["configuration"])
        elif include_empty:
            instance.configuration = str()
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = str()
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [str(i0) for i0 in dict_["regions"]]
        elif include_empty:
            instance.regions = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "configuration": "configuration",
            "game_version": "game_version",
            "regions": "regions",
        }

    # endregion static methods
