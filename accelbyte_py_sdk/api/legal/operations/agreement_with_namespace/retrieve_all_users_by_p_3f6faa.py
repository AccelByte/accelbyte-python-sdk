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

# AccelByte Gaming Services Legal Service (1.35.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import PagedRetrieveUserAcceptedAgreementResponse


class RetrieveAllUsersByPolicyVersion1(Operation):
    """Retrieve All Users Accepting Legal Agreements (retrieveAllUsersByPolicyVersion_1)

    This API will return all users who has accepted a specific policy version.Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEGAL [READ]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users

        method: GET

        tags: ["Agreement With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        convert_game_user_id: (convertGameUserId) OPTIONAL bool in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        policy_version_id: (policyVersionId) REQUIRED str in query

    Responses:
        200: OK - PagedRetrieveUserAcceptedAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """

    # region fields

    _url: str = (
        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    convert_game_user_id: bool  # OPTIONAL in [query]
    keyword: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    policy_version_id: str  # REQUIRED in [query]

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
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "convert_game_user_id"):
            result["convertGameUserId"] = self.convert_game_user_id
        if hasattr(self, "keyword"):
            result["keyword"] = self.keyword
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "policy_version_id"):
            result["policyVersionId"] = self.policy_version_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> RetrieveAllUsersByPolicyVersion1:
        self.namespace = value
        return self

    def with_convert_game_user_id(
        self, value: bool
    ) -> RetrieveAllUsersByPolicyVersion1:
        self.convert_game_user_id = value
        return self

    def with_keyword(self, value: str) -> RetrieveAllUsersByPolicyVersion1:
        self.keyword = value
        return self

    def with_limit(self, value: int) -> RetrieveAllUsersByPolicyVersion1:
        self.limit = value
        return self

    def with_offset(self, value: int) -> RetrieveAllUsersByPolicyVersion1:
        self.offset = value
        return self

    def with_policy_version_id(self, value: str) -> RetrieveAllUsersByPolicyVersion1:
        self.policy_version_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "convert_game_user_id") and self.convert_game_user_id:
            result["convertGameUserId"] = bool(self.convert_game_user_id)
        elif include_empty:
            result["convertGameUserId"] = False
        if hasattr(self, "keyword") and self.keyword:
            result["keyword"] = str(self.keyword)
        elif include_empty:
            result["keyword"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "policy_version_id") and self.policy_version_id:
            result["policyVersionId"] = str(self.policy_version_id)
        elif include_empty:
            result["policyVersionId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, PagedRetrieveUserAcceptedAgreementResponse],
        Union[None, ErrorEntity, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - PagedRetrieveUserAcceptedAgreementResponse (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)

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
            return (
                PagedRetrieveUserAcceptedAgreementResponse.create_from_dict(content),
                None,
            )
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        policy_version_id: str,
        convert_game_user_id: Optional[bool] = None,
        keyword: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        **kwargs,
    ) -> RetrieveAllUsersByPolicyVersion1:
        instance = cls()
        instance.namespace = namespace
        instance.policy_version_id = policy_version_id
        if convert_game_user_id is not None:
            instance.convert_game_user_id = convert_game_user_id
        if keyword is not None:
            instance.keyword = keyword
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveAllUsersByPolicyVersion1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "convertGameUserId" in dict_ and dict_["convertGameUserId"] is not None:
            instance.convert_game_user_id = bool(dict_["convertGameUserId"])
        elif include_empty:
            instance.convert_game_user_id = False
        if "keyword" in dict_ and dict_["keyword"] is not None:
            instance.keyword = str(dict_["keyword"])
        elif include_empty:
            instance.keyword = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "policyVersionId" in dict_ and dict_["policyVersionId"] is not None:
            instance.policy_version_id = str(dict_["policyVersionId"])
        elif include_empty:
            instance.policy_version_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "convertGameUserId": "convert_game_user_id",
            "keyword": "keyword",
            "limit": "limit",
            "offset": "offset",
            "policyVersionId": "policy_version_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "convertGameUserId": False,
            "keyword": False,
            "limit": False,
            "offset": False,
            "policyVersionId": True,
        }

    # endregion static methods
