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

# AccelByte Gaming Services Iam Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ModelRoleOverrideResponse
from ...models import ModelRoleOverrideStatsUpdateRequest
from ...models import RestErrorResponse


class IdentityEnum(StrEnum):
    GAME_ADMIN = "GAME_ADMIN"
    USER = "USER"
    VIEW_ONLY = "VIEW_ONLY"


class AdminChangeRoleOverrideConfigStatusV3(Operation):
    """Change role override config active status (AdminChangeRoleOverrideConfigStatusV3)

    Enable or disable the target role override feature in path namespace.
    Note:
    This API has upsert behavior, if there is no config yet, it will create a new one first.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roleoverride/status

        method: PATCH

        tags: ["Override Role Config v3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleOverrideStatsUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        identity: (identity) REQUIRED Union[str, IdentityEnum] in query

    Responses:
        200: OK - ModelRoleOverrideResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/roleoverride/status"
    _method: str = "PATCH"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelRoleOverrideStatsUpdateRequest  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]
    identity: Union[str, IdentityEnum]  # REQUIRED in [query]

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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "identity"):
            result["identity"] = self.identity
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelRoleOverrideStatsUpdateRequest
    ) -> AdminChangeRoleOverrideConfigStatusV3:
        self.body = value
        return self

    def with_namespace(self, value: str) -> AdminChangeRoleOverrideConfigStatusV3:
        self.namespace = value
        return self

    def with_identity(
        self, value: Union[str, IdentityEnum]
    ) -> AdminChangeRoleOverrideConfigStatusV3:
        self.identity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelRoleOverrideStatsUpdateRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "identity") and self.identity:
            result["identity"] = str(self.identity)
        elif include_empty:
            result["identity"] = Union[str, IdentityEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelRoleOverrideResponse],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelRoleOverrideResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

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
            return ModelRoleOverrideResponse.create_from_dict(content), None
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
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
        body: ModelRoleOverrideStatsUpdateRequest,
        namespace: str,
        identity: Union[str, IdentityEnum],
        **kwargs,
    ) -> AdminChangeRoleOverrideConfigStatusV3:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.identity = identity
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminChangeRoleOverrideConfigStatusV3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelRoleOverrideStatsUpdateRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelRoleOverrideStatsUpdateRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "identity" in dict_ and dict_["identity"] is not None:
            instance.identity = str(dict_["identity"])
        elif include_empty:
            instance.identity = Union[str, IdentityEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "identity": "identity",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "identity": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "identity": ["GAME_ADMIN", "USER", "VIEW_ONLY"],  # in query
        }

    # endregion static methods
