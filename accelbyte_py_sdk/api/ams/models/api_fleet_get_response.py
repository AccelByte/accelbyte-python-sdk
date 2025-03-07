# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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

from ..models.api_ds_host_configuration import ApiDSHostConfiguration
from ..models.api_fleet_artifacts_sample_rules import ApiFleetArtifactsSampleRules
from ..models.api_image_deployment_profile import ApiImageDeploymentProfile
from ..models.api_region_config import ApiRegionConfig


class ApiFleetGetResponse(Model):
    """Api fleet get response (api.FleetGetResponse)

    Properties:
        active: (active) REQUIRED bool

        claim_keys: (claimKeys) REQUIRED List[str]

        ds_host_configuration: (dsHostConfiguration) REQUIRED ApiDSHostConfiguration

        fallback_fleet: (fallbackFleet) REQUIRED str

        id_: (id) REQUIRED str

        image_deployment_profile: (imageDeploymentProfile) REQUIRED ApiImageDeploymentProfile

        is_local: (isLocal) REQUIRED bool

        name: (name) REQUIRED str

        on_demand: (onDemand) REQUIRED bool

        primary_fleet: (primaryFleet) REQUIRED str

        regions: (regions) REQUIRED List[ApiRegionConfig]

        sampling_rules: (samplingRules) REQUIRED ApiFleetArtifactsSampleRules
    """

    # region fields

    active: bool  # REQUIRED
    claim_keys: List[str]  # REQUIRED
    ds_host_configuration: ApiDSHostConfiguration  # REQUIRED
    fallback_fleet: str  # REQUIRED
    id_: str  # REQUIRED
    image_deployment_profile: ApiImageDeploymentProfile  # REQUIRED
    is_local: bool  # REQUIRED
    name: str  # REQUIRED
    on_demand: bool  # REQUIRED
    primary_fleet: str  # REQUIRED
    regions: List[ApiRegionConfig]  # REQUIRED
    sampling_rules: ApiFleetArtifactsSampleRules  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> ApiFleetGetResponse:
        self.active = value
        return self

    def with_claim_keys(self, value: List[str]) -> ApiFleetGetResponse:
        self.claim_keys = value
        return self

    def with_ds_host_configuration(
        self, value: ApiDSHostConfiguration
    ) -> ApiFleetGetResponse:
        self.ds_host_configuration = value
        return self

    def with_fallback_fleet(self, value: str) -> ApiFleetGetResponse:
        self.fallback_fleet = value
        return self

    def with_id(self, value: str) -> ApiFleetGetResponse:
        self.id_ = value
        return self

    def with_image_deployment_profile(
        self, value: ApiImageDeploymentProfile
    ) -> ApiFleetGetResponse:
        self.image_deployment_profile = value
        return self

    def with_is_local(self, value: bool) -> ApiFleetGetResponse:
        self.is_local = value
        return self

    def with_name(self, value: str) -> ApiFleetGetResponse:
        self.name = value
        return self

    def with_on_demand(self, value: bool) -> ApiFleetGetResponse:
        self.on_demand = value
        return self

    def with_primary_fleet(self, value: str) -> ApiFleetGetResponse:
        self.primary_fleet = value
        return self

    def with_regions(self, value: List[ApiRegionConfig]) -> ApiFleetGetResponse:
        self.regions = value
        return self

    def with_sampling_rules(
        self, value: ApiFleetArtifactsSampleRules
    ) -> ApiFleetGetResponse:
        self.sampling_rules = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "claim_keys"):
            result["claimKeys"] = [str(i0) for i0 in self.claim_keys]
        elif include_empty:
            result["claimKeys"] = []
        if hasattr(self, "ds_host_configuration"):
            result["dsHostConfiguration"] = self.ds_host_configuration.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["dsHostConfiguration"] = ApiDSHostConfiguration()
        if hasattr(self, "fallback_fleet"):
            result["fallbackFleet"] = str(self.fallback_fleet)
        elif include_empty:
            result["fallbackFleet"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "image_deployment_profile"):
            result["imageDeploymentProfile"] = self.image_deployment_profile.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["imageDeploymentProfile"] = ApiImageDeploymentProfile()
        if hasattr(self, "is_local"):
            result["isLocal"] = bool(self.is_local)
        elif include_empty:
            result["isLocal"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "on_demand"):
            result["onDemand"] = bool(self.on_demand)
        elif include_empty:
            result["onDemand"] = False
        if hasattr(self, "primary_fleet"):
            result["primaryFleet"] = str(self.primary_fleet)
        elif include_empty:
            result["primaryFleet"] = ""
        if hasattr(self, "regions"):
            result["regions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.regions
            ]
        elif include_empty:
            result["regions"] = []
        if hasattr(self, "sampling_rules"):
            result["samplingRules"] = self.sampling_rules.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["samplingRules"] = ApiFleetArtifactsSampleRules()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active: bool,
        claim_keys: List[str],
        ds_host_configuration: ApiDSHostConfiguration,
        fallback_fleet: str,
        id_: str,
        image_deployment_profile: ApiImageDeploymentProfile,
        is_local: bool,
        name: str,
        on_demand: bool,
        primary_fleet: str,
        regions: List[ApiRegionConfig],
        sampling_rules: ApiFleetArtifactsSampleRules,
        **kwargs,
    ) -> ApiFleetGetResponse:
        instance = cls()
        instance.active = active
        instance.claim_keys = claim_keys
        instance.ds_host_configuration = ds_host_configuration
        instance.fallback_fleet = fallback_fleet
        instance.id_ = id_
        instance.image_deployment_profile = image_deployment_profile
        instance.is_local = is_local
        instance.name = name
        instance.on_demand = on_demand
        instance.primary_fleet = primary_fleet
        instance.regions = regions
        instance.sampling_rules = sampling_rules
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetGetResponse:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "claimKeys" in dict_ and dict_["claimKeys"] is not None:
            instance.claim_keys = [str(i0) for i0 in dict_["claimKeys"]]
        elif include_empty:
            instance.claim_keys = []
        if "dsHostConfiguration" in dict_ and dict_["dsHostConfiguration"] is not None:
            instance.ds_host_configuration = ApiDSHostConfiguration.create_from_dict(
                dict_["dsHostConfiguration"], include_empty=include_empty
            )
        elif include_empty:
            instance.ds_host_configuration = ApiDSHostConfiguration()
        if "fallbackFleet" in dict_ and dict_["fallbackFleet"] is not None:
            instance.fallback_fleet = str(dict_["fallbackFleet"])
        elif include_empty:
            instance.fallback_fleet = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if (
            "imageDeploymentProfile" in dict_
            and dict_["imageDeploymentProfile"] is not None
        ):
            instance.image_deployment_profile = (
                ApiImageDeploymentProfile.create_from_dict(
                    dict_["imageDeploymentProfile"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.image_deployment_profile = ApiImageDeploymentProfile()
        if "isLocal" in dict_ and dict_["isLocal"] is not None:
            instance.is_local = bool(dict_["isLocal"])
        elif include_empty:
            instance.is_local = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "onDemand" in dict_ and dict_["onDemand"] is not None:
            instance.on_demand = bool(dict_["onDemand"])
        elif include_empty:
            instance.on_demand = False
        if "primaryFleet" in dict_ and dict_["primaryFleet"] is not None:
            instance.primary_fleet = str(dict_["primaryFleet"])
        elif include_empty:
            instance.primary_fleet = ""
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [
                ApiRegionConfig.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["regions"]
            ]
        elif include_empty:
            instance.regions = []
        if "samplingRules" in dict_ and dict_["samplingRules"] is not None:
            instance.sampling_rules = ApiFleetArtifactsSampleRules.create_from_dict(
                dict_["samplingRules"], include_empty=include_empty
            )
        elif include_empty:
            instance.sampling_rules = ApiFleetArtifactsSampleRules()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetGetResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetGetResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetGetResponse, List[ApiFleetGetResponse], Dict[Any, ApiFleetGetResponse]
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
            "active": "active",
            "claimKeys": "claim_keys",
            "dsHostConfiguration": "ds_host_configuration",
            "fallbackFleet": "fallback_fleet",
            "id": "id_",
            "imageDeploymentProfile": "image_deployment_profile",
            "isLocal": "is_local",
            "name": "name",
            "onDemand": "on_demand",
            "primaryFleet": "primary_fleet",
            "regions": "regions",
            "samplingRules": "sampling_rules",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "claimKeys": True,
            "dsHostConfiguration": True,
            "fallbackFleet": True,
            "id": True,
            "imageDeploymentProfile": True,
            "isLocal": True,
            "name": True,
            "onDemand": True,
            "primaryFleet": True,
            "regions": True,
            "samplingRules": True,
        }

    # endregion static methods
