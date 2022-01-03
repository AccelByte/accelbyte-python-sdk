# justice-gdpr-service (1.11.2)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelsUserPersonalData(Model):
    """Models user personal data (models.UserPersonalData)

    Properties:
        data_expiration_date: (DataExpirationDate) REQUIRED str

        request_date: (RequestDate) REQUIRED str

        status: (Status) REQUIRED str
    """

    # region fields

    data_expiration_date: str                                                                      # REQUIRED
    request_date: str                                                                              # REQUIRED
    status: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data_expiration_date(self, value: str) -> ModelsUserPersonalData:
        self.data_expiration_date = value
        return self

    def with_request_date(self, value: str) -> ModelsUserPersonalData:
        self.request_date = value
        return self

    def with_status(self, value: str) -> ModelsUserPersonalData:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data_expiration_date"):
            result["DataExpirationDate"] = str(self.data_expiration_date)
        elif include_empty:
            result["DataExpirationDate"] = str()
        if hasattr(self, "request_date"):
            result["RequestDate"] = str(self.request_date)
        elif include_empty:
            result["RequestDate"] = str()
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data_expiration_date: str,
        request_date: str,
        status: str,
    ) -> ModelsUserPersonalData:
        instance = cls()
        instance.data_expiration_date = data_expiration_date
        instance.request_date = request_date
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUserPersonalData:
        instance = cls()
        if not dict_:
            return instance
        if "DataExpirationDate" in dict_ and dict_["DataExpirationDate"] is not None:
            instance.data_expiration_date = str(dict_["DataExpirationDate"])
        elif include_empty:
            instance.data_expiration_date = str()
        if "RequestDate" in dict_ and dict_["RequestDate"] is not None:
            instance.request_date = str(dict_["RequestDate"])
        elif include_empty:
            instance.request_date = str()
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "DataExpirationDate": "data_expiration_date",
            "RequestDate": "request_date",
            "Status": "status",
        }

    # endregion static methods
