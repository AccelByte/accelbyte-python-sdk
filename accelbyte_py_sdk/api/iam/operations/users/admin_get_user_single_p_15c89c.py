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

from ...models import ModelUserPlatformMetadata
from ...models import RestErrorResponse


class AdminGetUserSinglePlatformAccount(Operation):
    """Admin get user single platform account metadata (AdminGetUserSinglePlatformAccount)

    This endpoint gets user single platform account metadata.


    **Supported Platforms:**
    - Steam group (steamnetwork):
    - steam
    - steamopenid
    - PSN group (psn):
    - ps4web
    - ps4
    - ps5
    - XBOX group(xbox):
    - live
    - xblweb
    - Oculus group (oculusgroup):
    - oculus
    - oculusweb
    - Google group (google):
    - google
    - googleplaygames:
    - epicgames
    - facebook
    - twitch
    - discord
    - android
    - ios
    - apple
    - device
    - nintendo
    - awscognito
    - amazon
    - netflix
    - snapchat
    - _oidc platform id_

    Note:
    - You can use either platform id or platform group as **platformId** parameter.
    - **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        cross_namespace: (crossNamespace) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserPlatformMetadata (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    platform_id: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    cross_namespace: bool  # OPTIONAL in [query]

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
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "cross_namespace"):
            result["crossNamespace"] = self.cross_namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminGetUserSinglePlatformAccount:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> AdminGetUserSinglePlatformAccount:
        self.platform_id = value
        return self

    def with_user_id(self, value: str) -> AdminGetUserSinglePlatformAccount:
        self.user_id = value
        return self

    def with_cross_namespace(self, value: bool) -> AdminGetUserSinglePlatformAccount:
        self.cross_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "cross_namespace") and self.cross_namespace:
            result["crossNamespace"] = bool(self.cross_namespace)
        elif include_empty:
            result["crossNamespace"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelUserPlatformMetadata],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelUserPlatformMetadata (OK)

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
            return ModelUserPlatformMetadata.create_from_dict(content), None
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
        platform_id: str,
        user_id: str,
        cross_namespace: Optional[bool] = None,
        **kwargs,
    ) -> AdminGetUserSinglePlatformAccount:
        instance = cls()
        instance.namespace = namespace
        instance.platform_id = platform_id
        instance.user_id = user_id
        if cross_namespace is not None:
            instance.cross_namespace = cross_namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminGetUserSinglePlatformAccount:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "crossNamespace" in dict_ and dict_["crossNamespace"] is not None:
            instance.cross_namespace = bool(dict_["crossNamespace"])
        elif include_empty:
            instance.cross_namespace = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "platformId": "platform_id",
            "userId": "user_id",
            "crossNamespace": "cross_namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "platformId": True,
            "userId": True,
            "crossNamespace": False,
        }

    # endregion static methods
