# justice-iam-service (5.1.1)

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

from ...models import ModelInviteUserRequestV4
from ...models import ModelInviteUserResponseV3
from ...models import RestErrorResponse


class AdminInviteUserV4(Operation):
    """Admin invite User v4 (AdminInviteUserV4)

    Required permission 'ADMIN:USER:INVITE [CREATE] Use this endpoint to invite
    admin or non-admin user and assign role to them. The role must be scoped to
    namespace. An admin user can only assign role with namespaces that the admin
    user has required permission which is same as the required permission of
    endpoint: [AdminAddUserRoleV4]. Role is optional, if not specified then it
    will only assign User role The invited admin will also assigned with "User"
    role by default.


    Required Permission(s):
        - ADMIN:USER:INVITE [CREATE]

    Properties:
        url: /iam/v4/admin/users/users/invite

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED ModelInviteUserRequestV4 in body

    Responses:
        201: Created - ModelInviteUserResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        422: Unprocessable Entity - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v4/admin/users/users/invite"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelInviteUserRequestV4                                                                 # REQUIRED in [body]

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelInviteUserRequestV4) -> AdminInviteUserV4:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelInviteUserRequestV4()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelInviteUserResponseV3], Union[None, RestErrorResponse]]:
        """Parse the given response.

        201: Created - ModelInviteUserResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        422: Unprocessable Entity - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
        """
        if code == 201:
            return ModelInviteUserResponseV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 409:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 422:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)
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
        body: ModelInviteUserRequestV4,
    ) -> AdminInviteUserV4:
        instance = cls()
        instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminInviteUserV4:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelInviteUserRequestV4.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelInviteUserRequestV4()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    # endregion static methods
