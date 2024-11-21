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

from ..models.api_port_configuration import ApiPortConfiguration
from ..models.api_timeout import ApiTimeout


class ApiImageDeploymentProfile(Model):
    """Api image deployment profile (api.ImageDeploymentProfile)

    Properties:
        command_line: (commandLine) REQUIRED str

        image_id: (imageId) REQUIRED str

        port_configurations: (portConfigurations) REQUIRED List[ApiPortConfiguration]

        timeout: (timeout) OPTIONAL ApiTimeout
    """

    # region fields

    command_line: str  # REQUIRED
    image_id: str  # REQUIRED
    port_configurations: List[ApiPortConfiguration]  # REQUIRED
    timeout: ApiTimeout  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_command_line(self, value: str) -> ApiImageDeploymentProfile:
        self.command_line = value
        return self

    def with_image_id(self, value: str) -> ApiImageDeploymentProfile:
        self.image_id = value
        return self

    def with_port_configurations(
        self, value: List[ApiPortConfiguration]
    ) -> ApiImageDeploymentProfile:
        self.port_configurations = value
        return self

    def with_timeout(self, value: ApiTimeout) -> ApiImageDeploymentProfile:
        self.timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "command_line"):
            result["commandLine"] = str(self.command_line)
        elif include_empty:
            result["commandLine"] = ""
        if hasattr(self, "image_id"):
            result["imageId"] = str(self.image_id)
        elif include_empty:
            result["imageId"] = ""
        if hasattr(self, "port_configurations"):
            result["portConfigurations"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.port_configurations
            ]
        elif include_empty:
            result["portConfigurations"] = []
        if hasattr(self, "timeout"):
            result["timeout"] = self.timeout.to_dict(include_empty=include_empty)
        elif include_empty:
            result["timeout"] = ApiTimeout()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        command_line: str,
        image_id: str,
        port_configurations: List[ApiPortConfiguration],
        timeout: Optional[ApiTimeout] = None,
        **kwargs,
    ) -> ApiImageDeploymentProfile:
        instance = cls()
        instance.command_line = command_line
        instance.image_id = image_id
        instance.port_configurations = port_configurations
        if timeout is not None:
            instance.timeout = timeout
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiImageDeploymentProfile:
        instance = cls()
        if not dict_:
            return instance
        if "commandLine" in dict_ and dict_["commandLine"] is not None:
            instance.command_line = str(dict_["commandLine"])
        elif include_empty:
            instance.command_line = ""
        if "imageId" in dict_ and dict_["imageId"] is not None:
            instance.image_id = str(dict_["imageId"])
        elif include_empty:
            instance.image_id = ""
        if "portConfigurations" in dict_ and dict_["portConfigurations"] is not None:
            instance.port_configurations = [
                ApiPortConfiguration.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["portConfigurations"]
            ]
        elif include_empty:
            instance.port_configurations = []
        if "timeout" in dict_ and dict_["timeout"] is not None:
            instance.timeout = ApiTimeout.create_from_dict(
                dict_["timeout"], include_empty=include_empty
            )
        elif include_empty:
            instance.timeout = ApiTimeout()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiImageDeploymentProfile]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiImageDeploymentProfile]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiImageDeploymentProfile,
        List[ApiImageDeploymentProfile],
        Dict[Any, ApiImageDeploymentProfile],
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
            "commandLine": "command_line",
            "imageId": "image_id",
            "portConfigurations": "port_configurations",
            "timeout": "timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "commandLine": True,
            "imageId": True,
            "portConfigurations": True,
            "timeout": False,
        }

    # endregion static methods
