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

from ...models import RetrieveAcceptedAgreementResponse


class RetrieveAcceptedAgreements1(Operation):
    """Retrieve Accepted Legal Agreements (retrieveAcceptedAgreements_1)

    This API will return all accepted Legal Agreements for specified user.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        exclude_other_namespaces_policies: (excludeOtherNamespacesPolicies) OPTIONAL bool in query

    Responses:
        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)
    """

    # region fields

    _url: str = (
        "/agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    exclude_other_namespaces_policies: bool  # OPTIONAL in [query]

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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "exclude_other_namespaces_policies"):
            result[
                "excludeOtherNamespacesPolicies"
            ] = self.exclude_other_namespaces_policies
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> RetrieveAcceptedAgreements1:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> RetrieveAcceptedAgreements1:
        self.user_id = value
        return self

    def with_exclude_other_namespaces_policies(
        self, value: bool
    ) -> RetrieveAcceptedAgreements1:
        self.exclude_other_namespaces_policies = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if (
            hasattr(self, "exclude_other_namespaces_policies")
            and self.exclude_other_namespaces_policies
        ):
            result["excludeOtherNamespacesPolicies"] = bool(
                self.exclude_other_namespaces_policies
            )
        elif include_empty:
            result["excludeOtherNamespacesPolicies"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[RetrieveAcceptedAgreementResponse]], Union[None, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - List[RetrieveAcceptedAgreementResponse] (successful operation)

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
                RetrieveAcceptedAgreementResponse.create_from_dict(i) for i in content
            ], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        exclude_other_namespaces_policies: Optional[bool] = None,
        **kwargs,
    ) -> RetrieveAcceptedAgreements1:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if exclude_other_namespaces_policies is not None:
            instance.exclude_other_namespaces_policies = (
                exclude_other_namespaces_policies
            )
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveAcceptedAgreements1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if (
            "excludeOtherNamespacesPolicies" in dict_
            and dict_["excludeOtherNamespacesPolicies"] is not None
        ):
            instance.exclude_other_namespaces_policies = bool(
                dict_["excludeOtherNamespacesPolicies"]
            )
        elif include_empty:
            instance.exclude_other_namespaces_policies = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "excludeOtherNamespacesPolicies": "exclude_other_namespaces_policies",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "excludeOtherNamespacesPolicies": False,
        }

    # endregion static methods
