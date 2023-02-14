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
from .....core import StrEnum


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class DownloadInvoiceDetails(Operation):
    """Download invoice details (downloadInvoiceDetails)

    Download invoice details as a csv file.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ORDER", action=2 (READ)
      *  Returns : invoice details csv file

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ORDER [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/invoice/details.csv

        method: GET

        tags: ["Invoice"]

        consumes: []

        produces: ["text/csv"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        feature: (feature) OPTIONAL str in query

        item_id: (itemId) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        end_time: (endTime) REQUIRED str in query

        start_time: (startTime) REQUIRED str in query

    Responses:
        200: OK - Any (Successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/invoice/details.csv"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["text/csv"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    feature: str  # OPTIONAL in [query]
    item_id: str  # OPTIONAL in [query]
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL in [query]
    end_time: str  # REQUIRED in [query]
    start_time: str  # REQUIRED in [query]

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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "feature"):
            result["feature"] = self.feature
        if hasattr(self, "item_id"):
            result["itemId"] = self.item_id
        if hasattr(self, "item_type"):
            result["itemType"] = self.item_type
        if hasattr(self, "end_time"):
            result["endTime"] = self.end_time
        if hasattr(self, "start_time"):
            result["startTime"] = self.start_time
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> DownloadInvoiceDetails:
        self.namespace = value
        return self

    def with_feature(self, value: str) -> DownloadInvoiceDetails:
        self.feature = value
        return self

    def with_item_id(self, value: str) -> DownloadInvoiceDetails:
        self.item_id = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> DownloadInvoiceDetails:
        self.item_type = value
        return self

    def with_end_time(self, value: str) -> DownloadInvoiceDetails:
        self.end_time = value
        return self

    def with_start_time(self, value: str) -> DownloadInvoiceDetails:
        self.start_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "feature") and self.feature:
            result["feature"] = str(self.feature)
        elif include_empty:
            result["feature"] = ""
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "end_time") and self.end_time:
            result["endTime"] = str(self.end_time)
        elif include_empty:
            result["endTime"] = ""
        if hasattr(self, "start_time") and self.start_time:
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, Any], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - Any (Successful operation)

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
            return content, None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        end_time: str,
        start_time: str,
        feature: Optional[str] = None,
        item_id: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
    ) -> DownloadInvoiceDetails:
        instance = cls()
        instance.namespace = namespace
        instance.end_time = end_time
        instance.start_time = start_time
        if feature is not None:
            instance.feature = feature
        if item_id is not None:
            instance.item_id = item_id
        if item_type is not None:
            instance.item_type = item_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DownloadInvoiceDetails:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "feature" in dict_ and dict_["feature"] is not None:
            instance.feature = str(dict_["feature"])
        elif include_empty:
            instance.feature = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "endTime" in dict_ and dict_["endTime"] is not None:
            instance.end_time = str(dict_["endTime"])
        elif include_empty:
            instance.end_time = ""
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "feature": "feature",
            "itemId": "item_id",
            "itemType": "item_type",
            "endTime": "end_time",
            "startTime": "start_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "feature": False,
            "itemId": False,
            "itemType": False,
            "endTime": True,
            "startTime": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemType": [
                "APP",
                "BUNDLE",
                "CODE",
                "COINS",
                "EXTENSION",
                "INGAMEITEM",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],  # in query
        }

    # endregion static methods
