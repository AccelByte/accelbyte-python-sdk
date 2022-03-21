# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-legal-service (1.18.1)

from __future__ import annotations
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import RetrievePolicyPublicResponse


class RetrieveLatestPoliciesPublic(Operation):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesPublic)

    Retrieve all active latest policies based on a namespace and country. The country will be read from user token.
    Other detail info:

      * Leave the policyType empty if you want to be responded with all policy type
      *  Fill the tags if you want to filter the responded policy by tags
      *  Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
      *  Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:
        * Document 1 (default): Region US (default), UA
        * Document 2 (default): Region US (default)
        * Document 3 (default): Region US (default)
        * User: Region UA
        * Query: alwaysIncludeDefault: true
        * Response: Document 1 (UA), Document 2 (US), Document 3 (US)
      *  Required permission: login user

    Properties:
        url: /agreement/public/policies/namespaces/{namespace}

        method: GET

        tags: ["Policies"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        always_include_default: (alwaysIncludeDefault) OPTIONAL bool in query

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        policy_type: (policyType) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - List[RetrievePolicyPublicResponse] (successful operation)

        404: Not Found - ErrorEntity (40040: errors.net.accelbyte.platform.legal.user_has_no_country)
    """

    # region fields

    _url: str = "/agreement/public/policies/namespaces/{namespace}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    always_include_default: bool                                                                   # OPTIONAL in [query]
    default_on_empty: bool                                                                         # OPTIONAL in [query]
    policy_type: str                                                                               # OPTIONAL in [query]
    tags: str                                                                                      # OPTIONAL in [query]

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
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
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
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "always_include_default"):
            result["alwaysIncludeDefault"] = self.always_include_default
        if hasattr(self, "default_on_empty"):
            result["defaultOnEmpty"] = self.default_on_empty
        if hasattr(self, "policy_type"):
            result["policyType"] = self.policy_type
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        # required checks
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> RetrieveLatestPoliciesPublic:
        self.namespace = value
        return self

    def with_always_include_default(self, value: bool) -> RetrieveLatestPoliciesPublic:
        self.always_include_default = value
        return self

    def with_default_on_empty(self, value: bool) -> RetrieveLatestPoliciesPublic:
        self.default_on_empty = value
        return self

    def with_policy_type(self, value: str) -> RetrieveLatestPoliciesPublic:
        self.policy_type = value
        return self

    def with_tags(self, value: str) -> RetrieveLatestPoliciesPublic:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "always_include_default") and self.always_include_default:
            result["alwaysIncludeDefault"] = bool(self.always_include_default)
        elif include_empty:
            result["alwaysIncludeDefault"] = bool()
        if hasattr(self, "default_on_empty") and self.default_on_empty:
            result["defaultOnEmpty"] = bool(self.default_on_empty)
        elif include_empty:
            result["defaultOnEmpty"] = bool()
        if hasattr(self, "policy_type") and self.policy_type:
            result["policyType"] = str(self.policy_type)
        elif include_empty:
            result["policyType"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = str(self.tags)
        elif include_empty:
            result["tags"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, List[RetrievePolicyPublicResponse]], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - List[RetrievePolicyPublicResponse] (successful operation)

        404: Not Found - ErrorEntity (40040: errors.net.accelbyte.platform.legal.user_has_no_country)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return [RetrievePolicyPublicResponse.create_from_dict(i) for i in content], None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        always_include_default: Optional[bool] = None,
        default_on_empty: Optional[bool] = None,
        policy_type: Optional[str] = None,
        tags: Optional[str] = None,
    ) -> RetrieveLatestPoliciesPublic:
        instance = cls()
        instance.namespace = namespace
        if always_include_default is not None:
            instance.always_include_default = always_include_default
        if default_on_empty is not None:
            instance.default_on_empty = default_on_empty
        if policy_type is not None:
            instance.policy_type = policy_type
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RetrieveLatestPoliciesPublic:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "alwaysIncludeDefault" in dict_ and dict_["alwaysIncludeDefault"] is not None:
            instance.always_include_default = bool(dict_["alwaysIncludeDefault"])
        elif include_empty:
            instance.always_include_default = bool()
        if "defaultOnEmpty" in dict_ and dict_["defaultOnEmpty"] is not None:
            instance.default_on_empty = bool(dict_["defaultOnEmpty"])
        elif include_empty:
            instance.default_on_empty = bool()
        if "policyType" in dict_ and dict_["policyType"] is not None:
            instance.policy_type = str(dict_["policyType"])
        elif include_empty:
            instance.policy_type = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = str(dict_["tags"])
        elif include_empty:
            instance.tags = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "alwaysIncludeDefault": "always_include_default",
            "defaultOnEmpty": "default_on_empty",
            "policyType": "policy_type",
            "tags": "tags",
        }

    # endregion static methods
