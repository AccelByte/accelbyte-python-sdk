# Auto-generated at 2021-09-27T17:12:29.752862+08:00
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

from ..models.models_deployment_config import ModelsDeploymentConfig


class ModelsOverrideConfig(Model):
    """Models override config

    Properties:
        allow_version_override: (allow_version_override) REQUIRED bool

        overrides: (overrides) REQUIRED Dict[str, ModelsDeploymentConfig]
    """

    # region fields

    allow_version_override: bool                                                                   # REQUIRED
    overrides: Dict[str, ModelsDeploymentConfig]                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allow_version_override(self, value: bool) -> ModelsOverrideConfig:
        self.allow_version_override = value
        return self

    def with_overrides(self, value: Dict[str, ModelsDeploymentConfig]) -> ModelsOverrideConfig:
        self.overrides = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "allow_version_override") and self.allow_version_override:
            result["allow_version_override"] = bool(self.allow_version_override)
        elif include_empty:
            result["allow_version_override"] = bool()
        if hasattr(self, "overrides") and self.overrides:
            result["overrides"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.overrides.items()}
        elif include_empty:
            result["overrides"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allow_version_override: bool,
        overrides: Dict[str, ModelsDeploymentConfig],
    ) -> ModelsOverrideConfig:
        instance = cls()
        instance.allow_version_override = allow_version_override
        instance.overrides = overrides
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsOverrideConfig:
        instance = cls()
        if not dict_:
            return instance
        if "allow_version_override" in dict_ and dict_["allow_version_override"] is not None:
            instance.allow_version_override = bool(dict_["allow_version_override"])
        elif include_empty:
            instance.allow_version_override = bool()
        if "overrides" in dict_ and dict_["overrides"] is not None:
            instance.overrides = {str(k0): ModelsDeploymentConfig.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["overrides"].items()}
        elif include_empty:
            instance.overrides = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "allow_version_override": "allow_version_override",
            "overrides": "overrides",
        }

    # endregion static methods
