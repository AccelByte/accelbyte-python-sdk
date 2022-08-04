# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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


class RestapiErrorResponseV2(Model):
    """Restapi error response V2 (restapi.ErrorResponseV2)

    Properties:
        attributes: (attributes) REQUIRED Dict[str, str]

        error_code: (errorCode) REQUIRED int

        error_message: (errorMessage) REQUIRED str

        message: (message) REQUIRED str

        name: (name) REQUIRED str
    """

    # region fields

    attributes: Dict[str, str]  # REQUIRED
    error_code: int  # REQUIRED
    error_message: str  # REQUIRED
    message: str  # REQUIRED
    name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, str]) -> RestapiErrorResponseV2:
        self.attributes = value
        return self

    def with_error_code(self, value: int) -> RestapiErrorResponseV2:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> RestapiErrorResponseV2:
        self.error_message = value
        return self

    def with_message(self, value: str) -> RestapiErrorResponseV2:
        self.message = value
        return self

    def with_name(self, value: str) -> RestapiErrorResponseV2:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {
                str(k0): str(v0) for k0, v0 in self.attributes.items()
            }
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "error_code"):
            result["errorCode"] = int(self.error_code)
        elif include_empty:
            result["errorCode"] = 0
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = ""
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Dict[str, str],
        error_code: int,
        error_message: str,
        message: str,
        name: str,
    ) -> RestapiErrorResponseV2:
        instance = cls()
        instance.attributes = attributes
        instance.error_code = error_code
        instance.error_message = error_message
        instance.message = message
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiErrorResponseV2:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): str(v0) for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "errorCode" in dict_ and dict_["errorCode"] is not None:
            instance.error_code = int(dict_["errorCode"])
        elif include_empty:
            instance.error_code = 0
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiErrorResponseV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiErrorResponseV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiErrorResponseV2,
        List[RestapiErrorResponseV2],
        Dict[Any, RestapiErrorResponseV2],
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
            "attributes": "attributes",
            "errorCode": "error_code",
            "errorMessage": "error_message",
            "message": "message",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attributes": True,
            "errorCode": True,
            "errorMessage": True,
            "message": True,
            "name": True,
        }

    # endregion static methods
