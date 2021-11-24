# justice-platform-service (3.37.1)

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

from ...models import EntitlementDecrement
from ...models import EntitlementInfo
from ...models import ErrorEntity


class ConsumeUserEntitlement(Operation):
    """Consume user entitlement (consumeUserEntitlement)

    Consume user entitlement. If the entitlement useCount is 0, the status will be
    CONSUMED.<br>Other detail info: <ul><li><i>Required permission</i>:
    resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=4
    (UPDATE)</li><li><i>Returns</i>: consumed entitlement</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement

        method: PUT

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL EntitlementDecrement in body

        entitlement_id: (entitlementId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31173: Entitlement [{entitlementId}] is not consumable | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 20006: optimistic lock)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement"
    _method: str = "PUT"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: EntitlementDecrement                                                                     # OPTIONAL in [body]
    entitlement_id: str                                                                            # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]

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
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "entitlement_id",
            "namespace",
            "user_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
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

    def is_valid(self) -> bool:
        if not hasattr(self, "entitlement_id") or self.entitlement_id is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: EntitlementDecrement) -> ConsumeUserEntitlement:
        self.body = value
        return self

    def with_entitlement_id(self, value: str) -> ConsumeUserEntitlement:
        self.entitlement_id = value
        return self

    def with_namespace(self, value: str) -> ConsumeUserEntitlement:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ConsumeUserEntitlement:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = EntitlementDecrement()
        if hasattr(self, "entitlement_id") and self.entitlement_id:
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, EntitlementInfo], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - EntitlementInfo (successful operation)

        404: Not Found - ErrorEntity (31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (31171: Entitlement [{entitlementId}] already revoked | 31172: Entitlement [{entitlementId}] not active | 31173: Entitlement [{entitlementId}] is not consumable | 31174: Entitlement [{entitlementId}] already consumed | 31176: Entitlement [{entitlementId}] use count is insufficient | 20006: optimistic lock)
        """
        if code == 200:
            return EntitlementInfo.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement_id: str,
        namespace: str,
        user_id: str,
        body: Optional[EntitlementDecrement] = None,
    ) -> ConsumeUserEntitlement:
        instance = cls()
        instance.entitlement_id = entitlement_id
        instance.namespace = namespace
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ConsumeUserEntitlement:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = EntitlementDecrement.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = EntitlementDecrement()
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "entitlementId": "entitlement_id",
            "namespace": "namespace",
            "userId": "user_id",
        }

    # endregion static methods
