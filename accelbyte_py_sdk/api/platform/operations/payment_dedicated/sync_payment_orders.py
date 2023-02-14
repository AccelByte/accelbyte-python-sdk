# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

# AccelByte Cloud Platform Service (4.23.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import PaymentOrderSyncResult


class SyncPaymentOrders(Operation):
    """Sync payment orders (syncPaymentOrders)

    Sync payment orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
    Other detail info:

      * Required permission : resource="ADMIN:PAYMENT", action=2 (READ)
      *  Returns : sync payment orders

    Required Permission(s):
        - ADMIN:PAYMENT [READ]

    Properties:
        url: /platform/admin/payment/orders

        method: GET

        tags: ["Payment(Dedicated)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str in query

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - PaymentOrderSyncResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/payment/orders"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    next_evaluated_key: str  # OPTIONAL in [query]
    end: str  # REQUIRED in [query]
    start: str  # REQUIRED in [query]

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
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "next_evaluated_key"):
            result["nextEvaluatedKey"] = self.next_evaluated_key
        if hasattr(self, "end"):
            result["end"] = self.end
        if hasattr(self, "start"):
            result["start"] = self.start
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_next_evaluated_key(self, value: str) -> SyncPaymentOrders:
        self.next_evaluated_key = value
        return self

    def with_end(self, value: str) -> SyncPaymentOrders:
        self.end = value
        return self

    def with_start(self, value: str) -> SyncPaymentOrders:
        self.start = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "next_evaluated_key") and self.next_evaluated_key:
            result["nextEvaluatedKey"] = str(self.next_evaluated_key)
        elif include_empty:
            result["nextEvaluatedKey"] = ""
        if hasattr(self, "end") and self.end:
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = ""
        if hasattr(self, "start") and self.start:
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, PaymentOrderSyncResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - PaymentOrderSyncResult (successful operation)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return PaymentOrderSyncResult.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        end: str,
        start: str,
        next_evaluated_key: Optional[str] = None,
    ) -> SyncPaymentOrders:
        instance = cls()
        instance.end = end
        instance.start = start
        if next_evaluated_key is not None:
            instance.next_evaluated_key = next_evaluated_key
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SyncPaymentOrders:
        instance = cls()
        if "nextEvaluatedKey" in dict_ and dict_["nextEvaluatedKey"] is not None:
            instance.next_evaluated_key = str(dict_["nextEvaluatedKey"])
        elif include_empty:
            instance.next_evaluated_key = ""
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "nextEvaluatedKey": "next_evaluated_key",
            "end": "end",
            "start": "start",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "nextEvaluatedKey": False,
            "end": True,
            "start": True,
        }

    # endregion static methods
