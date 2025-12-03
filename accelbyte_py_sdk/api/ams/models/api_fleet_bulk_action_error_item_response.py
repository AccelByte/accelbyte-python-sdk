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


class ApiFleetBulkActionErrorItemResponse(Model):
    """Api fleet bulk action error item response (api.FleetBulkActionErrorItemResponse)

    Properties:
        fleet_id: (fleetId) REQUIRED str

        error_message: (errorMessage) OPTIONAL str

        error_type: (errorType) OPTIONAL str
    """

    # region fields

    fleet_id: str  # REQUIRED
    error_message: str  # OPTIONAL
    error_type: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_fleet_id(self, value: str) -> ApiFleetBulkActionErrorItemResponse:
        self.fleet_id = value
        return self

    def with_error_message(self, value: str) -> ApiFleetBulkActionErrorItemResponse:
        self.error_message = value
        return self

    def with_error_type(self, value: str) -> ApiFleetBulkActionErrorItemResponse:
        self.error_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "fleet_id"):
            result["fleetId"] = str(self.fleet_id)
        elif include_empty:
            result["fleetId"] = ""
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = ""
        if hasattr(self, "error_type"):
            result["errorType"] = str(self.error_type)
        elif include_empty:
            result["errorType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        fleet_id: str,
        error_message: Optional[str] = None,
        error_type: Optional[str] = None,
        **kwargs,
    ) -> ApiFleetBulkActionErrorItemResponse:
        instance = cls()
        instance.fleet_id = fleet_id
        if error_message is not None:
            instance.error_message = error_message
        if error_type is not None:
            instance.error_type = error_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetBulkActionErrorItemResponse:
        instance = cls()
        if not dict_:
            return instance
        if "fleetId" in dict_ and dict_["fleetId"] is not None:
            instance.fleet_id = str(dict_["fleetId"])
        elif include_empty:
            instance.fleet_id = ""
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = ""
        if "errorType" in dict_ and dict_["errorType"] is not None:
            instance.error_type = str(dict_["errorType"])
        elif include_empty:
            instance.error_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetBulkActionErrorItemResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetBulkActionErrorItemResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetBulkActionErrorItemResponse,
        List[ApiFleetBulkActionErrorItemResponse],
        Dict[Any, ApiFleetBulkActionErrorItemResponse],
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
            "fleetId": "fleet_id",
            "errorMessage": "error_message",
            "errorType": "error_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "fleetId": True,
            "errorMessage": False,
            "errorType": False,
        }

    # endregion static methods
