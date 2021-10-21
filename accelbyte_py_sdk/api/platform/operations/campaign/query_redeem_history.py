# Auto-generated at 2021-10-21T08:52:30.909130+08:00
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

from ...models import RedeemHistoryPagingSlicedResult


class QueryRedeemHistory(Operation):
    """Query redeem history (queryRedeemHistory)

    Query redeem history.  
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ)
      *  Returns : slice of redeem history


    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        campaign_id: (campaignId) REQUIRED str in path

        user_id: (userId) OPTIONAL str in query

        code: (code) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - RedeemHistoryPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    campaign_id: str                                                                               # REQUIRED in [path]
    user_id: str                                                                                   # OPTIONAL in [query]
    code: str                                                                                      # OPTIONAL in [query]
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

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "campaign_id",
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
        if hasattr(self, "campaign_id"):
            result["campaignId"] = self.campaign_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "campaign_id") or self.campaign_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryRedeemHistory:
        self.namespace = value
        return self

    def with_campaign_id(self, value: str) -> QueryRedeemHistory:
        self.campaign_id = value
        return self

    def with_user_id(self, value: str) -> QueryRedeemHistory:
        self.user_id = value
        return self

    def with_code(self, value: str) -> QueryRedeemHistory:
        self.code = value
        return self

    def with_offset(self, value: int) -> QueryRedeemHistory:
        self.offset = value
        return self

    def with_limit(self, value: int) -> QueryRedeemHistory:
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
        if hasattr(self, "campaign_id") and self.campaign_id:
            result["campaignId"] = str(self.campaign_id)
        elif include_empty:
            result["campaignId"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, RedeemHistoryPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - RedeemHistoryPagingSlicedResult (successful operation)
        """
        if code == 200:
            return RedeemHistoryPagingSlicedResult.create_from_dict(content), None
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
        campaign_id: str,
        user_id: Optional[str] = None,
        code: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
    ) -> QueryRedeemHistory:
        instance = cls()
        instance.namespace = namespace
        instance.campaign_id = campaign_id
        if user_id is not None:
            instance.user_id = user_id
        if code is not None:
            instance.code = code
        if offset is not None:
            instance.offset = offset
        if limit is not None:
            instance.limit = limit
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryRedeemHistory:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "campaignId" in dict_ and dict_["campaignId"] is not None:
            instance.campaign_id = str(dict_["campaignId"])
        elif include_empty:
            instance.campaign_id = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
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
            "campaignId": "campaign_id",
            "userId": "user_id",
            "code": "code",
            "offset": "offset",
            "limit": "limit",
        }

    # endregion static methods
