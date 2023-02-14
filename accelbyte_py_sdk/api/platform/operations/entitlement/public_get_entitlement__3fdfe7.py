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

from ...models import OwnershipToken


class PublicGetEntitlementOwnershipToken(Operation):
    """Gets an entitlement ownership token (publicGetEntitlementOwnershipToken)

    Gets an entitlement ownership token of specified itemIds, skus and appIds

    The decoded ownership token header like below:


        {

          "kid": "9fd4cd5f991cebe3323605cd12d3b8bfdfc73fa4",

          "typ": "JWT",

          "alg": "RS256"

        }



    That you can get the jwks by api /platform/jwks, if the configured private key is same as IAM,

    you can also get jwks from IAM endpoint.

    The decoded ownership token payload like below:


        {

         "namespace": "accelbyte",

         "entitlements": [

          {

            "itemId": "4c1296291f604c199f7bb7f0ee02e5f8",

            "appType": null,

            "appId": null,

            "namespace": "accelbyte",

            "itemNamespace": "accelbyte",

            "sku": "prime-plus"

          },

          {

            "itemId": "e8f4974cf45c4e1f8d4f0c6990c518bd",

            "appType": "GAME",

            "appId": "omeganebula",

            "namespace": "accelbyte",

            "itemNamespace": "accelbyte",

            "sku": "APPG005ON"

          }

         ],

        "sub": "66459eb6a4e44e6fb0040bd20c1079a5",

        "exp": 1619624360,

        "iat": 1619624060

        }



    if there's no active entitlement for the specific params, the entitlements section will be omitted.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_ids: (appIds) OPTIONAL List[str] in query

        item_ids: (itemIds) OPTIONAL List[str] in query

        skus: (skus) OPTIONAL List[str] in query

    Responses:
        200: OK - OwnershipToken (successful operation)
    """

    # region fields

    _url: str = (
        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    app_ids: List[str]  # OPTIONAL in [query]
    item_ids: List[str]  # OPTIONAL in [query]
    skus: List[str]  # OPTIONAL in [query]

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
        if hasattr(self, "app_ids"):
            result["appIds"] = self.app_ids
        if hasattr(self, "item_ids"):
            result["itemIds"] = self.item_ids
        if hasattr(self, "skus"):
            result["skus"] = self.skus
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicGetEntitlementOwnershipToken:
        self.namespace = value
        return self

    def with_app_ids(self, value: List[str]) -> PublicGetEntitlementOwnershipToken:
        self.app_ids = value
        return self

    def with_item_ids(self, value: List[str]) -> PublicGetEntitlementOwnershipToken:
        self.item_ids = value
        return self

    def with_skus(self, value: List[str]) -> PublicGetEntitlementOwnershipToken:
        self.skus = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "app_ids") and self.app_ids:
            result["appIds"] = [str(i0) for i0 in self.app_ids]
        elif include_empty:
            result["appIds"] = []
        if hasattr(self, "item_ids") and self.item_ids:
            result["itemIds"] = [str(i0) for i0 in self.item_ids]
        elif include_empty:
            result["itemIds"] = []
        if hasattr(self, "skus") and self.skus:
            result["skus"] = [str(i0) for i0 in self.skus]
        elif include_empty:
            result["skus"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, OwnershipToken], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - OwnershipToken (successful operation)

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
            return OwnershipToken.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        app_ids: Optional[List[str]] = None,
        item_ids: Optional[List[str]] = None,
        skus: Optional[List[str]] = None,
    ) -> PublicGetEntitlementOwnershipToken:
        instance = cls()
        instance.namespace = namespace
        if app_ids is not None:
            instance.app_ids = app_ids
        if item_ids is not None:
            instance.item_ids = item_ids
        if skus is not None:
            instance.skus = skus
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicGetEntitlementOwnershipToken:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "appIds" in dict_ and dict_["appIds"] is not None:
            instance.app_ids = [str(i0) for i0 in dict_["appIds"]]
        elif include_empty:
            instance.app_ids = []
        if "itemIds" in dict_ and dict_["itemIds"] is not None:
            instance.item_ids = [str(i0) for i0 in dict_["itemIds"]]
        elif include_empty:
            instance.item_ids = []
        if "skus" in dict_ and dict_["skus"] is not None:
            instance.skus = [str(i0) for i0 in dict_["skus"]]
        elif include_empty:
            instance.skus = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "appIds": "app_ids",
            "itemIds": "item_ids",
            "skus": "skus",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "appIds": False,
            "itemIds": False,
            "skus": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "appIds": "multi",  # in query
            "itemIds": "multi",  # in query
            "skus": "multi",  # in query
        }

    # endregion static methods
