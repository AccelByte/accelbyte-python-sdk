# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander (1.0.1)

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
from ..models.api_image_deployment_profile import ApiImageDeploymentProfile
from ..models.api_region_config import ApiRegionConfig


class ApiFleetGetResponse(Model):
    """Api fleet get response (api.FleetGetResponse)

    Properties:
        active: (active) REQUIRED bool

        claim_keys: (claimKeys) REQUIRED List[str]

        ds_host_configuration: (dsHostConfiguration) REQUIRED ApiDSHostConfiguration

        id_: (id) REQUIRED str

        image_deployment_profile: (imageDeploymentProfile) REQUIRED ApiImageDeploymentProfile

        name: (name) REQUIRED str

        regions: (regions) REQUIRED List[ApiRegionConfig]
    """

    # region fields

    active: bool  # REQUIRED
    claim_keys: List[str]  # REQUIRED
    ds_host_configuration: ApiDSHostConfiguration  # REQUIRED
    id_: str  # REQUIRED
    image_deployment_profile: ApiImageDeploymentProfile  # REQUIRED
    name: str  # REQUIRED
    regions: List[ApiRegionConfig]  # REQUIRED

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

    def with_id(self, value: str) -> ApiFleetGetResponse:
        self.id_ = value
        return self

    def with_image_deployment_profile(
        self, value: ApiImageDeploymentProfile
    ) -> ApiFleetGetResponse:
        self.image_deployment_profile = value
        return self

    def with_name(self, value: str) -> ApiFleetGetResponse:
        self.name = value
        return self

    def with_regions(self, value: List[ApiRegionConfig]) -> ApiFleetGetResponse:
        self.regions = value
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
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "regions"):
            result["regions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.regions
            ]
        elif include_empty:
            result["regions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active: bool,
        claim_keys: List[str],
        ds_host_configuration: ApiDSHostConfiguration,
        id_: str,
        image_deployment_profile: ApiImageDeploymentProfile,
        name: str,
        regions: List[ApiRegionConfig],
        **kwargs,
    ) -> ApiFleetGetResponse:
        instance = cls()
        instance.active = active
        instance.claim_keys = claim_keys
        instance.ds_host_configuration = ds_host_configuration
        instance.id_ = id_
        instance.image_deployment_profile = image_deployment_profile
        instance.name = name
        instance.regions = regions
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
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [
                ApiRegionConfig.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["regions"]
            ]
        elif include_empty:
            instance.regions = []
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
            "id": "id_",
            "imageDeploymentProfile": "image_deployment_profile",
            "name": "name",
            "regions": "regions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "claimKeys": True,
            "dsHostConfiguration": True,
            "id": True,
            "imageDeploymentProfile": True,
            "name": True,
            "regions": True,
        }

    # endregion static methods
