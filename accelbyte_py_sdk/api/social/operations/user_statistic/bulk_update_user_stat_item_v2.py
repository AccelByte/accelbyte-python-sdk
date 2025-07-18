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

# AccelByte Gaming Services Statistics Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import BulkStatOperationResult
from ...models import BulkUserStatItemUpdate
from ...models import ErrorEntity
from ...models import ValidationErrorEntity


class BulkUpdateUserStatItemV2(Operation):
    """Bulk update multiple user's statitems value (bulkUpdateUserStatItemV2)

    Bulk update multiple user's statitems value with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    Other detail info:
    + *Returns*: bulk updated result






    ### â ï¸ Important Note on Bulk Update Behavior





    To ensure data integrity and avoid inconsistencies or race conditions, it is crucial to make each user/update pair unique per request.
    We strongly advise against including multiple updates for the same `userId` with the same `statCode` and/or `updateStrategy` in a single request,
    as bulk operations are processed concurrently.






    Avoid including multiple entries with the same`userId` and `statCode` but different `updateStrategy` values.






    To apply multiple operations on the same stat, please batch or sequence them in separate requests , according to your business logic.




    â Incorrect Example:

    [
    {
    "userId": "315a070e48a74dae903d559974e6513d",
    "statCode": "exp",
    "updateStrategy": "OVERRIDE",
    "value": 10
    },
    {
    "userId": "315a070e48a74dae903d559974e6513d",
    "statCode": "exp",
    "updateStrategy": "INCREMENT",
    "value": 50
    }
    ]

    â Correct Example:

    [
    {
    "userId": "315a070e48a74dae903d559974e6513d",
    "statCode": "exp",
    "updateStrategy": "INCREMENT",
    "value": 60
    }
    ]

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """

    # region fields

    _url: str = "/social/v2/admin/namespaces/{namespace}/statitems/value/bulk"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: List[BulkUserStatItemUpdate]  # REQUIRED in [body]
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
        return [i.to_dict() for i in self.body]

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
        self, value: List[BulkUserStatItemUpdate]
    ) -> BulkUpdateUserStatItemV2:
        self.body = value
        return self

    def with_namespace(self, value: str) -> BulkUpdateUserStatItemV2:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.body
            ]
        elif include_empty:
            result["body"] = []
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
        Union[None, List[BulkStatOperationResult]],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)

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
            return [BulkStatOperationResult.create_from_dict(i) for i in content], None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 401:
            return None, ErrorEntity.create_from_dict(content)
        if code == 403:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)
        if code == 500:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, body: List[BulkUserStatItemUpdate], namespace: str, **kwargs
    ) -> BulkUpdateUserStatItemV2:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkUpdateUserStatItemV2:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = [
                BulkUserStatItemUpdate.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["body"]
            ]
        elif include_empty:
            instance.body = []
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
