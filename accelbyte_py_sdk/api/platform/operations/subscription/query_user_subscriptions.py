# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-platform-service (4.3.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import SubscriptionPagingSlicedResult


class QueryUserSubscriptions(Operation):
    """Query user subscriptions (queryUserSubscriptions)

    Query user subscriptions.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SUBSCRIPTION", action=2 (READ)
      *  Returns : paginated subscription

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:SUBSCRIPTION [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions

        method: GET

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        charge_status: (chargeStatus) OPTIONAL str in query

        item_id: (itemId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sku: (sku) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        subscribed_by: (subscribedBy) OPTIONAL str in query

    Responses:
        200: OK - SubscriptionPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    charge_status: str                                                                             # OPTIONAL in [query]
    item_id: str                                                                                   # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    sku: str                                                                                       # OPTIONAL in [query]
    status: str                                                                                    # OPTIONAL in [query]
    subscribed_by: str                                                                             # OPTIONAL in [query]

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

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
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
            "user_id",
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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "charge_status"):
            result["chargeStatus"] = self.charge_status
        if hasattr(self, "item_id"):
            result["itemId"] = self.item_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "sku"):
            result["sku"] = self.sku
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "subscribed_by"):
            result["subscribedBy"] = self.subscribed_by
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryUserSubscriptions:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> QueryUserSubscriptions:
        self.user_id = value
        return self

    def with_charge_status(self, value: str) -> QueryUserSubscriptions:
        self.charge_status = value
        return self

    def with_item_id(self, value: str) -> QueryUserSubscriptions:
        self.item_id = value
        return self

    def with_limit(self, value: int) -> QueryUserSubscriptions:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryUserSubscriptions:
        self.offset = value
        return self

    def with_sku(self, value: str) -> QueryUserSubscriptions:
        self.sku = value
        return self

    def with_status(self, value: str) -> QueryUserSubscriptions:
        self.status = value
        return self

    def with_subscribed_by(self, value: str) -> QueryUserSubscriptions:
        self.subscribed_by = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "charge_status") and self.charge_status:
            result["chargeStatus"] = str(self.charge_status)
        elif include_empty:
            result["chargeStatus"] = str()
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "subscribed_by") and self.subscribed_by:
            result["subscribedBy"] = str(self.subscribed_by)
        elif include_empty:
            result["subscribedBy"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, SubscriptionPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - SubscriptionPagingSlicedResult (successful operation)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return SubscriptionPagingSlicedResult.create_from_dict(content), None

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        charge_status: Optional[str] = None,
        item_id: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        sku: Optional[str] = None,
        status: Optional[str] = None,
        subscribed_by: Optional[str] = None,
    ) -> QueryUserSubscriptions:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if charge_status is not None:
            instance.charge_status = charge_status
        if item_id is not None:
            instance.item_id = item_id
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if sku is not None:
            instance.sku = sku
        if status is not None:
            instance.status = status
        if subscribed_by is not None:
            instance.subscribed_by = subscribed_by
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryUserSubscriptions:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "chargeStatus" in dict_ and dict_["chargeStatus"] is not None:
            instance.charge_status = str(dict_["chargeStatus"])
        elif include_empty:
            instance.charge_status = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "subscribedBy" in dict_ and dict_["subscribedBy"] is not None:
            instance.subscribed_by = str(dict_["subscribedBy"])
        elif include_empty:
            instance.subscribed_by = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "chargeStatus": "charge_status",
            "itemId": "item_id",
            "limit": "limit",
            "offset": "offset",
            "sku": "sku",
            "status": "status",
            "subscribedBy": "subscribed_by",
        }

    # endregion static methods
