# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class GoogleIAPConfigRequest(Model):
    """Google IAP config request (GoogleIAPConfigRequest)

    Properties:
        application_name: (applicationName) REQUIRED str

        service_account_id: (serviceAccountId) REQUIRED str
    """

    # region fields

    application_name: str  # REQUIRED
    service_account_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_application_name(self, value: str) -> GoogleIAPConfigRequest:
        self.application_name = value
        return self

    def with_service_account_id(self, value: str) -> GoogleIAPConfigRequest:
        self.service_account_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "application_name"):
            result["applicationName"] = str(self.application_name)
        elif include_empty:
            result["applicationName"] = ""
        if hasattr(self, "service_account_id"):
            result["serviceAccountId"] = str(self.service_account_id)
        elif include_empty:
            result["serviceAccountId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        application_name: str,
        service_account_id: str,
    ) -> GoogleIAPConfigRequest:
        instance = cls()
        instance.application_name = application_name
        instance.service_account_id = service_account_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GoogleIAPConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "applicationName" in dict_ and dict_["applicationName"] is not None:
            instance.application_name = str(dict_["applicationName"])
        elif include_empty:
            instance.application_name = ""
        if "serviceAccountId" in dict_ and dict_["serviceAccountId"] is not None:
            instance.service_account_id = str(dict_["serviceAccountId"])
        elif include_empty:
            instance.service_account_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GoogleIAPConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GoogleIAPConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GoogleIAPConfigRequest,
        List[GoogleIAPConfigRequest],
        Dict[Any, GoogleIAPConfigRequest],
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
            "applicationName": "application_name",
            "serviceAccountId": "service_account_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "applicationName": True,
            "serviceAccountId": True,
        }

    # endregion static methods
