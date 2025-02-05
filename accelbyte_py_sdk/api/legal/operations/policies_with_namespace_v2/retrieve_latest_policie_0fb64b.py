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

# AccelByte Gaming Services Legal Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import RetrieveSimplePolicyPublicResponseV2


class RetrieveLatestPoliciesByNamespaceAndCountryPublic1(Operation):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesByNamespaceAndCountryPublic_1)

    This API is used to list all the related doc in register page, include optional & mandatory (when env config APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=true).
    Other detail info:

    Here are the result of different cases
        * Document 1, Region US (default, mandatory), UA (optional); clientID: [client_A]
        * Document 2, Region US (default, optional), UA (mandatory); clientID: [client_A]
        * Document 3, Region UA (default, mandatory); clientID: [client_A]
        * Document 4, Region US (default, optional); clientID: [client_A]
        * Document 5, Region US (default, optional); clientID: [client_B]
        * Document 6, Region CA (mandatory, optional), UA (optional); clientID: [client_B]
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region CA + client_A
        * Response: Document 1 (US, mandatory), Document 2 (US, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional), Document 6 (UA, optional)
        * Query by: Region CN + client_B
        * Response: Document 5 (US, optional), Document 6 (CA, mandatory)
    Note: If APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=false the behavior will be same with `/agreement/public/policies/namespaces/{namespace}/countries/{country_code}?defaultOnEmpty=true&visibleOnly;=true`;Here are the result of different cases
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional)

    Properties:
        url: /agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode}

        method: GET

        tags: ["Policies With Namespace V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        client_id: (clientId) REQUIRED str in query

    Responses:
        200: OK - List[RetrieveSimplePolicyPublicResponseV2] (successful operation)
    """

    # region fields

    _url: str = (
        "/agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode}"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    country_code: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    client_id: str  # REQUIRED in [query]

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
        if hasattr(self, "country_code"):
            result["countryCode"] = self.country_code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "client_id"):
            result["clientId"] = self.client_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_country_code(
        self, value: str
    ) -> RetrieveLatestPoliciesByNamespaceAndCountryPublic1:
        self.country_code = value
        return self

    def with_namespace(
        self, value: str
    ) -> RetrieveLatestPoliciesByNamespaceAndCountryPublic1:
        self.namespace = value
        return self

    def with_client_id(
        self, value: str
    ) -> RetrieveLatestPoliciesByNamespaceAndCountryPublic1:
        self.client_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "country_code") and self.country_code:
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "client_id") and self.client_id:
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[RetrieveSimplePolicyPublicResponseV2]],
        Union[None, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - List[RetrieveSimplePolicyPublicResponseV2] (successful operation)

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
            return [
                RetrieveSimplePolicyPublicResponseV2.create_from_dict(i)
                for i in content
            ], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, country_code: str, namespace: str, client_id: str, **kwargs
    ) -> RetrieveLatestPoliciesByNamespaceAndCountryPublic1:
        instance = cls()
        instance.country_code = country_code
        instance.namespace = namespace
        instance.client_id = client_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveLatestPoliciesByNamespaceAndCountryPublic1:
        instance = cls()
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "countryCode": "country_code",
            "namespace": "namespace",
            "clientId": "client_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "countryCode": True,
            "namespace": True,
            "clientId": True,
        }

    # endregion static methods
