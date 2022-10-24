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

# AccelByte Cloud Social Service (1.30.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import StatItemIncResult
from ...models import StatItemUpdate
from ...models import ValidationErrorEntity


class UpdateUserStatItemValue(Operation):
    """Update user's statitem value (updateUserStatItemValue)

    Update user's statitem value for a given namespace and user with a certain update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=4 (UPDATE)
    + *Returns*: updated user's statItem

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM [UPDATE]

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StatItemUpdate in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: StatItemUpdate  # OPTIONAL in [body]
    namespace: str  # REQUIRED in [path]
    stat_code: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    additional_key: str  # OPTIONAL in [query]

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
        if hasattr(self, "stat_code"):
            result["statCode"] = self.stat_code
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "additional_key"):
            result["additionalKey"] = self.additional_key
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: StatItemUpdate) -> UpdateUserStatItemValue:
        self.body = value
        return self

    def with_namespace(self, value: str) -> UpdateUserStatItemValue:
        self.namespace = value
        return self

    def with_stat_code(self, value: str) -> UpdateUserStatItemValue:
        self.stat_code = value
        return self

    def with_user_id(self, value: str) -> UpdateUserStatItemValue:
        self.user_id = value
        return self

    def with_additional_key(self, value: str) -> UpdateUserStatItemValue:
        self.additional_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = StatItemUpdate()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "stat_code") and self.stat_code:
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "additional_key") and self.additional_key:
            result["additionalKey"] = str(self.additional_key)
        elif include_empty:
            result["additionalKey"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, StatItemIncResult],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

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
            return StatItemIncResult.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        stat_code: str,
        user_id: str,
        body: Optional[StatItemUpdate] = None,
        additional_key: Optional[str] = None,
    ) -> UpdateUserStatItemValue:
        instance = cls()
        instance.namespace = namespace
        instance.stat_code = stat_code
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        if additional_key is not None:
            instance.additional_key = additional_key
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdateUserStatItemValue:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = StatItemUpdate.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = StatItemUpdate()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "additionalKey" in dict_ and dict_["additionalKey"] is not None:
            instance.additional_key = str(dict_["additionalKey"])
        elif include_empty:
            instance.additional_key = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "statCode": "stat_code",
            "userId": "user_id",
            "additionalKey": "additional_key",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "namespace": True,
            "statCode": True,
            "userId": True,
            "additionalKey": False,
        }

    # endregion static methods
