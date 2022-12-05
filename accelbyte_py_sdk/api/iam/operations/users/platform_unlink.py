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

# AccelByte Cloud Iam Service (5.22.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import RestErrorResponse


class PlatformUnlink(Operation):
    """Unlink user's account with platform (PlatformUnlink)

    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]

      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]








    Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.




    ## Supported platforms:






      * steam


      * steamopenid


      * facebook


      * google


      * oculus


      * twitch


      * android


      * ios


      * device


      * justice : A user might have several 'justiceâ platform on different namespaces. Thatâs why the platform_namespace need to be specified when the platform ID is âjusticeâ. The platform_namespace is the designated userâs namespace.





    Unlink user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.

    Unlinking justice platform will enable password token grant and password update.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """

    # region fields

    _url: str = (
        "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink"
    )
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded", "text/plain"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    platform_namespace: str  # OPTIONAL in [form_data]
    namespace: str  # REQUIRED in [path]
    platform_id: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]

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
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "platform_namespace"):
            result["platform_namespace"] = self.platform_namespace
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_platform_namespace(self, value: str) -> PlatformUnlink:
        self.platform_namespace = value
        return self

    def with_namespace(self, value: str) -> PlatformUnlink:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> PlatformUnlink:
        self.platform_id = value
        return self

    def with_user_id(self, value: str) -> PlatformUnlink:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_namespace") and self.platform_namespace:
            result["platform_namespace"] = str(self.platform_namespace)
        elif include_empty:
            result["platform_namespace"] = ""
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
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

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

        if code == 204:
            return None, None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
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
        platform_id: str,
        user_id: str,
        platform_namespace: Optional[str] = None,
    ) -> PlatformUnlink:
        instance = cls()
        instance.namespace = namespace
        instance.platform_id = platform_id
        instance.user_id = user_id
        if platform_namespace is not None:
            instance.platform_namespace = platform_namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformUnlink:
        instance = cls()
        if "platform_namespace" in dict_ and dict_["platform_namespace"] is not None:
            instance.platform_namespace = str(dict_["platform_namespace"])
        elif include_empty:
            instance.platform_namespace = ""
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
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platform_namespace": "platform_namespace",
            "namespace": "namespace",
            "platformId": "platform_id",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platform_namespace": False,
            "namespace": True,
            "platformId": True,
            "userId": True,
        }

    # endregion static methods
