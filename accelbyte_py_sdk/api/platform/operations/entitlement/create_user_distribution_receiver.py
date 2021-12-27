# justice-platform-service (3.39.0)

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

from ...models import DistributionReceiverCreate
from ...models import ErrorEntity


class CreateUserDistributionReceiver(Operation):
    """Create distribution receiver (createUserDistributionReceiver)

    Create distribution receiver for a specific user by dedicated server. Once
    user distribution receiver created, user can distribute distribution to
    receiver.<br>Other detail info: <ul><li><i>Required permission</i>:
    resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:DISTRIBUTION", action=1
    (CREATE)</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId}

        method: POST

        tags: ["Entitlement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) OPTIONAL DistributionReceiverCreate in body

        ext_user_id: (extUserId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (create distribution receiver successfully)

        409: Conflict - ErrorEntity (31271: Distribution receiver of user [{userId}] and extUserId [{extUserId}] already exists in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId}"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: DistributionReceiverCreate                                                               # OPTIONAL in [body]
    ext_user_id: str                                                                               # REQUIRED in [path]
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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "ext_user_id",
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
        if hasattr(self, "ext_user_id"):
            result["extUserId"] = self.ext_user_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "ext_user_id") or self.ext_user_id is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: DistributionReceiverCreate) -> CreateUserDistributionReceiver:
        self.body = value
        return self

    def with_ext_user_id(self, value: str) -> CreateUserDistributionReceiver:
        self.ext_user_id = value
        return self

    def with_namespace(self, value: str) -> CreateUserDistributionReceiver:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> CreateUserDistributionReceiver:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = DistributionReceiverCreate()
        if hasattr(self, "ext_user_id") and self.ext_user_id:
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = str()
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, ErrorEntity]]:
        """Parse the given response.

        201: Created - (create distribution receiver successfully)

        409: Conflict - ErrorEntity (31271: Distribution receiver of user [{userId}] and extUserId [{extUserId}] already exists in namespace [{namespace}])
        """
        if code == 201:
            return HttpResponse.create(code, "Created"), None
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
        ext_user_id: str,
        namespace: str,
        user_id: str,
        body: Optional[DistributionReceiverCreate] = None,
    ) -> CreateUserDistributionReceiver:
        instance = cls()
        instance.ext_user_id = ext_user_id
        instance.namespace = namespace
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreateUserDistributionReceiver:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = DistributionReceiverCreate.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = DistributionReceiverCreate()
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = str()
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
            "extUserId": "ext_user_id",
            "namespace": "namespace",
            "userId": "user_id",
        }

    # endregion static methods
