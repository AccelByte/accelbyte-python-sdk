# justice-iam-service (4.4.1)

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

from ...models import ModelAddUserRoleV4Request
from ...models import ModelListUserRolesV4Response
from ...models import RestErrorResponse


class AdminAddUserRoleV4(Operation):
    """Admin Add User's Role V4 (AdminAddUserRoleV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE]
    permission. New role will be appended to user's current roles. Request body
    need to specify allowed namespace for given role to support new role
    restriction. Skipped the check whether the user performing the request is a
    role manager / assigner since there is a plan to discard the role manager /
    assigner.


    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) REQUIRED ModelAddUserRoleV4Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse

        500: Internal Server Error - RestErrorResponse
    """

    # region fields

    _url: str = "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelAddUserRoleV4Request                                                                # REQUIRED in [body]
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
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", str(v))
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
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
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelAddUserRoleV4Request) -> AdminAddUserRoleV4:
        self.body = value
        return self

    def with_namespace(self, value: str) -> AdminAddUserRoleV4:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> AdminAddUserRoleV4:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelAddUserRoleV4Request()
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelListUserRolesV4Response], Union[None, RestErrorResponse]]:
        """Parse the given response.

        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse

        500: Internal Server Error - RestErrorResponse
        """
        if code == 200:
            return ModelListUserRolesV4Response.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 422:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
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
        body: ModelAddUserRoleV4Request,
        namespace: str,
        user_id: str,
    ) -> AdminAddUserRoleV4:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminAddUserRoleV4:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelAddUserRoleV4Request.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelAddUserRoleV4Request()
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
            "namespace": "namespace",
            "userId": "user_id",
        }

    # endregion static methods
