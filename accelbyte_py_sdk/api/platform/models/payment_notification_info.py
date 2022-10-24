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
from ....core import StrEnum


class NotificationSourceEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class StatusEnum(StrEnum):
    ERROR = "ERROR"
    IGNORED = "IGNORED"
    PROCESSED = "PROCESSED"
    WARN = "WARN"


class PaymentNotificationInfo(Model):
    """Payment notification info (PaymentNotificationInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        notification: (notification) REQUIRED Dict[str, Any]

        notification_source: (notificationSource) REQUIRED Union[str, NotificationSourceEnum]

        notification_type: (notificationType) REQUIRED str

        payment_order_no: (paymentOrderNo) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        external_id: (externalId) OPTIONAL str

        status_reason: (statusReason) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    notification: Dict[str, Any]  # REQUIRED
    notification_source: Union[str, NotificationSourceEnum]  # REQUIRED
    notification_type: str  # REQUIRED
    payment_order_no: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    external_id: str  # OPTIONAL
    status_reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> PaymentNotificationInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> PaymentNotificationInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> PaymentNotificationInfo:
        self.namespace = value
        return self

    def with_notification(self, value: Dict[str, Any]) -> PaymentNotificationInfo:
        self.notification = value
        return self

    def with_notification_source(
        self, value: Union[str, NotificationSourceEnum]
    ) -> PaymentNotificationInfo:
        self.notification_source = value
        return self

    def with_notification_type(self, value: str) -> PaymentNotificationInfo:
        self.notification_type = value
        return self

    def with_payment_order_no(self, value: str) -> PaymentNotificationInfo:
        self.payment_order_no = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> PaymentNotificationInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> PaymentNotificationInfo:
        self.updated_at = value
        return self

    def with_external_id(self, value: str) -> PaymentNotificationInfo:
        self.external_id = value
        return self

    def with_status_reason(self, value: str) -> PaymentNotificationInfo:
        self.status_reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "notification"):
            result["notification"] = {
                str(k0): v0 for k0, v0 in self.notification.items()
            }
        elif include_empty:
            result["notification"] = {}
        if hasattr(self, "notification_source"):
            result["notificationSource"] = str(self.notification_source)
        elif include_empty:
            result["notificationSource"] = Union[str, NotificationSourceEnum]()
        if hasattr(self, "notification_type"):
            result["notificationType"] = str(self.notification_type)
        elif include_empty:
            result["notificationType"] = ""
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "external_id"):
            result["externalId"] = str(self.external_id)
        elif include_empty:
            result["externalId"] = ""
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        namespace: str,
        notification: Dict[str, Any],
        notification_source: Union[str, NotificationSourceEnum],
        notification_type: str,
        payment_order_no: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        external_id: Optional[str] = None,
        status_reason: Optional[str] = None,
    ) -> PaymentNotificationInfo:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.notification = notification
        instance.notification_source = notification_source
        instance.notification_type = notification_type
        instance.payment_order_no = payment_order_no
        instance.status = status
        instance.updated_at = updated_at
        if external_id is not None:
            instance.external_id = external_id
        if status_reason is not None:
            instance.status_reason = status_reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentNotificationInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "notification" in dict_ and dict_["notification"] is not None:
            instance.notification = {
                str(k0): v0 for k0, v0 in dict_["notification"].items()
            }
        elif include_empty:
            instance.notification = {}
        if "notificationSource" in dict_ and dict_["notificationSource"] is not None:
            instance.notification_source = str(dict_["notificationSource"])
        elif include_empty:
            instance.notification_source = Union[str, NotificationSourceEnum]()
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = str(dict_["notificationType"])
        elif include_empty:
            instance.notification_type = ""
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "externalId" in dict_ and dict_["externalId"] is not None:
            instance.external_id = str(dict_["externalId"])
        elif include_empty:
            instance.external_id = ""
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentNotificationInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentNotificationInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PaymentNotificationInfo,
        List[PaymentNotificationInfo],
        Dict[Any, PaymentNotificationInfo],
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
            "createdAt": "created_at",
            "id": "id_",
            "namespace": "namespace",
            "notification": "notification",
            "notificationSource": "notification_source",
            "notificationType": "notification_type",
            "paymentOrderNo": "payment_order_no",
            "status": "status",
            "updatedAt": "updated_at",
            "externalId": "external_id",
            "statusReason": "status_reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "namespace": True,
            "notification": True,
            "notificationSource": True,
            "notificationType": True,
            "paymentOrderNo": True,
            "status": True,
            "updatedAt": True,
            "externalId": False,
            "statusReason": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "notificationSource": [
                "ADYEN",
                "ALIPAY",
                "CHECKOUT",
                "PAYPAL",
                "STRIPE",
                "WALLET",
                "WXPAY",
                "XSOLLA",
            ],
            "status": ["ERROR", "IGNORED", "PROCESSED", "WARN"],
        }

    # endregion static methods
