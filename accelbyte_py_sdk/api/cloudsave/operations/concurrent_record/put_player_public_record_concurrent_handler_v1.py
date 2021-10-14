# Auto-generated at 2021-10-14T22:17:18.932313+08:00
# from: Justice Cloudsave Service (3.38.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ModelsConcurrentRecordRequest
from ...models import ResponseError


class PutPlayerPublicRecordConcurrentHandlerV1(Operation):
    """Create or replace player record (putPlayerPublicRecordConcurrentHandlerV1)

    Required Permission |
    `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]`  
    ---|---  
    Required Scope | `social`  

    If the record is not exist, it will create. If the record already exist, it
    will replace the record instead. And this operation can only be applied to
    record with `isPublic=true`. Example Replace record



        // existed record
        {
            "foo": "bar"
        }

        // new record (request body)
        {
            "foo_new": "bar_new"
        }

        // result
        {
            "foo_new": "bar_new"
        }


    Optimistic Concurrency Control  
    This endpoint implement optimistic concurrency control to avoid race
    condition. If the record has been updated since the client fetch it, the
    server will return HTTP status code 412 (precondition failed) and client need
    to redo the operation (fetch data and do update). Otherwise, the server will
    process the request.


    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/users/{userID}/concurrent/records/{key}/public

        method: PUT

        tags: ["ConcurrentRecord"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) REQUIRED ModelsConcurrentRecordRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userID) REQUIRED str in path

        key: (key) REQUIRED str in path

    Responses:
        204: No Content - (Record saved)

        400: Bad Request - ResponseError (Bad Request)

        412: Precondition Failed - ResponseError (Precondition Failed)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/cloudsave/v1/namespaces/{namespace}/users/{userID}/concurrent/records/{key}/public"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelsConcurrentRecordRequest                                                            # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    key: str                                                                                       # REQUIRED in [path]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "namespace",
            "user_id",
            "key",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userID"] = self.user_id
        if hasattr(self, "key"):
            result["key"] = self.key
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        if not hasattr(self, "key") or self.key is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsConcurrentRecordRequest) -> PutPlayerPublicRecordConcurrentHandlerV1:
        self.body = value
        return self

    def with_namespace(self, value: str) -> PutPlayerPublicRecordConcurrentHandlerV1:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PutPlayerPublicRecordConcurrentHandlerV1:
        self.user_id = value
        return self

    def with_key(self, value: str) -> PutPlayerPublicRecordConcurrentHandlerV1:
        self.key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsConcurrentRecordRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = str()
        if hasattr(self, "key") and self.key:
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, ResponseError]]:
        """Parse the given response.

        204: No Content - (Record saved)

        400: Bad Request - ResponseError (Bad Request)

        412: Precondition Failed - ResponseError (Precondition Failed)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 204:
            return HttpResponse.create(code, "No Content"), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 412:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelsConcurrentRecordRequest,
        namespace: str,
        user_id: str,
        key: str,
    ) -> PutPlayerPublicRecordConcurrentHandlerV1:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.user_id = user_id
        instance.key = key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PutPlayerPublicRecordConcurrentHandlerV1:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsConcurrentRecordRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelsConcurrentRecordRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = str()
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "userID": "user_id",
            "key": "key",
        }

    # endregion static methods
