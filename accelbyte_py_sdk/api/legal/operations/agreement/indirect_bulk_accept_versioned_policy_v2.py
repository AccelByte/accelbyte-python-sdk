# justice-legal-service (1.15.0)

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

from ...models import AcceptAgreementRequest
from ...models import AcceptAgreementResponse


class IndirectBulkAcceptVersionedPolicyV2(Operation):
    """Bulk Accept Policy Versions (Indirect) (indirectBulkAcceptVersionedPolicyV2)

    <b>IMPORTANT: GOING TO DEPRECATE</b><br/><br/>Accepts many legal policy
    versions all at once. Supply with localized version policy id, version policy
    id, policy id, userId, namespace, country code and client id to accept an
    agreement. This endpoint used by APIGateway during new user
    registration.<br>Other detail info: <ul><li><i>Required permission</i>:
    resource="NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)</li></ul>


    Properties:
        url: /agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}

        method: POST

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        client_id: (clientId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)
    """

    # region fields

    _url: str = "/agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: List[AcceptAgreementRequest]                                                             # OPTIONAL in [body]
    client_id: str                                                                                 # REQUIRED in [path]
    country_code: str                                                                              # REQUIRED in [path]
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
            "client_id",
            "country_code",
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
        return [i.to_dict() for i in self.body]

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "client_id"):
            result["clientId"] = self.client_id
        if hasattr(self, "country_code"):
            result["countryCode"] = self.country_code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "client_id") or self.client_id is None:
            return False
        if not hasattr(self, "country_code") or self.country_code is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: List[AcceptAgreementRequest]) -> IndirectBulkAcceptVersionedPolicyV2:
        self.body = value
        return self

    def with_client_id(self, value: str) -> IndirectBulkAcceptVersionedPolicyV2:
        self.client_id = value
        return self

    def with_country_code(self, value: str) -> IndirectBulkAcceptVersionedPolicyV2:
        self.country_code = value
        return self

    def with_namespace(self, value: str) -> IndirectBulkAcceptVersionedPolicyV2:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> IndirectBulkAcceptVersionedPolicyV2:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = [i0.to_dict(include_empty=include_empty) for i0 in self.body]
        elif include_empty:
            result["body"] = []
        if hasattr(self, "client_id") and self.client_id:
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = str()
        if hasattr(self, "country_code") and self.country_code:
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = str()
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, AcceptAgreementResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        201: Created - AcceptAgreementResponse (successful operation)
        """
        if code == 201:
            return AcceptAgreementResponse.create_from_dict(content), None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        country_code: str,
        namespace: str,
        user_id: str,
        body: Optional[List[AcceptAgreementRequest]] = None,
    ) -> IndirectBulkAcceptVersionedPolicyV2:
        instance = cls()
        instance.client_id = client_id
        instance.country_code = country_code
        instance.namespace = namespace
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> IndirectBulkAcceptVersionedPolicyV2:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = [AcceptAgreementRequest.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["body"]]
        elif include_empty:
            instance.body = []
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = str()
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = str()
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
            "clientId": "client_id",
            "countryCode": "country_code",
            "namespace": "namespace",
            "userId": "user_id",
        }

    # endregion static methods
