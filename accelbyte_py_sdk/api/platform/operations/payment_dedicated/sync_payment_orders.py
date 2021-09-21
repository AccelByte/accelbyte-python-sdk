# Auto-generated at 2021-09-21T14:10:39.210984+08:00
# from: Justice Platform Service (3.24.0)

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

from .....core import Operation
from .....core import HttpResponse

from ...models import PaymentOrderSyncResult


class SyncPaymentOrders(Operation):
    """Sync payment orders (syncPaymentOrders)

    Properties:
        url: /platform/admin/payment/orders

        method: GET

        tags: Payment(Dedicated)

        consumes: []

        produces: ["application/json"]

        security: bearer

        start: (start) REQUIRED str in query

        end: (end) REQUIRED str in query

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str in query

    Responses:
        200: OK - PaymentOrderSyncResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/payment/orders"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    start: str                                                                                     # REQUIRED in [query]
    end: str                                                                                       # REQUIRED in [query]
    next_evaluated_key: str                                                                        # OPTIONAL in [query]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        result += self.url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "start",
            "end",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "start"):
            result["start"] = self.start
        if hasattr(self, "end"):
            result["end"] = self.end
        if hasattr(self, "next_evaluated_key"):
            result["nextEvaluatedKey"] = self.next_evaluated_key
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "start") or self.start is None:
            return False
        if not hasattr(self, "end") or self.end is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_start(self, value: str) -> SyncPaymentOrders:
        self.start = value
        return self

    def with_end(self, value: str) -> SyncPaymentOrders:
        self.end = value
        return self

    def with_next_evaluated_key(self, value: str) -> SyncPaymentOrders:
        self.next_evaluated_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "start") and self.start:
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = str()
        if hasattr(self, "end") and self.end:
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = str()
        if hasattr(self, "next_evaluated_key") and self.next_evaluated_key:
            result["nextEvaluatedKey"] = str(self.next_evaluated_key)
        elif include_empty:
            result["nextEvaluatedKey"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, PaymentOrderSyncResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - PaymentOrderSyncResult (successful operation)
        """
        if code == 200:
            return PaymentOrderSyncResult.create_from_dict(content), None
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        start: str,
        end: str,
        next_evaluated_key: Optional[str] = None,
    ) -> SyncPaymentOrders:
        instance = cls()
        instance.start = start
        instance.end = end
        if next_evaluated_key is not None:
            instance.next_evaluated_key = next_evaluated_key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SyncPaymentOrders:
        instance = cls()
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = str()
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = str()
        if "nextEvaluatedKey" in dict_ and dict_["nextEvaluatedKey"] is not None:
            instance.next_evaluated_key = str(dict_["nextEvaluatedKey"])
        elif include_empty:
            instance.next_evaluated_key = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "start": "start",
            "end": "end",
            "nextEvaluatedKey": "next_evaluated_key",
        }

    # endregion static methods
