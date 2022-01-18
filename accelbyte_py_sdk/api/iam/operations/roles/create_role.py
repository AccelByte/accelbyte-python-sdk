# justice-iam-service (5.0.0)

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

from ...models import AccountcommonRole
from ...models import ModelRoleCreateRequest


class CreateRole(Operation):
    """Create Role (CreateRole)

    <p>Required permission 'ROLE:ADMIN [CREATE]' or 'ADMIN:ROLE [CREATE]' </p>
    <p>Required Permission 'ROLE:ADMIN [CREATE]' is going to be
    <strong>DEPRECATED</strong> for security purpose. It is going to be deprecated
    on <strong>31 JANUARY 2019</strong>, please use permission 'ADMIN:ROLE
    [CREATE]' instead.</p> <p>Role can only be assigned to other users by the
    role's manager.</p> <p>If role is an administrator role (i.e. AdminRole ==
    true), it will list out the role's members.</p> <p>Administrator role can be
    created only when at least 1 manager is specified.</p>


    Properties:
        url: /iam/roles

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED ModelRoleCreateRequest in body

    Responses:
        201: Created - AccountcommonRole (Created)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)
    """

    # region fields

    _url: str = "/iam/roles"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelRoleCreateRequest                                                                   # REQUIRED in [body]

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

    def with_body(self, value: ModelRoleCreateRequest) -> CreateRole:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelRoleCreateRequest()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, AccountcommonRole], Union[None, HttpResponse]]:
        """Parse the given response.

        201: Created - AccountcommonRole (Created)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)
        """
        if code == 201:
            return AccountcommonRole.create_from_dict(content), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
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
        body: ModelRoleCreateRequest,
    ) -> CreateRole:
        instance = cls()
        instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreateRole:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelRoleCreateRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelRoleCreateRequest()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    # endregion static methods
