# justice-platform-service (3.39.0)

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

from ...models import BillingHistoryPagingSlicedResult


class PublicGetUserSubscriptionBillingHistories(Operation):
    """Get user subscription billing histories (publicGetUserSubscriptionBillingHistories)

    Get user subscription billing histories.<br>Other detail info:
    <ul><li><i>Required permission</i>:
    resource="NAMESPACE:{namespace}:USER:{userId}:SUBSCRIPTION", action=2
    (READ)</li><li><i>Returns</i>: paginated subscription history</li></ul>


    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history

        method: GET

        tags: ["Subscription"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_free: (excludeFree) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - BillingHistoryPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    subscription_id: str                                                                           # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    exclude_free: bool                                                                             # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]

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
            "subscription_id",
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
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = self.subscription_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "exclude_free"):
            result["excludeFree"] = self.exclude_free
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "subscription_id") or self.subscription_id is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicGetUserSubscriptionBillingHistories:
        self.namespace = value
        return self

    def with_subscription_id(self, value: str) -> PublicGetUserSubscriptionBillingHistories:
        self.subscription_id = value
        return self

    def with_user_id(self, value: str) -> PublicGetUserSubscriptionBillingHistories:
        self.user_id = value
        return self

    def with_exclude_free(self, value: bool) -> PublicGetUserSubscriptionBillingHistories:
        self.exclude_free = value
        return self

    def with_limit(self, value: int) -> PublicGetUserSubscriptionBillingHistories:
        self.limit = value
        return self

    def with_offset(self, value: int) -> PublicGetUserSubscriptionBillingHistories:
        self.offset = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "subscription_id") and self.subscription_id:
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "exclude_free") and self.exclude_free:
            result["excludeFree"] = bool(self.exclude_free)
        elif include_empty:
            result["excludeFree"] = bool()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, BillingHistoryPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - BillingHistoryPagingSlicedResult (successful operation)
        """
        if code == 200:
            return BillingHistoryPagingSlicedResult.create_from_dict(content), None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        subscription_id: str,
        user_id: str,
        exclude_free: Optional[bool] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
    ) -> PublicGetUserSubscriptionBillingHistories:
        instance = cls()
        instance.namespace = namespace
        instance.subscription_id = subscription_id
        instance.user_id = user_id
        if exclude_free is not None:
            instance.exclude_free = exclude_free
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicGetUserSubscriptionBillingHistories:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "excludeFree" in dict_ and dict_["excludeFree"] is not None:
            instance.exclude_free = bool(dict_["excludeFree"])
        elif include_empty:
            instance.exclude_free = bool()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "subscriptionId": "subscription_id",
            "userId": "user_id",
            "excludeFree": "exclude_free",
            "limit": "limit",
            "offset": "offset",
        }

    # endregion static methods
