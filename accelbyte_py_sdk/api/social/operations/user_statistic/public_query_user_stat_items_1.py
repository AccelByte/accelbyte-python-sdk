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

from ...models import ADTOObjectForUserStatItemValue
from ...models import ErrorEntity
from ...models import ValidationErrorEntity


class PublicQueryUserStatItems1(Operation):
    """Public list user's statItems (publicQueryUserStatItems_1)

    Public list all statItems of user.
    NOTE:
    * If stat code does not exist, will ignore this stat code.
    * If stat item does not exist, will return default value

    Other detail info:
      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
      *  Returns : stat items

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:STATITEM [READ]

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = (
        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    stat_codes: List[str]  # OPTIONAL in [query]
    tags: List[str]  # OPTIONAL in [query]

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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "stat_codes"):
            result["statCodes"] = self.stat_codes
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicQueryUserStatItems1:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PublicQueryUserStatItems1:
        self.user_id = value
        return self

    def with_stat_codes(self, value: List[str]) -> PublicQueryUserStatItems1:
        self.stat_codes = value
        return self

    def with_tags(self, value: List[str]) -> PublicQueryUserStatItems1:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "stat_codes") and self.stat_codes:
            result["statCodes"] = [str(i0) for i0 in self.stat_codes]
        elif include_empty:
            result["statCodes"] = []
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[ADTOObjectForUserStatItemValue]],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

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
            return [
                ADTOObjectForUserStatItemValue.create_from_dict(i) for i in content
            ], None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
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
        user_id: str,
        stat_codes: Optional[List[str]] = None,
        tags: Optional[List[str]] = None,
    ) -> PublicQueryUserStatItems1:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if stat_codes is not None:
            instance.stat_codes = stat_codes
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicQueryUserStatItems1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "statCodes" in dict_ and dict_["statCodes"] is not None:
            instance.stat_codes = [str(i0) for i0 in dict_["statCodes"]]
        elif include_empty:
            instance.stat_codes = []
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "statCodes": "stat_codes",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "statCodes": False,
            "tags": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "statCodes": "multi",  # in query
            "tags": "multi",  # in query
        }

    # endregion static methods
