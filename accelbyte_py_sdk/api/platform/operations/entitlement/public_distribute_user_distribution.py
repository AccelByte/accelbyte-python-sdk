# justice-platform-service (3.34.0)

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

from ...models import EntitlementInfo
from ...models import ErrorEntity


class PublicDistributeUserDistribution(Operation):
    """Distribute my distribution (publicDistributeUserDistribution)

    Distribute my distribution with my user credentials. After successfully
    distributed, a notification will be send to configured web hook  

     Notification Body:



         Parameter| Type| Description  
        ---|---|---  
        payload| String| Business object in compact json string   
        sign| String| Sha1 hex signature for payload and private key  

         Notification Body Example:


        {
               "payload":"{
                   \"namespace\": \"publisherNamespace\",
                   \"targetNamespace\": \"game1\",
                   \"targetUserId\": \"94451623768940d58416ca33ca767ec3\",
                   \"issuedAt\": \"2018-07-26T07:11:16.547Z\",
                   \"type\": \"distribution\",
                   \"extUserId\": \"1234abcd\",
                   \"sku\": \"1234asdf\",
                   \"quantity\": 1,
                   \"nonceStr\": \"34c1dcf3eb58455eb161465bbfc0b590\"
               }",
               "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"
        }

    `

    `

     Payload Parameters:



         Parameter| Type| Description  
        ---|---|---  
        namespace| String| The publisher namespace  
        targetNamespace| String| The target game namespace  
        targetUserId| String| The user id in target game namespace  
        issuedAt| String| Issue time  
        type| String| Notification type, it is a fixed value 'distribution'  
        extUserId| String| Unique identity, e.g. character id  
        sku| String| Item unique identity  
        quantity| Integer| quantity  
        nonceStr| String| Random string, max length is 32, can be timestamp or uuid  

    #### Encryption Rule:

    Concat payload json string and private key and then do sha1Hex.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:DISTRIBUTION", action=4 (UPDATE)


    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/distribute

        method: PUT

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: []

        security: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_id: (entitlementId) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in query

        ext_user_id: (extUserId) REQUIRED str in query

        quantity: (quantity) OPTIONAL int in query

    Responses:
        200: OK - EntitlementInfo (successful operation)

        400: Bad Request - ErrorEntity (31121: Entitlement [{entitlementId}] is not distributable | 31122: Exceed entitlement available distribute quantity | 31123: Publisher namespace [{namespace}] is not distributable)

        404: Not Found - ErrorEntity (20017: user [{userId}] in namespace [{namespaceA}] does not linked in [{namespaceB}] | 31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}] | 31241: Distribution receiver of user [{userId}] and extUserId [{extUserId}] does not exist in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/distribute"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = []
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    entitlement_id: str                                                                            # REQUIRED in [path]
    target_namespace: str                                                                          # REQUIRED in [query]
    ext_user_id: str                                                                               # REQUIRED in [query]
    quantity: int                                                                                  # OPTIONAL in [query]

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
            "user_id",
            "entitlement_id",
            "target_namespace",
            "ext_user_id",
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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        if hasattr(self, "entitlement_id"):
            result["entitlementId"] = self.entitlement_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = self.target_namespace
        if hasattr(self, "ext_user_id"):
            result["extUserId"] = self.ext_user_id
        if hasattr(self, "quantity"):
            result["quantity"] = self.quantity
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        if not hasattr(self, "entitlement_id") or self.entitlement_id is None:
            return False
        if not hasattr(self, "target_namespace") or self.target_namespace is None:
            return False
        if not hasattr(self, "ext_user_id") or self.ext_user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicDistributeUserDistribution:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PublicDistributeUserDistribution:
        self.user_id = value
        return self

    def with_entitlement_id(self, value: str) -> PublicDistributeUserDistribution:
        self.entitlement_id = value
        return self

    def with_target_namespace(self, value: str) -> PublicDistributeUserDistribution:
        self.target_namespace = value
        return self

    def with_ext_user_id(self, value: str) -> PublicDistributeUserDistribution:
        self.ext_user_id = value
        return self

    def with_quantity(self, value: int) -> PublicDistributeUserDistribution:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "entitlement_id") and self.entitlement_id:
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = str()
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "ext_user_id") and self.ext_user_id:
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = str()
        if hasattr(self, "quantity") and self.quantity:
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, EntitlementInfo], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - EntitlementInfo (successful operation)

        400: Bad Request - ErrorEntity (31121: Entitlement [{entitlementId}] is not distributable | 31122: Exceed entitlement available distribute quantity | 31123: Publisher namespace [{namespace}] is not distributable)

        404: Not Found - ErrorEntity (20017: user [{userId}] in namespace [{namespaceA}] does not linked in [{namespaceB}] | 31141: Entitlement [{entitlementId}] does not exist in namespace [{namespace}] | 31241: Distribution receiver of user [{userId}] and extUserId [{extUserId}] does not exist in namespace [{namespace}])
        """
        if code == 200:
            return EntitlementInfo.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
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
        namespace: str,
        user_id: str,
        entitlement_id: str,
        target_namespace: str,
        ext_user_id: str,
        quantity: Optional[int] = None,
    ) -> PublicDistributeUserDistribution:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.entitlement_id = entitlement_id
        instance.target_namespace = target_namespace
        instance.ext_user_id = ext_user_id
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicDistributeUserDistribution:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = str()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "entitlementId": "entitlement_id",
            "targetNamespace": "target_namespace",
            "extUserId": "ext_user_id",
            "quantity": "quantity",
        }

    # endregion static methods
