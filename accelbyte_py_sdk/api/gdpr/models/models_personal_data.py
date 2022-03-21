# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-gdpr-service (1.14.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelsPersonalData(Model):
    """Models personal data (models.PersonalData)

    Properties:
        data_expiration_date: (DataExpirationDate) REQUIRED str

        display_name: (DisplayName) REQUIRED str

        request_date: (RequestDate) REQUIRED str

        service_errors: (ServiceErrors) REQUIRED Dict[str, str]

        service_statuses: (ServiceStatuses) REQUIRED Dict[str, str]

        status: (Status) REQUIRED str

        user_id: (UserID) REQUIRED str
    """

    # region fields

    data_expiration_date: str                                                                      # REQUIRED
    display_name: str                                                                              # REQUIRED
    request_date: str                                                                              # REQUIRED
    service_errors: Dict[str, str]                                                                 # REQUIRED
    service_statuses: Dict[str, str]                                                               # REQUIRED
    status: str                                                                                    # REQUIRED
    user_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data_expiration_date(self, value: str) -> ModelsPersonalData:
        self.data_expiration_date = value
        return self

    def with_display_name(self, value: str) -> ModelsPersonalData:
        self.display_name = value
        return self

    def with_request_date(self, value: str) -> ModelsPersonalData:
        self.request_date = value
        return self

    def with_service_errors(self, value: Dict[str, str]) -> ModelsPersonalData:
        self.service_errors = value
        return self

    def with_service_statuses(self, value: Dict[str, str]) -> ModelsPersonalData:
        self.service_statuses = value
        return self

    def with_status(self, value: str) -> ModelsPersonalData:
        self.status = value
        return self

    def with_user_id(self, value: str) -> ModelsPersonalData:
        self.user_id = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "data_expiration_date") or self.data_expiration_date is None:
            return False
        if not hasattr(self, "display_name") or self.display_name is None:
            return False
        if not hasattr(self, "request_date") or self.request_date is None:
            return False
        if not hasattr(self, "service_errors") or self.service_errors is None:
            return False
        if not hasattr(self, "service_statuses") or self.service_statuses is None:
            return False
        if not hasattr(self, "status") or self.status is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data_expiration_date"):
            result["DataExpirationDate"] = str(self.data_expiration_date)
        elif include_empty:
            result["DataExpirationDate"] = str()
        if hasattr(self, "display_name"):
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = str()
        if hasattr(self, "request_date"):
            result["RequestDate"] = str(self.request_date)
        elif include_empty:
            result["RequestDate"] = str()
        if hasattr(self, "service_errors"):
            result["ServiceErrors"] = {str(k0): str(v0) for k0, v0 in self.service_errors.items()}
        elif include_empty:
            result["ServiceErrors"] = {}
        if hasattr(self, "service_statuses"):
            result["ServiceStatuses"] = {str(k0): str(v0) for k0, v0 in self.service_statuses.items()}
        elif include_empty:
            result["ServiceStatuses"] = {}
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = str()
        if hasattr(self, "user_id"):
            result["UserID"] = str(self.user_id)
        elif include_empty:
            result["UserID"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data_expiration_date: str,
        display_name: str,
        request_date: str,
        service_errors: Dict[str, str],
        service_statuses: Dict[str, str],
        status: str,
        user_id: str,
    ) -> ModelsPersonalData:
        instance = cls()
        instance.data_expiration_date = data_expiration_date
        instance.display_name = display_name
        instance.request_date = request_date
        instance.service_errors = service_errors
        instance.service_statuses = service_statuses
        instance.status = status
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPersonalData:
        instance = cls()
        if not dict_:
            return instance
        if "DataExpirationDate" in dict_ and dict_["DataExpirationDate"] is not None:
            instance.data_expiration_date = str(dict_["DataExpirationDate"])
        elif include_empty:
            instance.data_expiration_date = str()
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = str()
        if "RequestDate" in dict_ and dict_["RequestDate"] is not None:
            instance.request_date = str(dict_["RequestDate"])
        elif include_empty:
            instance.request_date = str()
        if "ServiceErrors" in dict_ and dict_["ServiceErrors"] is not None:
            instance.service_errors = {str(k0): str(v0) for k0, v0 in dict_["ServiceErrors"].items()}
        elif include_empty:
            instance.service_errors = {}
        if "ServiceStatuses" in dict_ and dict_["ServiceStatuses"] is not None:
            instance.service_statuses = {str(k0): str(v0) for k0, v0 in dict_["ServiceStatuses"].items()}
        elif include_empty:
            instance.service_statuses = {}
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = str()
        if "UserID" in dict_ and dict_["UserID"] is not None:
            instance.user_id = str(dict_["UserID"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsPersonalData]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsPersonalData]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsPersonalData, List[ModelsPersonalData]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "DataExpirationDate": "data_expiration_date",
            "DisplayName": "display_name",
            "RequestDate": "request_date",
            "ServiceErrors": "service_errors",
            "ServiceStatuses": "service_statuses",
            "Status": "status",
            "UserID": "user_id",
        }

    # endregion static methods
