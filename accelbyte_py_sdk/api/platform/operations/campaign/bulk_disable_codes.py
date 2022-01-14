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

from ...models import BulkOperationResult


class BulkDisableCodes(Operation):
    """Bulk disable codes (bulkDisableCodes)

    Bulk disable codes.<p>Bulk disable campaign codes, all matched codes will be
    disabled except those have already been redeemed.<br>Other detail info:
    <ul><li><i>Required permission</i>:
    resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=4
    (UPDATE)</li><li><i>Returns</i>: the number of code actually
    disabled</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_no: (batchNo) OPTIONAL int in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    campaign_id: str                                                                               # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]
    batch_no: int                                                                                  # OPTIONAL in [query]

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
            "campaign_id",
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
        if hasattr(self, "campaign_id"):
            result["campaignId"] = self.campaign_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "batch_no"):
            result["batchNo"] = self.batch_no
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "campaign_id") or self.campaign_id is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_campaign_id(self, value: str) -> BulkDisableCodes:
        self.campaign_id = value
        return self

    def with_namespace(self, value: str) -> BulkDisableCodes:
        self.namespace = value
        return self

    def with_batch_no(self, value: int) -> BulkDisableCodes:
        self.batch_no = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "campaign_id") and self.campaign_id:
            result["campaignId"] = str(self.campaign_id)
        elif include_empty:
            result["campaignId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "batch_no") and self.batch_no:
            result["batchNo"] = int(self.batch_no)
        elif include_empty:
            result["batchNo"] = int()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, BulkOperationResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - BulkOperationResult (successful operation)
        """
        if code == 200:
            return BulkOperationResult.create_from_dict(content), None
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
        campaign_id: str,
        namespace: str,
        batch_no: Optional[int] = None,
    ) -> BulkDisableCodes:
        instance = cls()
        instance.campaign_id = campaign_id
        instance.namespace = namespace
        if batch_no is not None:
            instance.batch_no = batch_no
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> BulkDisableCodes:
        instance = cls()
        if "campaignId" in dict_ and dict_["campaignId"] is not None:
            instance.campaign_id = str(dict_["campaignId"])
        elif include_empty:
            instance.campaign_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "batchNo" in dict_ and dict_["batchNo"] is not None:
            instance.batch_no = int(dict_["batchNo"])
        elif include_empty:
            instance.batch_no = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "campaignId": "campaign_id",
            "namespace": "namespace",
            "batchNo": "batch_no",
        }

    # endregion static methods
