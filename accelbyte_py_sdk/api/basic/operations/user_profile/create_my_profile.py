# justice-basic-service (1.26.0)

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

from ...models import ErrorEntity
from ...models import UserProfilePrivateCreate
from ...models import UserProfilePrivateInfo
from ...models import ValidationErrorEntity


class CreateMyProfile(Operation):
    """Create my profile (createMyProfile)

    Create my profile.<br><b>Client with user token can create user profile in
    target namespace</b><br>Other detail info: <ul><li><i>Required permission</i>:
    resource=<b>"NAMESPACE:{namespace}:PROFILE"</b>, action=1
    <b>(CREATE)</b></li><li><i>Action code</i>: 11401</li><li><i>Returns</i>:
    Created user profile</li><li><i>Path's namespace</i> : <ul><li>can be filled
    with <b>publisher namespace</b> in order to create <b>publisher user
    profile</b></li><li>can be filled with <b>game namespace</b> in order to
    create <b>game user profile</b></li></ul></li><li><i>Language</i> : allowed
    format: en, en-US</li><li><i>Country</i> : ISO3166-1 alpha-2 two letter, e.g.
    US </li><li><i>Timezone</i> : IANA time zone, e.g. Asia/Shanghai</li></ul>


    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL UserProfilePrivateCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked)

        409: Conflict - ErrorEntity (11441: Unable to {action}: User profile already exists)
    """

    # region fields

    _url: str = "/basic/v1/public/namespaces/{namespace}/users/me/profiles"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: UserProfilePrivateCreate                                                                 # OPTIONAL in [body]
    namespace: str                                                                                 # REQUIRED in [path]

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
            "namespace",
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
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: UserProfilePrivateCreate) -> CreateMyProfile:
        self.body = value
        return self

    def with_namespace(self, value: str) -> CreateMyProfile:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = UserProfilePrivateCreate()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, UserProfilePrivateInfo], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        201: Created - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked)

        409: Conflict - ErrorEntity (11441: Unable to {action}: User profile already exists)
        """
        if code == 201:
            return UserProfilePrivateInfo.create_from_dict(content), None
        if code == 400:
            return None, ValidationErrorEntity.create_from_dict(content)
        if code == 401:
            return None, ErrorEntity.create_from_dict(content)
        if code == 403:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        body: Optional[UserProfilePrivateCreate] = None,
    ) -> CreateMyProfile:
        instance = cls()
        instance.namespace = namespace
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreateMyProfile:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = UserProfilePrivateCreate.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = UserProfilePrivateCreate()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    # endregion static methods
