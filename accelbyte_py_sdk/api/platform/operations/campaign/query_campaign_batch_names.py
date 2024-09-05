# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

# AccelByte Gaming Services Platform Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import CampaignBatchNameInfo


class QueryCampaignBatchNames(Operation):
    """Query campaign batch names (queryCampaignBatchNames)

    Query campaign batch name by fuzzy match.
    Other detail info:

      * Returns : list of campaign batch names

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchNames

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - List[CampaignBatchNameInfo] (successful operation)
    """

    # region fields

    _url: str = (
        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchNames"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    campaign_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    batch_name: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]

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
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "campaign_id"):
            result["campaignId"] = self.campaign_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "batch_name"):
            result["batchName"] = self.batch_name
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_campaign_id(self, value: str) -> QueryCampaignBatchNames:
        self.campaign_id = value
        return self

    def with_namespace(self, value: str) -> QueryCampaignBatchNames:
        self.namespace = value
        return self

    def with_batch_name(self, value: str) -> QueryCampaignBatchNames:
        self.batch_name = value
        return self

    def with_limit(self, value: int) -> QueryCampaignBatchNames:
        self.limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "campaign_id") and self.campaign_id:
            result["campaignId"] = str(self.campaign_id)
        elif include_empty:
            result["campaignId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "batch_name") and self.batch_name:
            result["batchName"] = str(self.batch_name)
        elif include_empty:
            result["batchName"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, List[CampaignBatchNameInfo]], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - List[CampaignBatchNameInfo] (successful operation)

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
            return [CampaignBatchNameInfo.create_from_dict(i) for i in content], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        campaign_id: str,
        namespace: str,
        batch_name: Optional[str] = None,
        limit: Optional[int] = None,
        **kwargs,
    ) -> QueryCampaignBatchNames:
        instance = cls()
        instance.campaign_id = campaign_id
        instance.namespace = namespace
        if batch_name is not None:
            instance.batch_name = batch_name
        if limit is not None:
            instance.limit = limit
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QueryCampaignBatchNames:
        instance = cls()
        if "campaignId" in dict_ and dict_["campaignId"] is not None:
            instance.campaign_id = str(dict_["campaignId"])
        elif include_empty:
            instance.campaign_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "batchName" in dict_ and dict_["batchName"] is not None:
            instance.batch_name = str(dict_["batchName"])
        elif include_empty:
            instance.batch_name = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "campaignId": "campaign_id",
            "namespace": "namespace",
            "batchName": "batch_name",
            "limit": "limit",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "campaignId": True,
            "namespace": True,
            "batchName": False,
            "limit": False,
        }

    # endregion static methods
