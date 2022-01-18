# justice-legal-service (1.16.0)

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

from ...models import RetrieveUserEligibilitiesIndirectResponse


class RetrieveEligibilitiesPublicIndirect(Operation):
    """Check User Legal Eligibility (retrieveEligibilitiesPublicIndirect)

    Retrieve the active policies and its conformance status by userThis process
    only supports cross-namespace checking between game namespace and publisher
    namespace , that means if the active policy already accepted by the same user
    in publisher namespace, then it will also be considered as eligible in non-
    publisher namespace.<br/><br/>Other detail info: <ul><li><i>Required
    permission</i>: login user</li></ul>


    Properties:
        url: /agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}

        method: GET

        tags: ["Eligibilities"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        client_id: (clientId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RetrieveUserEligibilitiesIndirectResponse (successful operation)
    """

    # region fields

    _url: str = "/agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

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
            "client_id",
            "country_code",
            "namespace",
            "user_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

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

    def with_client_id(self, value: str) -> RetrieveEligibilitiesPublicIndirect:
        self.client_id = value
        return self

    def with_country_code(self, value: str) -> RetrieveEligibilitiesPublicIndirect:
        self.country_code = value
        return self

    def with_namespace(self, value: str) -> RetrieveEligibilitiesPublicIndirect:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> RetrieveEligibilitiesPublicIndirect:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, RetrieveUserEligibilitiesIndirectResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - RetrieveUserEligibilitiesIndirectResponse (successful operation)
        """
        if code == 200:
            return RetrieveUserEligibilitiesIndirectResponse.create_from_dict(content), None
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
        client_id: str,
        country_code: str,
        namespace: str,
        user_id: str,
    ) -> RetrieveEligibilitiesPublicIndirect:
        instance = cls()
        instance.client_id = client_id
        instance.country_code = country_code
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RetrieveEligibilitiesPublicIndirect:
        instance = cls()
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
            "clientId": "client_id",
            "countryCode": "country_code",
            "namespace": "namespace",
            "userId": "user_id",
        }

    # endregion static methods
