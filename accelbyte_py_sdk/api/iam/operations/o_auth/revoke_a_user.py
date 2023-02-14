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


class RevokeAUser(Operation):
    """OAuth2 user revocation API (RevokeAUser)

    ## The endpoint is going to be deprecated




    This endpoint revokes a user.




    This endpoint requires all requests to have Authorization header set with Bearer access authentication with valid access token.




    Required permission 'NAMESPACE:{namespace}:USER:{userID}:ADMIN [UPDATE]'




    When other clients know that the userID has been revoked and the token is issued before the revocation, forcing a new token will contain banned permissions.


    Endpoint migration guide




      * Substitute endpoint: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userID}:ADMIN [UPDATE]

    Properties:
        url: /iam/oauth/revoke/user

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        user_id: (userID) REQUIRED str in form_data

    Responses:
        200: OK - (User revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)
    """

    # region fields

    _url: str = "/iam/oauth/revoke/user"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    user_id: str  # REQUIRED in [form_data]

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
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "user_id"):
            result["userID"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_user_id(self, value: str) -> RevokeAUser:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_id") and self.user_id:
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - (User revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)

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
            return HttpResponse.create(code, "OK"), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_id: str,
    ) -> RevokeAUser:
        instance = cls()
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RevokeAUser:
        instance = cls()
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "userID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "userID": True,
        }

    # endregion static methods
