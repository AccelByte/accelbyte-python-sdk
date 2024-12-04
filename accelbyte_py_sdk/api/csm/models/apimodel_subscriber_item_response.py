# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelSubscriberItemResponse(Model):
    """Apimodel subscriber item response (apimodel.SubscriberItemResponse)

    Properties:
        id_: (id) REQUIRED str

        user_id: (userId) REQUIRED str

        display_name: (displayName) OPTIONAL str

        email_address: (emailAddress) OPTIONAL str

        notification_type: (notificationType) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    user_id: str  # REQUIRED
    display_name: str  # OPTIONAL
    email_address: str  # OPTIONAL
    notification_type: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ApimodelSubscriberItemResponse:
        self.id_ = value
        return self

    def with_user_id(self, value: str) -> ApimodelSubscriberItemResponse:
        self.user_id = value
        return self

    def with_display_name(self, value: str) -> ApimodelSubscriberItemResponse:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> ApimodelSubscriberItemResponse:
        self.email_address = value
        return self

    def with_notification_type(self, value: str) -> ApimodelSubscriberItemResponse:
        self.notification_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "notification_type"):
            result["notificationType"] = str(self.notification_type)
        elif include_empty:
            result["notificationType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        user_id: str,
        display_name: Optional[str] = None,
        email_address: Optional[str] = None,
        notification_type: Optional[str] = None,
        **kwargs,
    ) -> ApimodelSubscriberItemResponse:
        instance = cls()
        instance.id_ = id_
        instance.user_id = user_id
        if display_name is not None:
            instance.display_name = display_name
        if email_address is not None:
            instance.email_address = email_address
        if notification_type is not None:
            instance.notification_type = notification_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelSubscriberItemResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = str(dict_["notificationType"])
        elif include_empty:
            instance.notification_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelSubscriberItemResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelSubscriberItemResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelSubscriberItemResponse,
        List[ApimodelSubscriberItemResponse],
        Dict[Any, ApimodelSubscriberItemResponse],
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
            "id": "id_",
            "userId": "user_id",
            "displayName": "display_name",
            "emailAddress": "email_address",
            "notificationType": "notification_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "userId": True,
            "displayName": False,
            "emailAddress": False,
            "notificationType": False,
        }

    # endregion static methods
