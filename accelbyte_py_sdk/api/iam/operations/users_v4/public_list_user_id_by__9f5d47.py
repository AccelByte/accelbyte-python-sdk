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

from ...models import AccountcommonUserPlatforms
from ...models import ModelPlatformUserIDRequestV4
from ...models import RestErrorResponse


class PublicListUserIDByPlatformUserIDsV4(Operation):
    """List User ID By Platform User ID (PublicListUserIDByPlatformUserIDsV4)

    List User ID By Platform User ID
    This endpoint intended to list game user ID from the given namespace
    This endpoint return list of user ID by given platform ID and list of platform user ID, the max count is 100.

    Supported platform:
    - steam
    - steamopenid
    - ps4web
    - ps4
    - ps5
    - live
    - xblweb
    - oculus
    - if query by app user id, please set the param **pidType** to **OCULUS_APP_USER_ID**
    - oculusweb
    - facebook
    - google
    - googleplaygames
    - twitch
    - discord
    - apple
    - device
    - justice
    - epicgames
    - nintendo
    - awscognito
    - netflix
    - snapchat
    - oidc platform id

    Note:
    **nintendo platform user ID**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

    If the request body exceed the max limitation, the max count will be in response body's messageVariables: "messageVariables": {"maxCount": "100"}

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformUserIDRequestV4 in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        raw_puid: (rawPUID) OPTIONAL bool in query

    Responses:
        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10229: request body exceed max limitation)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelPlatformUserIDRequestV4  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]
    platform_id: str  # REQUIRED in [path]
    raw_puid: bool  # OPTIONAL in [query]

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
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "raw_puid"):
            result["rawPUID"] = self.raw_puid
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelPlatformUserIDRequestV4
    ) -> PublicListUserIDByPlatformUserIDsV4:
        self.body = value
        return self

    def with_namespace(self, value: str) -> PublicListUserIDByPlatformUserIDsV4:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> PublicListUserIDByPlatformUserIDsV4:
        self.platform_id = value
        return self

    def with_raw_puid(self, value: bool) -> PublicListUserIDByPlatformUserIDsV4:
        self.raw_puid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelPlatformUserIDRequestV4()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "raw_puid") and self.raw_puid:
            result["rawPUID"] = bool(self.raw_puid)
        elif include_empty:
            result["rawPUID"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, AccountcommonUserPlatforms],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10229: request body exceed max limitation)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

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
            return AccountcommonUserPlatforms.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
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
        body: ModelPlatformUserIDRequestV4,
        namespace: str,
        platform_id: str,
        raw_puid: Optional[bool] = None,
        **kwargs,
    ) -> PublicListUserIDByPlatformUserIDsV4:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.platform_id = platform_id
        if raw_puid is not None:
            instance.raw_puid = raw_puid
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicListUserIDByPlatformUserIDsV4:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelPlatformUserIDRequestV4.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelPlatformUserIDRequestV4()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "rawPUID" in dict_ and dict_["rawPUID"] is not None:
            instance.raw_puid = bool(dict_["rawPUID"])
        elif include_empty:
            instance.raw_puid = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "platformId": "platform_id",
            "rawPUID": "raw_puid",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "platformId": True,
            "rawPUID": False,
        }

    # endregion static methods
