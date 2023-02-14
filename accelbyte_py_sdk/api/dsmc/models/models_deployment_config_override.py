# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

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


class ModelsDeploymentConfigOverride(Model):
    """Models deployment config override (models.DeploymentConfigOverride)

    Properties:
        buffer_count: (buffer_count) REQUIRED int

        buffer_percent: (buffer_percent) REQUIRED int

        configuration: (configuration) REQUIRED str

        enable_region_overrides: (enable_region_overrides) REQUIRED bool

        game_version: (game_version) REQUIRED str

        max_count: (max_count) REQUIRED int

        min_count: (min_count) REQUIRED int

        name: (name) REQUIRED str

        region_overrides: (region_overrides) REQUIRED Dict[str, ModelsPodCountConfigOverride]

        regions: (regions) REQUIRED List[str]

        unlimited: (unlimited) REQUIRED bool

        use_buffer_percent: (use_buffer_percent) REQUIRED bool

        session_timeout: (session_timeout) OPTIONAL int
    """

    # region fields

    buffer_count: int  # REQUIRED
    buffer_percent: int  # REQUIRED
    configuration: str  # REQUIRED
    enable_region_overrides: bool  # REQUIRED
    game_version: str  # REQUIRED
    max_count: int  # REQUIRED
    min_count: int  # REQUIRED
    name: str  # REQUIRED
    region_overrides: Dict[str, ModelsPodCountConfigOverride]  # REQUIRED
    regions: List[str]  # REQUIRED
    unlimited: bool  # REQUIRED
    use_buffer_percent: bool  # REQUIRED
    session_timeout: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_buffer_count(self, value: int) -> ModelsDeploymentConfigOverride:
        self.buffer_count = value
        return self

    def with_buffer_percent(self, value: int) -> ModelsDeploymentConfigOverride:
        self.buffer_percent = value
        return self

    def with_configuration(self, value: str) -> ModelsDeploymentConfigOverride:
        self.configuration = value
        return self

    def with_enable_region_overrides(
        self, value: bool
    ) -> ModelsDeploymentConfigOverride:
        self.enable_region_overrides = value
        return self

    def with_game_version(self, value: str) -> ModelsDeploymentConfigOverride:
        self.game_version = value
        return self

    def with_max_count(self, value: int) -> ModelsDeploymentConfigOverride:
        self.max_count = value
        return self

    def with_min_count(self, value: int) -> ModelsDeploymentConfigOverride:
        self.min_count = value
        return self

    def with_name(self, value: str) -> ModelsDeploymentConfigOverride:
        self.name = value
        return self

    def with_region_overrides(
        self, value: Dict[str, ModelsPodCountConfigOverride]
    ) -> ModelsDeploymentConfigOverride:
        self.region_overrides = value
        return self

    def with_regions(self, value: List[str]) -> ModelsDeploymentConfigOverride:
        self.regions = value
        return self

    def with_unlimited(self, value: bool) -> ModelsDeploymentConfigOverride:
        self.unlimited = value
        return self

    def with_use_buffer_percent(self, value: bool) -> ModelsDeploymentConfigOverride:
        self.use_buffer_percent = value
        return self

    def with_session_timeout(self, value: int) -> ModelsDeploymentConfigOverride:
        self.session_timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "buffer_count"):
            result["buffer_count"] = int(self.buffer_count)
        elif include_empty:
            result["buffer_count"] = 0
        if hasattr(self, "buffer_percent"):
            result["buffer_percent"] = int(self.buffer_percent)
        elif include_empty:
            result["buffer_percent"] = 0
        if hasattr(self, "configuration"):
            result["configuration"] = str(self.configuration)
        elif include_empty:
            result["configuration"] = ""
        if hasattr(self, "enable_region_overrides"):
            result["enable_region_overrides"] = bool(self.enable_region_overrides)
        elif include_empty:
            result["enable_region_overrides"] = False
        if hasattr(self, "game_version"):
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = ""
        if hasattr(self, "max_count"):
            result["max_count"] = int(self.max_count)
        elif include_empty:
            result["max_count"] = 0
        if hasattr(self, "min_count"):
            result["min_count"] = int(self.min_count)
        elif include_empty:
            result["min_count"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "region_overrides"):
            result["region_overrides"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.region_overrides.items()
            }
        elif include_empty:
            result["region_overrides"] = {}
        if hasattr(self, "regions"):
            result["regions"] = [str(i0) for i0 in self.regions]
        elif include_empty:
            result["regions"] = []
        if hasattr(self, "unlimited"):
            result["unlimited"] = bool(self.unlimited)
        elif include_empty:
            result["unlimited"] = False
        if hasattr(self, "use_buffer_percent"):
            result["use_buffer_percent"] = bool(self.use_buffer_percent)
        elif include_empty:
            result["use_buffer_percent"] = False
        if hasattr(self, "session_timeout"):
            result["session_timeout"] = int(self.session_timeout)
        elif include_empty:
            result["session_timeout"] = 0
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
        name: str,
        region_overrides: Dict[str, ModelsPodCountConfigOverride],
        regions: List[str],
        unlimited: bool,
        use_buffer_percent: bool,
        session_timeout: Optional[int] = None,
    ) -> ModelsDeploymentConfigOverride:
        instance = cls()
        instance.buffer_count = buffer_count
        instance.buffer_percent = buffer_percent
        instance.configuration = configuration
        instance.enable_region_overrides = enable_region_overrides
        instance.game_version = game_version
        instance.max_count = max_count
        instance.min_count = min_count
        instance.name = name
        instance.region_overrides = region_overrides
        instance.regions = regions
        instance.unlimited = unlimited
        instance.use_buffer_percent = use_buffer_percent
        if session_timeout is not None:
            instance.session_timeout = session_timeout
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDeploymentConfigOverride:
        instance = cls()
        if not dict_:
            return instance
        if "buffer_count" in dict_ and dict_["buffer_count"] is not None:
            instance.buffer_count = int(dict_["buffer_count"])
        elif include_empty:
            instance.buffer_count = 0
        if "buffer_percent" in dict_ and dict_["buffer_percent"] is not None:
            instance.buffer_percent = int(dict_["buffer_percent"])
        elif include_empty:
            instance.buffer_percent = 0
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = str(dict_["configuration"])
        elif include_empty:
            instance.configuration = ""
        if (
            "enable_region_overrides" in dict_
            and dict_["enable_region_overrides"] is not None
        ):
            instance.enable_region_overrides = bool(dict_["enable_region_overrides"])
        elif include_empty:
            instance.enable_region_overrides = False
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = ""
        if "max_count" in dict_ and dict_["max_count"] is not None:
            instance.max_count = int(dict_["max_count"])
        elif include_empty:
            instance.max_count = 0
        if "min_count" in dict_ and dict_["min_count"] is not None:
            instance.min_count = int(dict_["min_count"])
        elif include_empty:
            instance.min_count = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "region_overrides" in dict_ and dict_["region_overrides"] is not None:
            instance.region_overrides = {
                str(k0): ModelsPodCountConfigOverride.create_from_dict(
                    v0, include_empty=include_empty
                )
                for k0, v0 in dict_["region_overrides"].items()
            }
        elif include_empty:
            instance.region_overrides = {}
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [str(i0) for i0 in dict_["regions"]]
        elif include_empty:
            instance.regions = []
        if "unlimited" in dict_ and dict_["unlimited"] is not None:
            instance.unlimited = bool(dict_["unlimited"])
        elif include_empty:
            instance.unlimited = False
        if "use_buffer_percent" in dict_ and dict_["use_buffer_percent"] is not None:
            instance.use_buffer_percent = bool(dict_["use_buffer_percent"])
        elif include_empty:
            instance.use_buffer_percent = False
        if "session_timeout" in dict_ and dict_["session_timeout"] is not None:
            instance.session_timeout = int(dict_["session_timeout"])
        elif include_empty:
            instance.session_timeout = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDeploymentConfigOverride]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDeploymentConfigOverride]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDeploymentConfigOverride,
        List[ModelsDeploymentConfigOverride],
        Dict[Any, ModelsDeploymentConfigOverride],
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
            "buffer_count": "buffer_count",
            "buffer_percent": "buffer_percent",
            "configuration": "configuration",
            "enable_region_overrides": "enable_region_overrides",
            "game_version": "game_version",
            "max_count": "max_count",
            "min_count": "min_count",
            "name": "name",
            "region_overrides": "region_overrides",
            "regions": "regions",
            "unlimited": "unlimited",
            "use_buffer_percent": "use_buffer_percent",
            "session_timeout": "session_timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "buffer_count": True,
            "buffer_percent": True,
            "configuration": True,
            "enable_region_overrides": True,
            "game_version": True,
            "max_count": True,
            "min_count": True,
            "name": True,
            "region_overrides": True,
            "regions": True,
            "unlimited": True,
            "use_buffer_percent": True,
            "session_timeout": False,
        }

    # endregion static methods
