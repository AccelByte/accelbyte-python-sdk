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

# AccelByte Cloud Basic Service (2.5.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ADTOObjectForEqu8UserBanStatus
from ...models import ErrorEntity
from ...models import ValidationErrorEntity


class GetBannedUsers(Operation):
    """Get banned user (getBannedUsers)

    Get banned status.
    Unbanned users will not return, for example: request has 8 userIds, only 5 of then were banned, then the api will these 5 user status.Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/banned

        method: GET

        tags: ["UserAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[ADTOObjectForEqu8UserBanStatus] (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """

    # region fields

    _url: str = "/basic/v1/admin/namespaces/{namespace}/actions/banned"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_ids: List[str]  # REQUIRED in [query]

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
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "user_ids"):
            result["userIds"] = self.user_ids
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetBannedUsers:
        self.namespace = value
        return self

    def with_user_ids(self, value: List[str]) -> GetBannedUsers:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_ids") and self.user_ids:
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[ADTOObjectForEqu8UserBanStatus]],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - List[ADTOObjectForEqu8UserBanStatus] (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)

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
            return [
                ADTOObjectForEqu8UserBanStatus.create_from_dict(i) for i in content
            ], None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
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
        cls,
        namespace: str,
        user_ids: List[str],
    ) -> GetBannedUsers:
        instance = cls()
        instance.namespace = namespace
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetBannedUsers:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userIds": True,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "userIds": "multi",  # in query
        }

    # endregion static methods
