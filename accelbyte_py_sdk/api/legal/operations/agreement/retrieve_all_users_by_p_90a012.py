# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

# AccelByte Cloud Legal Service (1.26.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import PagedRetrieveUserAcceptedAgreementResponse


class RetrieveAllUsersByPolicyVersion(Operation):
    """Retrieve All Users Accepting Legal Agreements (retrieveAllUsersByPolicyVersion)

    This API will return all users who has accepted a specific policy version.Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [READ]

    Properties:
        url: /agreement/admin/agreements/policy-versions/users

        method: GET

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        policy_version_id: (policyVersionId) REQUIRED str in query

    Responses:
        200: OK - List[PagedRetrieveUserAcceptedAgreementResponse] (successful operation)

        404: Not Found - ErrorEntity (40035: errors.net.accelbyte.platform.legal.policy_version_not_found)
    """

    # region fields

    _url: str = "/agreement/admin/agreements/policy-versions/users"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

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
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
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

    def with_keyword(self, value: str) -> RetrieveAllUsersByPolicyVersion:
        self.keyword = value
        return self

    def with_limit(self, value: int) -> RetrieveAllUsersByPolicyVersion:
        self.limit = value
        return self

    def with_offset(self, value: int) -> RetrieveAllUsersByPolicyVersion:
        self.offset = value
        return self

    def with_policy_version_id(self, value: str) -> RetrieveAllUsersByPolicyVersion:
        self.policy_version_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        Union[None, List[PagedRetrieveUserAcceptedAgreementResponse]],
        Union[None, ErrorEntity, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - List[PagedRetrieveUserAcceptedAgreementResponse] (successful operation)

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
            return [
                PagedRetrieveUserAcceptedAgreementResponse.create_from_dict(i)
                for i in content
            ], None
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
        policy_version_id: str,
        keyword: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
    ) -> RetrieveAllUsersByPolicyVersion:
        instance = cls()
        instance.policy_version_id = policy_version_id
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
    ) -> RetrieveAllUsersByPolicyVersion:
        instance = cls()
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
            "keyword": "keyword",
            "limit": "limit",
            "offset": "offset",
            "policyVersionId": "policy_version_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "keyword": False,
            "limit": False,
            "offset": False,
            "policyVersionId": True,
        }

    # endregion static methods
