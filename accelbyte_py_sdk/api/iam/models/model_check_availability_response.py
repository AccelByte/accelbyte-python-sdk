# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelCheckAvailabilityResponse(Model):
    """Model check availability response (model.CheckAvailabilityResponse)

    Properties:
        accessible: (Accessible) REQUIRED bool

        platform_error_message: (PlatformErrorMessage) REQUIRED Dict[str, str]
    """

    # region fields

    accessible: bool  # REQUIRED
    platform_error_message: Dict[str, str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_accessible(self, value: bool) -> ModelCheckAvailabilityResponse:
        self.accessible = value
        return self

    def with_platform_error_message(
        self, value: Dict[str, str]
    ) -> ModelCheckAvailabilityResponse:
        self.platform_error_message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "accessible"):
            result["Accessible"] = bool(self.accessible)
        elif include_empty:
            result["Accessible"] = False
        if hasattr(self, "platform_error_message"):
            result["PlatformErrorMessage"] = {
                str(k0): str(v0) for k0, v0 in self.platform_error_message.items()
            }
        elif include_empty:
            result["PlatformErrorMessage"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, accessible: bool, platform_error_message: Dict[str, str], **kwargs
    ) -> ModelCheckAvailabilityResponse:
        instance = cls()
        instance.accessible = accessible
        instance.platform_error_message = platform_error_message
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCheckAvailabilityResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Accessible" in dict_ and dict_["Accessible"] is not None:
            instance.accessible = bool(dict_["Accessible"])
        elif include_empty:
            instance.accessible = False
        if (
            "PlatformErrorMessage" in dict_
            and dict_["PlatformErrorMessage"] is not None
        ):
            instance.platform_error_message = {
                str(k0): str(v0) for k0, v0 in dict_["PlatformErrorMessage"].items()
            }
        elif include_empty:
            instance.platform_error_message = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCheckAvailabilityResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCheckAvailabilityResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCheckAvailabilityResponse,
        List[ModelCheckAvailabilityResponse],
        Dict[Any, ModelCheckAvailabilityResponse],
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
            "Accessible": "accessible",
            "PlatformErrorMessage": "platform_error_message",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Accessible": True,
            "PlatformErrorMessage": True,
        }

    # endregion static methods
