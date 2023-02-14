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

from ...models import ModelSendVerificationCodeRequest
from ...models import RestErrorResponse


class SendVerificationCode(Operation):
    """Send verification code to user (SendVerificationCode)

    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /iam/v3/public/namespaces/{namespace}/users/me/code/request [POST]





    Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'


    The verification code is sent to either the phone number or email address. It depends on the LoginID's value.




    Available contexts for use :






      1. UserAccountRegistration

    a context type used for verifying email address in user account registration. It returns 409 if the email address already verified. It is the default context if the Context field is empty



      2. UpdateEmailAddress

    a context type used for verify user before updating email address.(Without email address verified checking)



      3. upgradeHeadlessAccount

    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account. If this context used, IAM rejects the request if the loginId field's value is already used by others by returning HTTP Status Code 409.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/verificationcode

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10146: userID not match)

        404: Not Found - (20008: user not found | 10171: email address not found | 10139: platform account not found)

        409: Conflict - (10140: user verified | 10133: email already used)

        429: Too Many Requests - (20007: too many requests)

        500: Internal Server Error - (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/namespaces/{namespace}/users/{userId}/verificationcode"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelSendVerificationCodeRequest  # REQUIRED in [body]
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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
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

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelSendVerificationCodeRequest
    ) -> SendVerificationCode:
        self.body = value
        return self

    def with_namespace(self, value: str) -> SendVerificationCode:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> SendVerificationCode:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelSendVerificationCodeRequest()
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
    ) -> Tuple[None, Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10146: userID not match)

        404: Not Found - (20008: user not found | 10171: email address not found | 10139: platform account not found)

        409: Conflict - (10140: user verified | 10133: email already used)

        429: Too Many Requests - (20007: too many requests)

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
            return None, HttpResponse.create(code, "Forbidden")
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")
        if code == 409:
            return None, HttpResponse.create(code, "Conflict")
        if code == 429:
            return None, HttpResponse.create(code, "Too Many Requests")
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
        body: ModelSendVerificationCodeRequest,
        namespace: str,
        user_id: str,
    ) -> SendVerificationCode:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SendVerificationCode:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelSendVerificationCodeRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelSendVerificationCodeRequest()
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
            "body": "body",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
