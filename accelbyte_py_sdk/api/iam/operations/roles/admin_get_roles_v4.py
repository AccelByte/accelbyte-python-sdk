# justice-iam-service (4.9.0)

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

from ...models import ModelListRoleV4Response
from ...models import RestErrorResponse


class AdminGetRolesV4(Operation):
    """Get Roles (AdminGetRolesV4)

    Required permission ADMIN:ROLE [READ] action code: 10414


    Properties:
        url: /iam/v4/admin/roles

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        admin_role: (adminRole) OPTIONAL bool in query

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        is_wildcard: (isWildcard) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelListRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """

    # region fields

    _url: str = "/iam/v4/admin/roles"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    admin_role: bool                                                                               # OPTIONAL in [query]
    after: str                                                                                     # OPTIONAL in [query]
    before: str                                                                                    # OPTIONAL in [query]
    is_wildcard: bool                                                                              # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]

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
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "admin_role"):
            result["adminRole"] = self.admin_role
        if hasattr(self, "after"):
            result["after"] = self.after
        if hasattr(self, "before"):
            result["before"] = self.before
        if hasattr(self, "is_wildcard"):
            result["isWildcard"] = self.is_wildcard
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        return True

    # endregion is/has methods

    # region with_x methods

    def with_admin_role(self, value: bool) -> AdminGetRolesV4:
        self.admin_role = value
        return self

    def with_after(self, value: str) -> AdminGetRolesV4:
        self.after = value
        return self

    def with_before(self, value: str) -> AdminGetRolesV4:
        self.before = value
        return self

    def with_is_wildcard(self, value: bool) -> AdminGetRolesV4:
        self.is_wildcard = value
        return self

    def with_limit(self, value: int) -> AdminGetRolesV4:
        self.limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "admin_role") and self.admin_role:
            result["adminRole"] = bool(self.admin_role)
        elif include_empty:
            result["adminRole"] = bool()
        if hasattr(self, "after") and self.after:
            result["after"] = str(self.after)
        elif include_empty:
            result["after"] = str()
        if hasattr(self, "before") and self.before:
            result["before"] = str(self.before)
        elif include_empty:
            result["before"] = str()
        if hasattr(self, "is_wildcard") and self.is_wildcard:
            result["isWildcard"] = bool(self.is_wildcard)
        elif include_empty:
            result["isWildcard"] = bool()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelListRoleV4Response], Union[None, RestErrorResponse]]:
        """Parse the given response.

        200: OK - ModelListRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
        """
        if code == 200:
            return ModelListRoleV4Response.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        admin_role: Optional[bool] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        is_wildcard: Optional[bool] = None,
        limit: Optional[int] = None,
    ) -> AdminGetRolesV4:
        instance = cls()
        if admin_role is not None:
            instance.admin_role = admin_role
        if after is not None:
            instance.after = after
        if before is not None:
            instance.before = before
        if is_wildcard is not None:
            instance.is_wildcard = is_wildcard
        if limit is not None:
            instance.limit = limit
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminGetRolesV4:
        instance = cls()
        if "adminRole" in dict_ and dict_["adminRole"] is not None:
            instance.admin_role = bool(dict_["adminRole"])
        elif include_empty:
            instance.admin_role = bool()
        if "after" in dict_ and dict_["after"] is not None:
            instance.after = str(dict_["after"])
        elif include_empty:
            instance.after = str()
        if "before" in dict_ and dict_["before"] is not None:
            instance.before = str(dict_["before"])
        elif include_empty:
            instance.before = str()
        if "isWildcard" in dict_ and dict_["isWildcard"] is not None:
            instance.is_wildcard = bool(dict_["isWildcard"])
        elif include_empty:
            instance.is_wildcard = bool()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "adminRole": "admin_role",
            "after": "after",
            "before": "before",
            "isWildcard": "is_wildcard",
            "limit": "limit",
        }

    # endregion static methods
