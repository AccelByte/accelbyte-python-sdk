# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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

        package_name: (packageName) REQUIRED str

        service_account_id: (serviceAccountId) REQUIRED str

        notification_token_audience: (notificationTokenAudience) OPTIONAL str

        notification_token_email: (notificationTokenEmail) OPTIONAL str
    """

    # region fields

    application_name: str  # REQUIRED
    package_name: str  # REQUIRED
    service_account_id: str  # REQUIRED
    notification_token_audience: str  # OPTIONAL
    notification_token_email: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_application_name(self, value: str) -> GoogleIAPConfigRequest:
        self.application_name = value
        return self

    def with_package_name(self, value: str) -> GoogleIAPConfigRequest:
        self.package_name = value
        return self

    def with_service_account_id(self, value: str) -> GoogleIAPConfigRequest:
        self.service_account_id = value
        return self

    def with_notification_token_audience(self, value: str) -> GoogleIAPConfigRequest:
        self.notification_token_audience = value
        return self

    def with_notification_token_email(self, value: str) -> GoogleIAPConfigRequest:
        self.notification_token_email = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "application_name"):
            result["applicationName"] = str(self.application_name)
        elif include_empty:
            result["applicationName"] = ""
        if hasattr(self, "package_name"):
            result["packageName"] = str(self.package_name)
        elif include_empty:
            result["packageName"] = ""
        if hasattr(self, "service_account_id"):
            result["serviceAccountId"] = str(self.service_account_id)
        elif include_empty:
            result["serviceAccountId"] = ""
        if hasattr(self, "notification_token_audience"):
            result["notificationTokenAudience"] = str(self.notification_token_audience)
        elif include_empty:
            result["notificationTokenAudience"] = ""
        if hasattr(self, "notification_token_email"):
            result["notificationTokenEmail"] = str(self.notification_token_email)
        elif include_empty:
            result["notificationTokenEmail"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        application_name: str,
        package_name: str,
        service_account_id: str,
        notification_token_audience: Optional[str] = None,
        notification_token_email: Optional[str] = None,
        **kwargs,
    ) -> GoogleIAPConfigRequest:
        instance = cls()
        instance.application_name = application_name
        instance.package_name = package_name
        instance.service_account_id = service_account_id
        if notification_token_audience is not None:
            instance.notification_token_audience = notification_token_audience
        if notification_token_email is not None:
            instance.notification_token_email = notification_token_email
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
        if "packageName" in dict_ and dict_["packageName"] is not None:
            instance.package_name = str(dict_["packageName"])
        elif include_empty:
            instance.package_name = ""
        if "serviceAccountId" in dict_ and dict_["serviceAccountId"] is not None:
            instance.service_account_id = str(dict_["serviceAccountId"])
        elif include_empty:
            instance.service_account_id = ""
        if (
            "notificationTokenAudience" in dict_
            and dict_["notificationTokenAudience"] is not None
        ):
            instance.notification_token_audience = str(
                dict_["notificationTokenAudience"]
            )
        elif include_empty:
            instance.notification_token_audience = ""
        if (
            "notificationTokenEmail" in dict_
            and dict_["notificationTokenEmail"] is not None
        ):
            instance.notification_token_email = str(dict_["notificationTokenEmail"])
        elif include_empty:
            instance.notification_token_email = ""
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
            "packageName": "package_name",
            "serviceAccountId": "service_account_id",
            "notificationTokenAudience": "notification_token_audience",
            "notificationTokenEmail": "notification_token_email",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "applicationName": True,
            "packageName": True,
            "serviceAccountId": True,
            "notificationTokenAudience": False,
            "notificationTokenEmail": False,
        }

    # endregion static methods
