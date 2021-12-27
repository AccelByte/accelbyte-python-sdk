# justice-platform-service (3.39.0)

# template file: justice_py_sdk_codegen/__main__.py

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

from ...models import DistributionReceiverInfo
from ...models import ErrorEntity


class PublicGetUserDistributionReceivers(Operation):
    """Get distribution receivers (publicGetUserDistributionReceivers)

    Get distribution receivers in a specific namespace.<br>Other detail info:
    <ul><li><i>Required permission</i>:
    resource="NAMESPACE:{namespace}:USER:{userId}:DISTRIBUTION", action=2
    (READ)</li><li><i>Returns</i>: distribution receiver info list</li></ul>


    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/entitlements/receivers

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in query

    Responses:
        200: OK - List[DistributionReceiverInfo] (successful operation)

        400: Bad Request - ErrorEntity (31123: Publisher namespace [{namespace}] is not distributable)

        404: Not Found - ErrorEntity (20017: user [{userId}] in namespace [{namespaceA}] does not linked in [{namespaceB}])
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/receivers"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    target_namespace: str                                                                          # REQUIRED in [query]

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

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "user_id",
            "target_namespace",
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
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = self.target_namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        if not hasattr(self, "target_namespace") or self.target_namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicGetUserDistributionReceivers:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PublicGetUserDistributionReceivers:
        self.user_id = value
        return self

    def with_target_namespace(self, value: str) -> PublicGetUserDistributionReceivers:
        self.target_namespace = value
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
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, List[DistributionReceiverInfo]], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - List[DistributionReceiverInfo] (successful operation)

        400: Bad Request - ErrorEntity (31123: Publisher namespace [{namespace}] is not distributable)

        404: Not Found - ErrorEntity (20017: user [{userId}] in namespace [{namespaceA}] does not linked in [{namespaceB}])
        """
        if code == 200:
            return [DistributionReceiverInfo.create_from_dict(i) for i in content], None
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
        target_namespace: str,
    ) -> PublicGetUserDistributionReceivers:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.target_namespace = target_namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicGetUserDistributionReceivers:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "targetNamespace": "target_namespace",
        }

    # endregion static methods
