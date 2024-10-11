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


class ApiDevelopmentServerConfigurationGetResponse(Model):
    """Api development server configuration get response (api.DevelopmentServerConfigurationGetResponse)

    Properties:
        command_line_arguments: (commandLineArguments) REQUIRED str

        image_id: (imageId) REQUIRED str

        name: (name) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        expires_at: (expiresAt) OPTIONAL str
    """

    # region fields

    command_line_arguments: str  # REQUIRED
    image_id: str  # REQUIRED
    name: str  # REQUIRED
    created_at: str  # OPTIONAL
    expires_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_command_line_arguments(
        self, value: str
    ) -> ApiDevelopmentServerConfigurationGetResponse:
        self.command_line_arguments = value
        return self

    def with_image_id(self, value: str) -> ApiDevelopmentServerConfigurationGetResponse:
        self.image_id = value
        return self

    def with_name(self, value: str) -> ApiDevelopmentServerConfigurationGetResponse:
        self.name = value
        return self

    def with_created_at(
        self, value: str
    ) -> ApiDevelopmentServerConfigurationGetResponse:
        self.created_at = value
        return self

    def with_expires_at(
        self, value: str
    ) -> ApiDevelopmentServerConfigurationGetResponse:
        self.expires_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "command_line_arguments"):
            result["commandLineArguments"] = str(self.command_line_arguments)
        elif include_empty:
            result["commandLineArguments"] = ""
        if hasattr(self, "image_id"):
            result["imageId"] = str(self.image_id)
        elif include_empty:
            result["imageId"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "expires_at"):
            result["expiresAt"] = str(self.expires_at)
        elif include_empty:
            result["expiresAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        command_line_arguments: str,
        image_id: str,
        name: str,
        created_at: Optional[str] = None,
        expires_at: Optional[str] = None,
        **kwargs,
    ) -> ApiDevelopmentServerConfigurationGetResponse:
        instance = cls()
        instance.command_line_arguments = command_line_arguments
        instance.image_id = image_id
        instance.name = name
        if created_at is not None:
            instance.created_at = created_at
        if expires_at is not None:
            instance.expires_at = expires_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiDevelopmentServerConfigurationGetResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "commandLineArguments" in dict_
            and dict_["commandLineArguments"] is not None
        ):
            instance.command_line_arguments = str(dict_["commandLineArguments"])
        elif include_empty:
            instance.command_line_arguments = ""
        if "imageId" in dict_ and dict_["imageId"] is not None:
            instance.image_id = str(dict_["imageId"])
        elif include_empty:
            instance.image_id = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "expiresAt" in dict_ and dict_["expiresAt"] is not None:
            instance.expires_at = str(dict_["expiresAt"])
        elif include_empty:
            instance.expires_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiDevelopmentServerConfigurationGetResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiDevelopmentServerConfigurationGetResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiDevelopmentServerConfigurationGetResponse,
        List[ApiDevelopmentServerConfigurationGetResponse],
        Dict[Any, ApiDevelopmentServerConfigurationGetResponse],
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
            "commandLineArguments": "command_line_arguments",
            "imageId": "image_id",
            "name": "name",
            "createdAt": "created_at",
            "expiresAt": "expires_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "commandLineArguments": True,
            "imageId": True,
            "name": True,
            "createdAt": False,
            "expiresAt": False,
        }

    # endregion static methods
