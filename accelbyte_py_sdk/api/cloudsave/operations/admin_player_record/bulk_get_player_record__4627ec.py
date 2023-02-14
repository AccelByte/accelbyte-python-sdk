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

from ...models import ModelsBulkGetPlayerRecordSizeResponse
from ...models import ModelsBulkUserKeyRequest
from ...models import ModelsResponseError


class BulkGetPlayerRecordSizeHandlerV1(Operation):
    """Bulk get player records size (bulkGetPlayerRecordSizeHandlerV1)

    Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
    --------------------|-------------------------------------------------------
    Required Scope      | `social`




    Bulk get player's record size, max allowed 20 at a time, that can be
    retrieved using this endpoint.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

    Required Scope(s):
        - social

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size

        method: POST

        tags: ["AdminPlayerRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserKeyRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkGetPlayerRecordSizeResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

        500: Internal Server Error - ModelsResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsBulkUserKeyRequest  # REQUIRED in [body]
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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelsBulkUserKeyRequest
    ) -> BulkGetPlayerRecordSizeHandlerV1:
        self.body = value
        return self

    def with_namespace(self, value: str) -> BulkGetPlayerRecordSizeHandlerV1:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsBulkUserKeyRequest()
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
    ) -> Tuple[
        Union[None, ModelsBulkGetPlayerRecordSizeResponse],
        Union[None, HttpResponse, ModelsResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelsBulkGetPlayerRecordSizeResponse (Record retrieved)

        400: Bad Request - ModelsResponseError (Bad Request)

        401: Unauthorized - ModelsResponseError (Unauthorized)

        403: Forbidden - ModelsResponseError (Forbidden)

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

        if code == 200:
            return ModelsBulkGetPlayerRecordSizeResponse.create_from_dict(content), None
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
        body: ModelsBulkUserKeyRequest,
        namespace: str,
    ) -> BulkGetPlayerRecordSizeHandlerV1:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkGetPlayerRecordSizeHandlerV1:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsBulkUserKeyRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsBulkUserKeyRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
        }

    # endregion static methods
