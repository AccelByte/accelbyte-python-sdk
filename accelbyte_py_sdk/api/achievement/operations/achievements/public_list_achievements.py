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

# AccelByte Cloud Achievement Service (2.14.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ModelsPublicAchievementsResponse
from ...models import ResponseError


class SortByEnum(StrEnum):
    LISTORDER = "listOrder"
    LISTORDER_ASC = "listOrder:asc"
    LISTORDER_DESC = "listOrder:desc"
    CREATEDAT = "createdAt"
    CREATEDAT_ASC = "createdAt:asc"
    CREATEDAT_DESC = "createdAt:desc"
    UPDATEDAT = "updatedAt"
    UPDATEDAT_ASC = "updatedAt:asc"
    UPDATEDAT_DESC = "updatedAt:desc"


class PublicListAchievements(Operation):
    """Query achievements (PublicListAchievements)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Required Permission(s):
        - NAMESPACE:{namespace}:ACHIEVEMENT [READ]

    Required Scope(s):
        - social

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/achievements

        method: GET

        tags: ["Achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        global_: (global) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ModelsPublicAchievementsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/achievement/v1/public/namespaces/{namespace}/achievements"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    global_: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    sort_by: Union[str, SortByEnum]  # OPTIONAL in [query]
    tags: List[str]  # OPTIONAL in [query]
    language: str  # REQUIRED in [query]

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
        if hasattr(self, "global_"):
            result["global"] = self.global_
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        if hasattr(self, "language"):
            result["language"] = self.language
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicListAchievements:
        self.namespace = value
        return self

    def with_global_(self, value: bool) -> PublicListAchievements:
        self.global_ = value
        return self

    def with_limit(self, value: int) -> PublicListAchievements:
        self.limit = value
        return self

    def with_offset(self, value: int) -> PublicListAchievements:
        self.offset = value
        return self

    def with_sort_by(self, value: Union[str, SortByEnum]) -> PublicListAchievements:
        self.sort_by = value
        return self

    def with_tags(self, value: List[str]) -> PublicListAchievements:
        self.tags = value
        return self

    def with_language(self, value: str) -> PublicListAchievements:
        self.language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "global_") and self.global_:
            result["global"] = bool(self.global_)
        elif include_empty:
            result["global"] = False
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = Union[str, SortByEnum]()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsPublicAchievementsResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelsPublicAchievementsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)

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
            return ModelsPublicAchievementsResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        language: str,
        global_: Optional[bool] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        sort_by: Optional[Union[str, SortByEnum]] = None,
        tags: Optional[List[str]] = None,
    ) -> PublicListAchievements:
        instance = cls()
        instance.namespace = namespace
        instance.language = language
        if global_ is not None:
            instance.global_ = global_
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if sort_by is not None:
            instance.sort_by = sort_by
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicListAchievements:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "global" in dict_ and dict_["global"] is not None:
            instance.global_ = bool(dict_["global"])
        elif include_empty:
            instance.global_ = False
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = Union[str, SortByEnum]()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "global": "global_",
            "limit": "limit",
            "offset": "offset",
            "sortBy": "sort_by",
            "tags": "tags",
            "language": "language",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "global": False,
            "limit": False,
            "offset": False,
            "sortBy": False,
            "tags": False,
            "language": True,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "tags": "csv",  # in query
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "sortBy": [
                "listOrder",
                "listOrder:asc",
                "listOrder:desc",
                "createdAt",
                "createdAt:asc",
                "createdAt:desc",
                "updatedAt",
                "updatedAt:asc",
                "updatedAt:desc",
            ],  # in query
        }

    # endregion static methods
