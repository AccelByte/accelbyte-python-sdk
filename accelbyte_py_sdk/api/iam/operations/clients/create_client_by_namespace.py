# justice-iam-service (5.0.0)

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

from ...models import ClientmodelClientCreateRequest
from ...models import ClientmodelClientCreationResponse


class CreateClientByNamespace(Operation):
    """Create Client (CreateClientByNamespace)

    <h2>The endpoint is going to be deprecated. Please use this instead:
    /v3/admin/namespaces/{namespace}/clients</h2>Required permission
    'ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]'


    Properties:
        url: /iam/namespaces/{namespace}/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED ClientmodelClientCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ClientmodelClientCreationResponse (Created)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        409: Conflict - (Client exists)
    """

    # region fields

    _url: str = "/iam/namespaces/{namespace}/clients"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: ClientmodelClientCreateRequest                                                           # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "namespace",
        ]

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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ClientmodelClientCreateRequest) -> CreateClientByNamespace:
        self.body = value
        return self

    def with_namespace(self, value: str) -> CreateClientByNamespace:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ClientmodelClientCreateRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ClientmodelClientCreationResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        201: Created - ClientmodelClientCreationResponse (Created)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        409: Conflict - (Client exists)
        """
        if code == 201:
            return ClientmodelClientCreationResponse.create_from_dict(content), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
        if code == 409:
            return None, HttpResponse.create(code, "Conflict")
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
        body: ClientmodelClientCreateRequest,
        namespace: str,
    ) -> CreateClientByNamespace:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreateClientByNamespace:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ClientmodelClientCreateRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ClientmodelClientCreateRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    # endregion static methods
