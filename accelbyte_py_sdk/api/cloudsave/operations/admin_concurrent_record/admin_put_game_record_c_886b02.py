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

from ...models import ModelsAdminConcurrentRecordRequest
from ...models import ModelsResponseError


class AdminPutGameRecordConcurrentHandlerV1(Operation):
    """Create or replace game record (adminPutGameRecordConcurrentHandlerV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
    --------------------|---------------------------------------------------------
    Required Scope      | `social`








    ## Description



    This endpoints will create new game record or replace the existing game record.

     Replace behaviour:
    The existing value will be replaced completely with the new value.

    Example
    - Existing JSON:



        { "data1": "value" }


    - New JSON:



        { "data2": "new value" }


    - Result:



        { "data2": "new value" }






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






    ## Reserved Word



    Reserved Word List: __META

    The reserved word cannot be used as a field in record value,
    If still defining the field when creating or updating the record, it will be ignored.




    ## Parameters Notes


    1. set_by (default: CLIENT, type: string)
    Indicate which party that could modify the game record.
    SERVER: record can be modified by server only.
    CLIENT: record can be modified by client and server.
    2. updatedAt (required: true)
    Time format style: RFC3339
    3. value
    Json
     Request Body Example:




            {
                "set_by": "SERVER",
                "value": {},
                "updatedAt": "2022-03-17T10:42:15.444Z"
            }






    ## Optimistic Concurrency Control



    This endpoint implement optimistic concurrency control to avoid race condition.
    If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
    and client need to redo the operation (fetch data and do update).
    Otherwise, the server will process the request.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]

        - CLIENT []

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}

        method: PUT

        tags: ["AdminConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminConcurrentRecordRequest in body

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsAdminConcurrentRecordRequest  # REQUIRED in [body]
    key: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]

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
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelsAdminConcurrentRecordRequest
    ) -> AdminPutGameRecordConcurrentHandlerV1:
        self.body = value
        return self

    def with_key(self, value: str) -> AdminPutGameRecordConcurrentHandlerV1:
        self.key = value
        return self

    def with_namespace(self, value: str) -> AdminPutGameRecordConcurrentHandlerV1:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsAdminConcurrentRecordRequest()
        if hasattr(self, "key") and self.key:
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, ModelsResponseError]]:
        """Parse the given response.

        204: No Content - (Record saved)

        400: Bad Request - ModelsResponseError (18201: invalid record operator, expect [%s] but actual [%s])

        401: Unauthorized - ModelsResponseError (Unauthorized)

        412: Precondition Failed - ModelsResponseError (Precondition Failed)

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

        if code == 204:
            return None, None
        if code == 400:
            return None, ModelsResponseError.create_from_dict(content)
        if code == 401:
            return None, ModelsResponseError.create_from_dict(content)
        if code == 412:
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
        body: ModelsAdminConcurrentRecordRequest,
        key: str,
        namespace: str,
    ) -> AdminPutGameRecordConcurrentHandlerV1:
        instance = cls()
        instance.body = body
        instance.key = key
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminPutGameRecordConcurrentHandlerV1:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsAdminConcurrentRecordRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsAdminConcurrentRecordRequest()
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "key": "key",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "key": True,
            "namespace": True,
        }

    # endregion static methods
