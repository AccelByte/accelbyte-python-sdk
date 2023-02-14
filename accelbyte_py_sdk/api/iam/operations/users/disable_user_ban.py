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

# AccelByte Cloud Iam Service (5.27.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import ModelUserBanResponse
from ...models import RestErrorResponse


class DisableUserBan(Operation):
    """Disable ban for a single user. (DisableUserBan)

    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]





    Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [UPDATE]'.
    "+
    "
     Notes for using IAM in publisher - game studio scenarios
    "+
    "

    The endpoint allows:

    "+
    "
      * The admin user in publisher namespace disables userâs ban in publisher namespace.
    "+
    "
      * The admin user in game namespace disables userâs ban in game namespace.
    "+
    "
      * The admin user in publisher namespace disables userâs ban in publisher namespace.

    "+
    "

    Other scenarios are not supported and will return 403: Forbidden.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [UPDATE]

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

        500: Internal Server Error - (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable"
    _method: str = "PUT"
    _consumes: List[str] = ["*/*"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    ban_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
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
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "ban_id"):
            result["banId"] = self.ban_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_ban_id(self, value: str) -> DisableUserBan:
        self.ban_id = value
        return self

    def with_namespace(self, value: str) -> DisableUserBan:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> DisableUserBan:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban_id") and self.ban_id:
            result["banId"] = str(self.ban_id)
        elif include_empty:
            result["banId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
    ) -> Tuple[
        Union[None, ModelUserBanResponse], Union[None, HttpResponse, RestErrorResponse]
    ]:
        """Parse the given response.

        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

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
            return ModelUserBanResponse.create_from_dict(content), None
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
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
        ban_id: str,
        namespace: str,
        user_id: str,
    ) -> DisableUserBan:
        instance = cls()
        instance.ban_id = ban_id
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DisableUserBan:
        instance = cls()
        if "banId" in dict_ and dict_["banId"] is not None:
            instance.ban_id = str(dict_["banId"])
        elif include_empty:
            instance.ban_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "banId": "ban_id",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "banId": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
