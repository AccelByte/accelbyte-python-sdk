# Auto-generated at 2021-10-21T08:52:31.432115+08:00
# from: Justice platform Service (3.34.0)

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

from ...models import PaymentProviderConfigPagingSlicedResult


class QueryPaymentProviderConfig(Operation):
    """Query payment provider config (queryPaymentProviderConfig)

    Query payment provider config.  
    Other detail info:

      * Required permission : resource="ADMIN:PAYMENT:CONFIG", action=2 (READ)
      *  Returns : payment provider config list


    Properties:
        url: /platform/admin/payment/config/provider

        method: GET

        tags: ["PaymentConfig"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - PaymentProviderConfigPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/payment/config/provider"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # OPTIONAL in [query]
    region: str                                                                                    # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]

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
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryPaymentProviderConfig:
        self.namespace = value
        return self

    def with_region(self, value: str) -> QueryPaymentProviderConfig:
        self.region = value
        return self

    def with_offset(self, value: int) -> QueryPaymentProviderConfig:
        self.offset = value
        return self

    def with_limit(self, value: int) -> QueryPaymentProviderConfig:
        self.limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, PaymentProviderConfigPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - PaymentProviderConfigPagingSlicedResult (successful operation)
        """
        if code == 200:
            return PaymentProviderConfigPagingSlicedResult.create_from_dict(content), None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: Optional[str] = None,
        region: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
    ) -> QueryPaymentProviderConfig:
        instance = cls()
        if namespace is not None:
            instance.namespace = namespace
        if region is not None:
            instance.region = region
        if offset is not None:
            instance.offset = offset
        if limit is not None:
            instance.limit = limit
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryPaymentProviderConfig:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "region": "region",
            "offset": "offset",
            "limit": "limit",
        }

    # endregion static methods
