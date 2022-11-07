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

# AccelByte Cloud Iam Service (5.20.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import ModelGetAdminUsersResponse
from ...models import RestErrorResponse


class GetAdminUsersByRoleID(Operation):
    """Get Admin Users By RoleId (GetAdminUsersByRoleID)

    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint(Public): /iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users [GET]



      * Note:
        difference in V3 response, format difference: Pascal case => Camel case







    Required permission 'ADMIN:NAMESPACE:{namespace}:USER [READ]'




    This endpoint search admin users which have the roleId




    Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
    Use endpoint [GET] /roles/{roleId}/admin to check the role status

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER [READ]

    Properties:
        url: /iam/namespaces/{namespace}/users/admin

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL int in query

        before: (before) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        role_id: (roleId) OPTIONAL str in query

    Responses:
        200: OK - ModelGetAdminUsersResponse (OK)

        400: Bad Request - RestErrorResponse (20021: invalid pagination parameter | 20002: validation error | 10157: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/namespaces/{namespace}/users/admin"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    after: int  # OPTIONAL in [query]
    before: int  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    role_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "after"):
            result["after"] = self.after
        if hasattr(self, "before"):
            result["before"] = self.before
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "role_id"):
            result["roleId"] = self.role_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetAdminUsersByRoleID:
        self.namespace = value
        return self

    def with_after(self, value: int) -> GetAdminUsersByRoleID:
        self.after = value
        return self

    def with_before(self, value: int) -> GetAdminUsersByRoleID:
        self.before = value
        return self

    def with_limit(self, value: int) -> GetAdminUsersByRoleID:
        self.limit = value
        return self

    def with_role_id(self, value: str) -> GetAdminUsersByRoleID:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "after") and self.after:
            result["after"] = int(self.after)
        elif include_empty:
            result["after"] = 0
        if hasattr(self, "before") and self.before:
            result["before"] = int(self.before)
        elif include_empty:
            result["before"] = 0
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "role_id") and self.role_id:
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelGetAdminUsersResponse],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelGetAdminUsersResponse (OK)

        400: Bad Request - RestErrorResponse (20021: invalid pagination parameter | 20002: validation error | 10157: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - (20000: internal server error)

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
            return ModelGetAdminUsersResponse.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        after: Optional[int] = None,
        before: Optional[int] = None,
        limit: Optional[int] = None,
        role_id: Optional[str] = None,
    ) -> GetAdminUsersByRoleID:
        instance = cls()
        instance.namespace = namespace
        if after is not None:
            instance.after = after
        if before is not None:
            instance.before = before
        if limit is not None:
            instance.limit = limit
        if role_id is not None:
            instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetAdminUsersByRoleID:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "after" in dict_ and dict_["after"] is not None:
            instance.after = int(dict_["after"])
        elif include_empty:
            instance.after = 0
        if "before" in dict_ and dict_["before"] is not None:
            instance.before = int(dict_["before"])
        elif include_empty:
            instance.before = 0
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "after": "after",
            "before": "before",
            "limit": "limit",
            "roleId": "role_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "after": False,
            "before": False,
            "limit": False,
            "roleId": False,
        }

    # endregion static methods
