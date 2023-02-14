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

# AccelByte Cloud Iam Service (5.27.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelGetUserBanV3Response
from ...models import RestErrorResponse


class AdminGetUserBanV3(Operation):
    """Get user's bans (AdminGetUserBanV3)

    Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]'




    This endpoint retrieve the first page of the data if after and before parameters is empty




    action code : 10126

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [READ]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    active_only: bool  # OPTIONAL in [query]
    after: str  # OPTIONAL in [query]
    before: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]

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
        if hasattr(self, "active_only"):
            result["activeOnly"] = self.active_only
        if hasattr(self, "after"):
            result["after"] = self.after
        if hasattr(self, "before"):
            result["before"] = self.before
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminGetUserBanV3:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> AdminGetUserBanV3:
        self.user_id = value
        return self

    def with_active_only(self, value: bool) -> AdminGetUserBanV3:
        self.active_only = value
        return self

    def with_after(self, value: str) -> AdminGetUserBanV3:
        self.after = value
        return self

    def with_before(self, value: str) -> AdminGetUserBanV3:
        self.before = value
        return self

    def with_limit(self, value: int) -> AdminGetUserBanV3:
        self.limit = value
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
        if hasattr(self, "active_only") and self.active_only:
            result["activeOnly"] = bool(self.active_only)
        elif include_empty:
            result["activeOnly"] = False
        if hasattr(self, "after") and self.after:
            result["after"] = str(self.after)
        elif include_empty:
            result["after"] = ""
        if hasattr(self, "before") and self.before:
            result["before"] = str(self.before)
        elif include_empty:
            result["before"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelGetUserBanV3Response],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

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
            return ModelGetUserBanV3Response.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)

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
        active_only: Optional[bool] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        limit: Optional[int] = None,
    ) -> AdminGetUserBanV3:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if active_only is not None:
            instance.active_only = active_only
        if after is not None:
            instance.after = after
        if before is not None:
            instance.before = before
        if limit is not None:
            instance.limit = limit
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminGetUserBanV3:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "activeOnly" in dict_ and dict_["activeOnly"] is not None:
            instance.active_only = bool(dict_["activeOnly"])
        elif include_empty:
            instance.active_only = False
        if "after" in dict_ and dict_["after"] is not None:
            instance.after = str(dict_["after"])
        elif include_empty:
            instance.after = ""
        if "before" in dict_ and dict_["before"] is not None:
            instance.before = str(dict_["before"])
        elif include_empty:
            instance.before = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "activeOnly": "active_only",
            "after": "after",
            "before": "before",
            "limit": "limit",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "activeOnly": False,
            "after": False,
            "before": False,
            "limit": False,
        }

    # endregion static methods
