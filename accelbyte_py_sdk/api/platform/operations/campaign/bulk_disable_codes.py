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

from ...models import BulkOperationResult


class BulkDisableCodes(Operation):
    """Bulk disable codes (bulkDisableCodes)

    Bulk disable codes.

    Bulk disable campaign codes, all matched codes will be disabled except those have already been redeemed.
    Other detail info:

      * Returns : the number of code actually disabled

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    campaign_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    batch_name: str  # OPTIONAL in [query]
    batch_no: List[int]  # OPTIONAL in [query]

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
        if hasattr(self, "batch_no"):
            result["batchNo"] = self.batch_no
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_campaign_id(self, value: str) -> BulkDisableCodes:
        self.campaign_id = value
        return self

    def with_namespace(self, value: str) -> BulkDisableCodes:
        self.namespace = value
        return self

    def with_batch_name(self, value: str) -> BulkDisableCodes:
        self.batch_name = value
        return self

    def with_batch_no(self, value: List[int]) -> BulkDisableCodes:
        self.batch_no = value
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
        if hasattr(self, "batch_no") and self.batch_no:
            result["batchNo"] = [int(i0) for i0 in self.batch_no]
        elif include_empty:
            result["batchNo"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, BulkOperationResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - BulkOperationResult (successful operation)

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
            return BulkOperationResult.create_from_dict(content), None

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
        batch_no: Optional[List[int]] = None,
        **kwargs,
    ) -> BulkDisableCodes:
        instance = cls()
        instance.campaign_id = campaign_id
        instance.namespace = namespace
        if batch_name is not None:
            instance.batch_name = batch_name
        if batch_no is not None:
            instance.batch_no = batch_no
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkDisableCodes:
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
        if "batchNo" in dict_ and dict_["batchNo"] is not None:
            instance.batch_no = [int(i0) for i0 in dict_["batchNo"]]
        elif include_empty:
            instance.batch_no = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "campaignId": "campaign_id",
            "namespace": "namespace",
            "batchName": "batch_name",
            "batchNo": "batch_no",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "campaignId": True,
            "namespace": True,
            "batchName": False,
            "batchNo": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "batchNo": "multi",  # in query
        }

    # endregion static methods
