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

# AccelByte Cloud Cloudsave Service (3.6.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsPlayerRecordRequest
from ...models import ModelsPlayerRecordResponse
from ...models import ModelsResponseError


class PostPlayerRecordHandlerV1(Operation):
    """Create or append player record (postPlayerRecordHandlerV1)

    Required permission: `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
    Required scope: `social`



    ## Description



    This endpoints will create new player record or append the existing player record.
    Only user that own the existing player record could modify.

     Append example:

    Example 1
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data1": "value", "data2": "new value" }



    Example 2
    - Existing JSON:



        { "data1": { "data2": "value" }


    - New JSON:



        { "data1": { "data3": "new value" }


    - Result:



        { "data1": { "data2": "value", "data3": "new value" }






    ## Restriction


    This is the restriction of Key Naming for the record:
    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }


    3. Cannot use empty string in key names
    -


        { "": "value" }






    ## Record Metadata



    Metadata allows user to define the behaviour of the record.
    Metadata can be defined in request body with field name __META.
    When creating record, if __META field is not defined, the metadata value will use the default value.
    When updating record, if __META field is not defined, the existing metadata value will stay as is.

     Metadata List:
    1. is_public (default: false, type: bool)
    Indicate whether the player record is a public record or not.

     Request Body Example:




            {
                "__META": {
                    "is_public": true
                }
                ...
            }

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}

        method: POST

        tags: ["PublicPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPlayerRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (18035: post action is forbidden on other user's record)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsPlayerRecordRequest  # REQUIRED in [body]
    key: str  # REQUIRED in [path]
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
        if hasattr(self, "key"):
            result["key"] = self.key
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsPlayerRecordRequest) -> PostPlayerRecordHandlerV1:
        self.body = value
        return self

    def with_key(self, value: str) -> PostPlayerRecordHandlerV1:
        self.key = value
        return self

    def with_namespace(self, value: str) -> PostPlayerRecordHandlerV1:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PostPlayerRecordHandlerV1:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsPlayerRecordRequest()
        if hasattr(self, "key") and self.key:
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
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
        Union[None, ModelsPlayerRecordResponse],
        Union[None, HttpResponse, ModelsResponseError],
    ]:
        """Parse the given response.

        201: Created - ModelsPlayerRecordResponse (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (18035: post action is forbidden on other user's record)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)

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

        if code == 201:
            return ModelsPlayerRecordResponse.create_from_dict(content), None
        if code == 400:
            return None, ModelsResponseError.create_from_dict(content)
        if code == 401:
            return None, ModelsResponseError.create_from_dict(content)
        if code == 403:
            return None, ModelsResponseError.create_from_dict(content)
        if code == 500:
            return None, ModelsResponseError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelsPlayerRecordRequest,
        key: str,
        namespace: str,
        user_id: str,
    ) -> PostPlayerRecordHandlerV1:
        instance = cls()
        instance.body = body
        instance.key = key
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PostPlayerRecordHandlerV1:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsPlayerRecordRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsPlayerRecordRequest()
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
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
            "key": "key",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "key": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
