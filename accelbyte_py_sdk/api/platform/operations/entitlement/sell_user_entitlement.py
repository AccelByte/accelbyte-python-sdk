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

# AccelByte Gaming Services Platform Service (4.34.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import EntitlementSoldRequest
from ...models import EntitlementSoldResult
from ...models import ErrorEntity


class SellUserEntitlement(Operation):
    """Sell user entitlement (sellUserEntitlement)

    Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:

      * Required permission : resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT, action=4 (UPDATE)
      *  Returns : entitlement

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EntitlementSoldRequest in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementSoldResult (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 31181: Entitlement [{entitlementId}] is not sellable | 31182: Entitlement [{entitlementId}] already sold | 20006: optimistic lock)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: EntitlementSoldRequest  # OPTIONAL in [body]
    entitlement_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]

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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "entitlement_id"):
            result["entitlementId"] = self.entitlement_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: EntitlementSoldRequest) -> SellUserEntitlement:
        self.body = value
        return self

    def with_entitlement_id(self, value: str) -> SellUserEntitlement:
        self.entitlement_id = value
        return self

    def with_namespace(self, value: str) -> SellUserEntitlement:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> SellUserEntitlement:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = EntitlementSoldRequest()
        if hasattr(self, "entitlement_id") and self.entitlement_id:
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, EntitlementSoldResult], Union[None, ErrorEntity, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - EntitlementSoldResult (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 31178: Entitlement [{entitlementId}] out of time range | 31180: Duplicate request id: [{requestId}] | 31181: Entitlement [{entitlementId}] is not sellable | 31182: Entitlement [{entitlementId}] already sold | 20006: optimistic lock)

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
            return EntitlementSoldResult.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement_id: str,
        namespace: str,
        user_id: str,
        body: Optional[EntitlementSoldRequest] = None,
        **kwargs,
    ) -> SellUserEntitlement:
        instance = cls()
        instance.entitlement_id = entitlement_id
        instance.namespace = namespace
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SellUserEntitlement:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = EntitlementSoldRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = EntitlementSoldRequest()
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "entitlementId": "entitlement_id",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "entitlementId": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
