# justice-platform-service (3.40.0)

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

from .....core import Operation
from .....core import HttpResponse

from ...models import PaymentNotificationPagingSlicedResult


class QueryPaymentNotifications(Operation):
    """Query payment notifications (queryPaymentNotifications)

    Query payment notifications.<br>Other detail info: <ul><li><i>Required
    permission</i>: resource="ADMIN:NAMESPACE:{namespace}:PAYMENT:NOTIFICATION",
    action=2 (READ)</li><li><i>Returns</i>: Payment notifications</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/notifications

        method: GET

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        external_id: (externalId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        notification_source: (notificationSource) OPTIONAL str in query

        notification_type: (notificationType) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        payment_order_no: (paymentOrderNo) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - PaymentNotificationPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/payment/notifications"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    end_date: str                                                                                  # OPTIONAL in [query]
    external_id: str                                                                               # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    notification_source: str                                                                       # OPTIONAL in [query]
    notification_type: str                                                                         # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    payment_order_no: str                                                                          # OPTIONAL in [query]
    start_date: str                                                                                # OPTIONAL in [query]
    status: str                                                                                    # OPTIONAL in [query]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "external_id"):
            result["externalId"] = self.external_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "notification_source"):
            result["notificationSource"] = self.notification_source
        if hasattr(self, "notification_type"):
            result["notificationType"] = self.notification_type
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = self.payment_order_no
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        if hasattr(self, "status"):
            result["status"] = self.status
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryPaymentNotifications:
        self.namespace = value
        return self

    def with_end_date(self, value: str) -> QueryPaymentNotifications:
        self.end_date = value
        return self

    def with_external_id(self, value: str) -> QueryPaymentNotifications:
        self.external_id = value
        return self

    def with_limit(self, value: int) -> QueryPaymentNotifications:
        self.limit = value
        return self

    def with_notification_source(self, value: str) -> QueryPaymentNotifications:
        self.notification_source = value
        return self

    def with_notification_type(self, value: str) -> QueryPaymentNotifications:
        self.notification_type = value
        return self

    def with_offset(self, value: int) -> QueryPaymentNotifications:
        self.offset = value
        return self

    def with_payment_order_no(self, value: str) -> QueryPaymentNotifications:
        self.payment_order_no = value
        return self

    def with_start_date(self, value: str) -> QueryPaymentNotifications:
        self.start_date = value
        return self

    def with_status(self, value: str) -> QueryPaymentNotifications:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "external_id") and self.external_id:
            result["externalId"] = str(self.external_id)
        elif include_empty:
            result["externalId"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "notification_source") and self.notification_source:
            result["notificationSource"] = str(self.notification_source)
        elif include_empty:
            result["notificationSource"] = str()
        if hasattr(self, "notification_type") and self.notification_type:
            result["notificationType"] = str(self.notification_type)
        elif include_empty:
            result["notificationType"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, PaymentNotificationPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - PaymentNotificationPagingSlicedResult (successful operation)
        """
        if code == 200:
            return PaymentNotificationPagingSlicedResult.create_from_dict(content), None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        end_date: Optional[str] = None,
        external_id: Optional[str] = None,
        limit: Optional[int] = None,
        notification_source: Optional[str] = None,
        notification_type: Optional[str] = None,
        offset: Optional[int] = None,
        payment_order_no: Optional[str] = None,
        start_date: Optional[str] = None,
        status: Optional[str] = None,
    ) -> QueryPaymentNotifications:
        instance = cls()
        instance.namespace = namespace
        if end_date is not None:
            instance.end_date = end_date
        if external_id is not None:
            instance.external_id = external_id
        if limit is not None:
            instance.limit = limit
        if notification_source is not None:
            instance.notification_source = notification_source
        if notification_type is not None:
            instance.notification_type = notification_type
        if offset is not None:
            instance.offset = offset
        if payment_order_no is not None:
            instance.payment_order_no = payment_order_no
        if start_date is not None:
            instance.start_date = start_date
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryPaymentNotifications:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "externalId" in dict_ and dict_["externalId"] is not None:
            instance.external_id = str(dict_["externalId"])
        elif include_empty:
            instance.external_id = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "notificationSource" in dict_ and dict_["notificationSource"] is not None:
            instance.notification_source = str(dict_["notificationSource"])
        elif include_empty:
            instance.notification_source = str()
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = str(dict_["notificationType"])
        elif include_empty:
            instance.notification_type = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "endDate": "end_date",
            "externalId": "external_id",
            "limit": "limit",
            "notificationSource": "notification_source",
            "notificationType": "notification_type",
            "offset": "offset",
            "paymentOrderNo": "payment_order_no",
            "startDate": "start_date",
            "status": "status",
        }

    # endregion static methods
