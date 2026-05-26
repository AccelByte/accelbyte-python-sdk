# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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

from ..models.domain_key_value_resource_configuration import (
    DomainKeyValueResourceConfiguration,
)


class ApimodelKeyValueResourceResponse(Model):
    """Apimodel key value resource response (apimodel.KeyValueResourceResponse)

    Properties:
        cluster_name: (clusterName) REQUIRED str

        configuration: (configuration) REQUIRED DomainKeyValueResourceConfiguration

        engine: (engine) REQUIRED str

        hostnames: (hostnames) REQUIRED str

        last_rotated_at: (lastRotatedAt) REQUIRED str

        platform_name: (platformName) REQUIRED str

        region: (region) REQUIRED str

        resource_id: (resourceId) REQUIRED str

        resource_name: (resourceName) REQUIRED str

        resource_type: (resourceType) REQUIRED str

        status: (status) REQUIRED str

        status_message: (statusMessage) REQUIRED str

        studio_name: (studioName) REQUIRED str
    """

    # region fields

    cluster_name: str  # REQUIRED
    configuration: DomainKeyValueResourceConfiguration  # REQUIRED
    engine: str  # REQUIRED
    hostnames: str  # REQUIRED
    last_rotated_at: str  # REQUIRED
    platform_name: str  # REQUIRED
    region: str  # REQUIRED
    resource_id: str  # REQUIRED
    resource_name: str  # REQUIRED
    resource_type: str  # REQUIRED
    status: str  # REQUIRED
    status_message: str  # REQUIRED
    studio_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cluster_name(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.cluster_name = value
        return self

    def with_configuration(
        self, value: DomainKeyValueResourceConfiguration
    ) -> ApimodelKeyValueResourceResponse:
        self.configuration = value
        return self

    def with_engine(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.engine = value
        return self

    def with_hostnames(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.hostnames = value
        return self

    def with_last_rotated_at(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.last_rotated_at = value
        return self

    def with_platform_name(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.platform_name = value
        return self

    def with_region(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.region = value
        return self

    def with_resource_id(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.resource_id = value
        return self

    def with_resource_name(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.resource_name = value
        return self

    def with_resource_type(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.resource_type = value
        return self

    def with_status(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.status = value
        return self

    def with_status_message(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.status_message = value
        return self

    def with_studio_name(self, value: str) -> ApimodelKeyValueResourceResponse:
        self.studio_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cluster_name"):
            result["clusterName"] = str(self.cluster_name)
        elif include_empty:
            result["clusterName"] = ""
        if hasattr(self, "configuration"):
            result["configuration"] = self.configuration.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["configuration"] = DomainKeyValueResourceConfiguration()
        if hasattr(self, "engine"):
            result["engine"] = str(self.engine)
        elif include_empty:
            result["engine"] = ""
        if hasattr(self, "hostnames"):
            result["hostnames"] = str(self.hostnames)
        elif include_empty:
            result["hostnames"] = ""
        if hasattr(self, "last_rotated_at"):
            result["lastRotatedAt"] = str(self.last_rotated_at)
        elif include_empty:
            result["lastRotatedAt"] = ""
        if hasattr(self, "platform_name"):
            result["platformName"] = str(self.platform_name)
        elif include_empty:
            result["platformName"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "resource_id"):
            result["resourceId"] = str(self.resource_id)
        elif include_empty:
            result["resourceId"] = ""
        if hasattr(self, "resource_name"):
            result["resourceName"] = str(self.resource_name)
        elif include_empty:
            result["resourceName"] = ""
        if hasattr(self, "resource_type"):
            result["resourceType"] = str(self.resource_type)
        elif include_empty:
            result["resourceType"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "status_message"):
            result["statusMessage"] = str(self.status_message)
        elif include_empty:
            result["statusMessage"] = ""
        if hasattr(self, "studio_name"):
            result["studioName"] = str(self.studio_name)
        elif include_empty:
            result["studioName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cluster_name: str,
        configuration: DomainKeyValueResourceConfiguration,
        engine: str,
        hostnames: str,
        last_rotated_at: str,
        platform_name: str,
        region: str,
        resource_id: str,
        resource_name: str,
        resource_type: str,
        status: str,
        status_message: str,
        studio_name: str,
        **kwargs,
    ) -> ApimodelKeyValueResourceResponse:
        instance = cls()
        instance.cluster_name = cluster_name
        instance.configuration = configuration
        instance.engine = engine
        instance.hostnames = hostnames
        instance.last_rotated_at = last_rotated_at
        instance.platform_name = platform_name
        instance.region = region
        instance.resource_id = resource_id
        instance.resource_name = resource_name
        instance.resource_type = resource_type
        instance.status = status
        instance.status_message = status_message
        instance.studio_name = studio_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelKeyValueResourceResponse:
        instance = cls()
        if not dict_:
            return instance
        if "clusterName" in dict_ and dict_["clusterName"] is not None:
            instance.cluster_name = str(dict_["clusterName"])
        elif include_empty:
            instance.cluster_name = ""
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = (
                DomainKeyValueResourceConfiguration.create_from_dict(
                    dict_["configuration"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.configuration = DomainKeyValueResourceConfiguration()
        if "engine" in dict_ and dict_["engine"] is not None:
            instance.engine = str(dict_["engine"])
        elif include_empty:
            instance.engine = ""
        if "hostnames" in dict_ and dict_["hostnames"] is not None:
            instance.hostnames = str(dict_["hostnames"])
        elif include_empty:
            instance.hostnames = ""
        if "lastRotatedAt" in dict_ and dict_["lastRotatedAt"] is not None:
            instance.last_rotated_at = str(dict_["lastRotatedAt"])
        elif include_empty:
            instance.last_rotated_at = ""
        if "platformName" in dict_ and dict_["platformName"] is not None:
            instance.platform_name = str(dict_["platformName"])
        elif include_empty:
            instance.platform_name = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "resourceId" in dict_ and dict_["resourceId"] is not None:
            instance.resource_id = str(dict_["resourceId"])
        elif include_empty:
            instance.resource_id = ""
        if "resourceName" in dict_ and dict_["resourceName"] is not None:
            instance.resource_name = str(dict_["resourceName"])
        elif include_empty:
            instance.resource_name = ""
        if "resourceType" in dict_ and dict_["resourceType"] is not None:
            instance.resource_type = str(dict_["resourceType"])
        elif include_empty:
            instance.resource_type = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "statusMessage" in dict_ and dict_["statusMessage"] is not None:
            instance.status_message = str(dict_["statusMessage"])
        elif include_empty:
            instance.status_message = ""
        if "studioName" in dict_ and dict_["studioName"] is not None:
            instance.studio_name = str(dict_["studioName"])
        elif include_empty:
            instance.studio_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelKeyValueResourceResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelKeyValueResourceResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelKeyValueResourceResponse,
        List[ApimodelKeyValueResourceResponse],
        Dict[Any, ApimodelKeyValueResourceResponse],
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
            "clusterName": "cluster_name",
            "configuration": "configuration",
            "engine": "engine",
            "hostnames": "hostnames",
            "lastRotatedAt": "last_rotated_at",
            "platformName": "platform_name",
            "region": "region",
            "resourceId": "resource_id",
            "resourceName": "resource_name",
            "resourceType": "resource_type",
            "status": "status",
            "statusMessage": "status_message",
            "studioName": "studio_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clusterName": True,
            "configuration": True,
            "engine": True,
            "hostnames": True,
            "lastRotatedAt": True,
            "platformName": True,
            "region": True,
            "resourceId": True,
            "resourceName": True,
            "resourceType": True,
            "status": True,
            "statusMessage": True,
            "studioName": True,
        }

    # endregion static methods
