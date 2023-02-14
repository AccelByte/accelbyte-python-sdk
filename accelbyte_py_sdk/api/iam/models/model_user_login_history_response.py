# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelUserLoginHistoryResponse(Model):
    """Model user login history response (model.UserLoginHistoryResponse)

    Properties:
        application_name: (ApplicationName) REQUIRED str

        city: (City) REQUIRED str

        country: (Country) REQUIRED str

        device_id: (DeviceId) REQUIRED str

        device_name: (deviceName) REQUIRED str

        state: (State) REQUIRED str

        timestamp: (Timestamp) REQUIRED int
    """

    # region fields

    application_name: str  # REQUIRED
    city: str  # REQUIRED
    country: str  # REQUIRED
    device_id: str  # REQUIRED
    device_name: str  # REQUIRED
    state: str  # REQUIRED
    timestamp: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_application_name(self, value: str) -> ModelUserLoginHistoryResponse:
        self.application_name = value
        return self

    def with_city(self, value: str) -> ModelUserLoginHistoryResponse:
        self.city = value
        return self

    def with_country(self, value: str) -> ModelUserLoginHistoryResponse:
        self.country = value
        return self

    def with_device_id(self, value: str) -> ModelUserLoginHistoryResponse:
        self.device_id = value
        return self

    def with_device_name(self, value: str) -> ModelUserLoginHistoryResponse:
        self.device_name = value
        return self

    def with_state(self, value: str) -> ModelUserLoginHistoryResponse:
        self.state = value
        return self

    def with_timestamp(self, value: int) -> ModelUserLoginHistoryResponse:
        self.timestamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "application_name"):
            result["ApplicationName"] = str(self.application_name)
        elif include_empty:
            result["ApplicationName"] = ""
        if hasattr(self, "city"):
            result["City"] = str(self.city)
        elif include_empty:
            result["City"] = ""
        if hasattr(self, "country"):
            result["Country"] = str(self.country)
        elif include_empty:
            result["Country"] = ""
        if hasattr(self, "device_id"):
            result["DeviceId"] = str(self.device_id)
        elif include_empty:
            result["DeviceId"] = ""
        if hasattr(self, "device_name"):
            result["deviceName"] = str(self.device_name)
        elif include_empty:
            result["deviceName"] = ""
        if hasattr(self, "state"):
            result["State"] = str(self.state)
        elif include_empty:
            result["State"] = ""
        if hasattr(self, "timestamp"):
            result["Timestamp"] = int(self.timestamp)
        elif include_empty:
            result["Timestamp"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        application_name: str,
        city: str,
        country: str,
        device_id: str,
        device_name: str,
        state: str,
        timestamp: int,
    ) -> ModelUserLoginHistoryResponse:
        instance = cls()
        instance.application_name = application_name
        instance.city = city
        instance.country = country
        instance.device_id = device_id
        instance.device_name = device_name
        instance.state = state
        instance.timestamp = timestamp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserLoginHistoryResponse:
        instance = cls()
        if not dict_:
            return instance
        if "ApplicationName" in dict_ and dict_["ApplicationName"] is not None:
            instance.application_name = str(dict_["ApplicationName"])
        elif include_empty:
            instance.application_name = ""
        if "City" in dict_ and dict_["City"] is not None:
            instance.city = str(dict_["City"])
        elif include_empty:
            instance.city = ""
        if "Country" in dict_ and dict_["Country"] is not None:
            instance.country = str(dict_["Country"])
        elif include_empty:
            instance.country = ""
        if "DeviceId" in dict_ and dict_["DeviceId"] is not None:
            instance.device_id = str(dict_["DeviceId"])
        elif include_empty:
            instance.device_id = ""
        if "deviceName" in dict_ and dict_["deviceName"] is not None:
            instance.device_name = str(dict_["deviceName"])
        elif include_empty:
            instance.device_name = ""
        if "State" in dict_ and dict_["State"] is not None:
            instance.state = str(dict_["State"])
        elif include_empty:
            instance.state = ""
        if "Timestamp" in dict_ and dict_["Timestamp"] is not None:
            instance.timestamp = int(dict_["Timestamp"])
        elif include_empty:
            instance.timestamp = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserLoginHistoryResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserLoginHistoryResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserLoginHistoryResponse,
        List[ModelUserLoginHistoryResponse],
        Dict[Any, ModelUserLoginHistoryResponse],
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
            "ApplicationName": "application_name",
            "City": "city",
            "Country": "country",
            "DeviceId": "device_id",
            "deviceName": "device_name",
            "State": "state",
            "Timestamp": "timestamp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ApplicationName": True,
            "City": True,
            "Country": True,
            "DeviceId": True,
            "deviceName": True,
            "State": True,
            "Timestamp": True,
        }

    # endregion static methods
