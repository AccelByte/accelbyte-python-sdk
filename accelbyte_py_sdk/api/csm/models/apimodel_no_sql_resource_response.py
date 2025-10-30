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

from ..models.nosqlresource_no_sql_resource_configuration import (
    NosqlresourceNoSQLResourceConfiguration,
)


class ApimodelNoSQLResourceResponse(Model):
    """Apimodel no SQL resource response (apimodel.NoSQLResourceResponse)

    Properties:
        platform_name: (platformName) REQUIRED str

        resource_id: (resourceId) REQUIRED str

        resource_name: (resourceName) REQUIRED str

        resource_type: (resourceType) REQUIRED str

        status: (status) REQUIRED str

        studio_name: (studioName) REQUIRED str

        configuration: (configuration) OPTIONAL NosqlresourceNoSQLResourceConfiguration

        hostnames: (hostnames) OPTIONAL str

        last_rotated_at: (lastRotatedAt) OPTIONAL str

        region: (region) OPTIONAL str
    """

    # region fields

    platform_name: str  # REQUIRED
    resource_id: str  # REQUIRED
    resource_name: str  # REQUIRED
    resource_type: str  # REQUIRED
    status: str  # REQUIRED
    studio_name: str  # REQUIRED
    configuration: NosqlresourceNoSQLResourceConfiguration  # OPTIONAL
    hostnames: str  # OPTIONAL
    last_rotated_at: str  # OPTIONAL
    region: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform_name(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.platform_name = value
        return self

    def with_resource_id(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.resource_id = value
        return self

    def with_resource_name(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.resource_name = value
        return self

    def with_resource_type(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.resource_type = value
        return self

    def with_status(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.status = value
        return self

    def with_studio_name(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.studio_name = value
        return self

    def with_configuration(
        self, value: NosqlresourceNoSQLResourceConfiguration
    ) -> ApimodelNoSQLResourceResponse:
        self.configuration = value
        return self

    def with_hostnames(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.hostnames = value
        return self

    def with_last_rotated_at(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.last_rotated_at = value
        return self

    def with_region(self, value: str) -> ApimodelNoSQLResourceResponse:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_name"):
            result["platformName"] = str(self.platform_name)
        elif include_empty:
            result["platformName"] = ""
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
        if hasattr(self, "studio_name"):
            result["studioName"] = str(self.studio_name)
        elif include_empty:
            result["studioName"] = ""
        if hasattr(self, "configuration"):
            result["configuration"] = self.configuration.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["configuration"] = NosqlresourceNoSQLResourceConfiguration()
        if hasattr(self, "hostnames"):
            result["hostnames"] = str(self.hostnames)
        elif include_empty:
            result["hostnames"] = ""
        if hasattr(self, "last_rotated_at"):
            result["lastRotatedAt"] = str(self.last_rotated_at)
        elif include_empty:
            result["lastRotatedAt"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_name: str,
        resource_id: str,
        resource_name: str,
        resource_type: str,
        status: str,
        studio_name: str,
        configuration: Optional[NosqlresourceNoSQLResourceConfiguration] = None,
        hostnames: Optional[str] = None,
        last_rotated_at: Optional[str] = None,
        region: Optional[str] = None,
        **kwargs,
    ) -> ApimodelNoSQLResourceResponse:
        instance = cls()
        instance.platform_name = platform_name
        instance.resource_id = resource_id
        instance.resource_name = resource_name
        instance.resource_type = resource_type
        instance.status = status
        instance.studio_name = studio_name
        if configuration is not None:
            instance.configuration = configuration
        if hostnames is not None:
            instance.hostnames = hostnames
        if last_rotated_at is not None:
            instance.last_rotated_at = last_rotated_at
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelNoSQLResourceResponse:
        instance = cls()
        if not dict_:
            return instance
        if "platformName" in dict_ and dict_["platformName"] is not None:
            instance.platform_name = str(dict_["platformName"])
        elif include_empty:
            instance.platform_name = ""
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
        if "studioName" in dict_ and dict_["studioName"] is not None:
            instance.studio_name = str(dict_["studioName"])
        elif include_empty:
            instance.studio_name = ""
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = (
                NosqlresourceNoSQLResourceConfiguration.create_from_dict(
                    dict_["configuration"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.configuration = NosqlresourceNoSQLResourceConfiguration()
        if "hostnames" in dict_ and dict_["hostnames"] is not None:
            instance.hostnames = str(dict_["hostnames"])
        elif include_empty:
            instance.hostnames = ""
        if "lastRotatedAt" in dict_ and dict_["lastRotatedAt"] is not None:
            instance.last_rotated_at = str(dict_["lastRotatedAt"])
        elif include_empty:
            instance.last_rotated_at = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelNoSQLResourceResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelNoSQLResourceResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelNoSQLResourceResponse,
        List[ApimodelNoSQLResourceResponse],
        Dict[Any, ApimodelNoSQLResourceResponse],
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
            "platformName": "platform_name",
            "resourceId": "resource_id",
            "resourceName": "resource_name",
            "resourceType": "resource_type",
            "status": "status",
            "studioName": "studio_name",
            "configuration": "configuration",
            "hostnames": "hostnames",
            "lastRotatedAt": "last_rotated_at",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformName": True,
            "resourceId": True,
            "resourceName": True,
            "resourceType": True,
            "status": True,
            "studioName": True,
            "configuration": False,
            "hostnames": False,
            "lastRotatedAt": False,
            "region": False,
        }

    # endregion static methods
