# Auto-generated at 2021-10-21T08:52:26.141005+08:00
# from: Justice iam Service (4.4.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

        state: (State) REQUIRED str

        timestamp: (Timestamp) REQUIRED int

        device_name: (deviceName) REQUIRED str
    """

    # region fields

    application_name: str                                                                          # REQUIRED
    city: str                                                                                      # REQUIRED
    country: str                                                                                   # REQUIRED
    device_id: str                                                                                 # REQUIRED
    state: str                                                                                     # REQUIRED
    timestamp: int                                                                                 # REQUIRED
    device_name: str                                                                               # REQUIRED

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

    def with_state(self, value: str) -> ModelUserLoginHistoryResponse:
        self.state = value
        return self

    def with_timestamp(self, value: int) -> ModelUserLoginHistoryResponse:
        self.timestamp = value
        return self

    def with_device_name(self, value: str) -> ModelUserLoginHistoryResponse:
        self.device_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "application_name") and self.application_name:
            result["ApplicationName"] = str(self.application_name)
        elif include_empty:
            result["ApplicationName"] = str()
        if hasattr(self, "city") and self.city:
            result["City"] = str(self.city)
        elif include_empty:
            result["City"] = str()
        if hasattr(self, "country") and self.country:
            result["Country"] = str(self.country)
        elif include_empty:
            result["Country"] = str()
        if hasattr(self, "device_id") and self.device_id:
            result["DeviceId"] = str(self.device_id)
        elif include_empty:
            result["DeviceId"] = str()
        if hasattr(self, "state") and self.state:
            result["State"] = str(self.state)
        elif include_empty:
            result["State"] = str()
        if hasattr(self, "timestamp") and self.timestamp:
            result["Timestamp"] = int(self.timestamp)
        elif include_empty:
            result["Timestamp"] = int()
        if hasattr(self, "device_name") and self.device_name:
            result["deviceName"] = str(self.device_name)
        elif include_empty:
            result["deviceName"] = str()
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
        state: str,
        timestamp: int,
        device_name: str,
    ) -> ModelUserLoginHistoryResponse:
        instance = cls()
        instance.application_name = application_name
        instance.city = city
        instance.country = country
        instance.device_id = device_id
        instance.state = state
        instance.timestamp = timestamp
        instance.device_name = device_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserLoginHistoryResponse:
        instance = cls()
        if not dict_:
            return instance
        if "ApplicationName" in dict_ and dict_["ApplicationName"] is not None:
            instance.application_name = str(dict_["ApplicationName"])
        elif include_empty:
            instance.application_name = str()
        if "City" in dict_ and dict_["City"] is not None:
            instance.city = str(dict_["City"])
        elif include_empty:
            instance.city = str()
        if "Country" in dict_ and dict_["Country"] is not None:
            instance.country = str(dict_["Country"])
        elif include_empty:
            instance.country = str()
        if "DeviceId" in dict_ and dict_["DeviceId"] is not None:
            instance.device_id = str(dict_["DeviceId"])
        elif include_empty:
            instance.device_id = str()
        if "State" in dict_ and dict_["State"] is not None:
            instance.state = str(dict_["State"])
        elif include_empty:
            instance.state = str()
        if "Timestamp" in dict_ and dict_["Timestamp"] is not None:
            instance.timestamp = int(dict_["Timestamp"])
        elif include_empty:
            instance.timestamp = int()
        if "deviceName" in dict_ and dict_["deviceName"] is not None:
            instance.device_name = str(dict_["deviceName"])
        elif include_empty:
            instance.device_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ApplicationName": "application_name",
            "City": "city",
            "Country": "country",
            "DeviceId": "device_id",
            "State": "state",
            "Timestamp": "timestamp",
            "deviceName": "device_name",
        }

    # endregion static methods
