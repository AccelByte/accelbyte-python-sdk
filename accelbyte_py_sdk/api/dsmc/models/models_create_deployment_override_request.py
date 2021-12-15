# justice-dsm-controller-service (2.10.0)

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

from ..models.models_pod_count_config_override import ModelsPodCountConfigOverride


class ModelsCreateDeploymentOverrideRequest(Model):
    """Models create deployment override request (models.CreateDeploymentOverrideRequest)

    Properties:
        buffer_count: (buffer_count) REQUIRED int

        buffer_percent: (buffer_percent) REQUIRED int

        configuration: (configuration) REQUIRED str

        enable_region_overrides: (enable_region_overrides) REQUIRED bool

        game_version: (game_version) REQUIRED str

        max_count: (max_count) REQUIRED int

        min_count: (min_count) REQUIRED int

        region_overrides: (region_overrides) REQUIRED Dict[str, ModelsPodCountConfigOverride]

        regions: (regions) REQUIRED List[str]

        use_buffer_percent: (use_buffer_percent) REQUIRED bool
    """

    # region fields

    buffer_count: int                                                                              # REQUIRED
    buffer_percent: int                                                                            # REQUIRED
    configuration: str                                                                             # REQUIRED
    enable_region_overrides: bool                                                                  # REQUIRED
    game_version: str                                                                              # REQUIRED
    max_count: int                                                                                 # REQUIRED
    min_count: int                                                                                 # REQUIRED
    region_overrides: Dict[str, ModelsPodCountConfigOverride]                                      # REQUIRED
    regions: List[str]                                                                             # REQUIRED
    use_buffer_percent: bool                                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_buffer_count(self, value: int) -> ModelsCreateDeploymentOverrideRequest:
        self.buffer_count = value
        return self

    def with_buffer_percent(self, value: int) -> ModelsCreateDeploymentOverrideRequest:
        self.buffer_percent = value
        return self

    def with_configuration(self, value: str) -> ModelsCreateDeploymentOverrideRequest:
        self.configuration = value
        return self

    def with_enable_region_overrides(self, value: bool) -> ModelsCreateDeploymentOverrideRequest:
        self.enable_region_overrides = value
        return self

    def with_game_version(self, value: str) -> ModelsCreateDeploymentOverrideRequest:
        self.game_version = value
        return self

    def with_max_count(self, value: int) -> ModelsCreateDeploymentOverrideRequest:
        self.max_count = value
        return self

    def with_min_count(self, value: int) -> ModelsCreateDeploymentOverrideRequest:
        self.min_count = value
        return self

    def with_region_overrides(self, value: Dict[str, ModelsPodCountConfigOverride]) -> ModelsCreateDeploymentOverrideRequest:
        self.region_overrides = value
        return self

    def with_regions(self, value: List[str]) -> ModelsCreateDeploymentOverrideRequest:
        self.regions = value
        return self

    def with_use_buffer_percent(self, value: bool) -> ModelsCreateDeploymentOverrideRequest:
        self.use_buffer_percent = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "buffer_count"):
            result["buffer_count"] = int(self.buffer_count)
        elif include_empty:
            result["buffer_count"] = int()
        if hasattr(self, "buffer_percent"):
            result["buffer_percent"] = int(self.buffer_percent)
        elif include_empty:
            result["buffer_percent"] = int()
        if hasattr(self, "configuration"):
            result["configuration"] = str(self.configuration)
        elif include_empty:
            result["configuration"] = str()
        if hasattr(self, "enable_region_overrides"):
            result["enable_region_overrides"] = bool(self.enable_region_overrides)
        elif include_empty:
            result["enable_region_overrides"] = bool()
        if hasattr(self, "game_version"):
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = str()
        if hasattr(self, "max_count"):
            result["max_count"] = int(self.max_count)
        elif include_empty:
            result["max_count"] = int()
        if hasattr(self, "min_count"):
            result["min_count"] = int(self.min_count)
        elif include_empty:
            result["min_count"] = int()
        if hasattr(self, "region_overrides"):
            result["region_overrides"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.region_overrides.items()}
        elif include_empty:
            result["region_overrides"] = {}
        if hasattr(self, "regions"):
            result["regions"] = [str(i0) for i0 in self.regions]
        elif include_empty:
            result["regions"] = []
        if hasattr(self, "use_buffer_percent"):
            result["use_buffer_percent"] = bool(self.use_buffer_percent)
        elif include_empty:
            result["use_buffer_percent"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        buffer_count: int,
        buffer_percent: int,
        configuration: str,
        enable_region_overrides: bool,
        game_version: str,
        max_count: int,
        min_count: int,
        region_overrides: Dict[str, ModelsPodCountConfigOverride],
        regions: List[str],
        use_buffer_percent: bool,
    ) -> ModelsCreateDeploymentOverrideRequest:
        instance = cls()
        instance.buffer_count = buffer_count
        instance.buffer_percent = buffer_percent
        instance.configuration = configuration
        instance.enable_region_overrides = enable_region_overrides
        instance.game_version = game_version
        instance.max_count = max_count
        instance.min_count = min_count
        instance.region_overrides = region_overrides
        instance.regions = regions
        instance.use_buffer_percent = use_buffer_percent
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateDeploymentOverrideRequest:
        instance = cls()
        if not dict_:
            return instance
        if "buffer_count" in dict_ and dict_["buffer_count"] is not None:
            instance.buffer_count = int(dict_["buffer_count"])
        elif include_empty:
            instance.buffer_count = int()
        if "buffer_percent" in dict_ and dict_["buffer_percent"] is not None:
            instance.buffer_percent = int(dict_["buffer_percent"])
        elif include_empty:
            instance.buffer_percent = int()
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = str(dict_["configuration"])
        elif include_empty:
            instance.configuration = str()
        if "enable_region_overrides" in dict_ and dict_["enable_region_overrides"] is not None:
            instance.enable_region_overrides = bool(dict_["enable_region_overrides"])
        elif include_empty:
            instance.enable_region_overrides = bool()
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = str()
        if "max_count" in dict_ and dict_["max_count"] is not None:
            instance.max_count = int(dict_["max_count"])
        elif include_empty:
            instance.max_count = int()
        if "min_count" in dict_ and dict_["min_count"] is not None:
            instance.min_count = int(dict_["min_count"])
        elif include_empty:
            instance.min_count = int()
        if "region_overrides" in dict_ and dict_["region_overrides"] is not None:
            instance.region_overrides = {str(k0): ModelsPodCountConfigOverride.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["region_overrides"].items()}
        elif include_empty:
            instance.region_overrides = {}
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [str(i0) for i0 in dict_["regions"]]
        elif include_empty:
            instance.regions = []
        if "use_buffer_percent" in dict_ and dict_["use_buffer_percent"] is not None:
            instance.use_buffer_percent = bool(dict_["use_buffer_percent"])
        elif include_empty:
            instance.use_buffer_percent = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "buffer_count": "buffer_count",
            "buffer_percent": "buffer_percent",
            "configuration": "configuration",
            "enable_region_overrides": "enable_region_overrides",
            "game_version": "game_version",
            "max_count": "max_count",
            "min_count": "min_count",
            "region_overrides": "region_overrides",
            "regions": "regions",
            "use_buffer_percent": "use_buffer_percent",
        }

    # endregion static methods
