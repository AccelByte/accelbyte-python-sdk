# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Gdpr Service (1.15.1)

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

    data_expiration_date: str  # REQUIRED
    request_date: str  # REQUIRED
    status: str  # REQUIRED

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
            result["DataExpirationDate"] = ""
        if hasattr(self, "request_date"):
            result["RequestDate"] = str(self.request_date)
        elif include_empty:
            result["RequestDate"] = ""
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserPersonalData:
        instance = cls()
        if not dict_:
            return instance
        if "DataExpirationDate" in dict_ and dict_["DataExpirationDate"] is not None:
            instance.data_expiration_date = str(dict_["DataExpirationDate"])
        elif include_empty:
            instance.data_expiration_date = ""
        if "RequestDate" in dict_ and dict_["RequestDate"] is not None:
            instance.request_date = str(dict_["RequestDate"])
        elif include_empty:
            instance.request_date = ""
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserPersonalData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserPersonalData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserPersonalData,
        List[ModelsUserPersonalData],
        Dict[Any, ModelsUserPersonalData],
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
            "DataExpirationDate": "data_expiration_date",
            "RequestDate": "request_date",
            "Status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "DataExpirationDate": True,
            "RequestDate": True,
            "Status": True,
        }

    # endregion static methods
