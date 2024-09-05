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

# AccelByte Gaming Services Ugc Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsPaginatedContentDownloadResponseV2
from ...models import ResponseError


class AdminListContentV2(Operation):
    """List contents (AdminListContentV2)

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses ( ) for priority. e.g:


    *tags=red*
    *tags=red&animal;*
    *tags=red|animal*
    *tags=red&animal;|wild*
    *tags=red&(animal|wild)*

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore _ and dash -

    Allowed character for operator: & | ( )


    **Please note that value of tags query param should be URL encoded**

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_official: (isOfficial) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sub_type: (subType) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (List content)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """

    # region fields

    _url: str = "/ugc/v2/admin/namespaces/{namespace}/contents"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    is_official: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    name: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    sort_by: str  # OPTIONAL in [query]
    sub_type: str  # OPTIONAL in [query]
    tags: List[str]  # OPTIONAL in [query]
    type_: str  # OPTIONAL in [query]

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
        if hasattr(self, "is_official"):
            result["isOfficial"] = self.is_official
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "name"):
            result["name"] = self.name
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "sub_type"):
            result["subType"] = self.sub_type
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        if hasattr(self, "type_"):
            result["type"] = self.type_
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminListContentV2:
        self.namespace = value
        return self

    def with_is_official(self, value: bool) -> AdminListContentV2:
        self.is_official = value
        return self

    def with_limit(self, value: int) -> AdminListContentV2:
        self.limit = value
        return self

    def with_name(self, value: str) -> AdminListContentV2:
        self.name = value
        return self

    def with_offset(self, value: int) -> AdminListContentV2:
        self.offset = value
        return self

    def with_sort_by(self, value: str) -> AdminListContentV2:
        self.sort_by = value
        return self

    def with_sub_type(self, value: str) -> AdminListContentV2:
        self.sub_type = value
        return self

    def with_tags(self, value: List[str]) -> AdminListContentV2:
        self.tags = value
        return self

    def with_type(self, value: str) -> AdminListContentV2:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "is_official") and self.is_official:
            result["isOfficial"] = bool(self.is_official)
        elif include_empty:
            result["isOfficial"] = False
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = ""
        if hasattr(self, "sub_type") and self.sub_type:
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = ""
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsPaginatedContentDownloadResponseV2],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelsPaginatedContentDownloadResponseV2 (List content)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)

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
            return (
                ModelsPaginatedContentDownloadResponseV2.create_from_dict(content),
                None,
            )
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
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
        is_official: Optional[bool] = None,
        limit: Optional[int] = None,
        name: Optional[str] = None,
        offset: Optional[int] = None,
        sort_by: Optional[str] = None,
        sub_type: Optional[str] = None,
        tags: Optional[List[str]] = None,
        type_: Optional[str] = None,
        **kwargs,
    ) -> AdminListContentV2:
        instance = cls()
        instance.namespace = namespace
        if is_official is not None:
            instance.is_official = is_official
        if limit is not None:
            instance.limit = limit
        if name is not None:
            instance.name = name
        if offset is not None:
            instance.offset = offset
        if sort_by is not None:
            instance.sort_by = sort_by
        if sub_type is not None:
            instance.sub_type = sub_type
        if tags is not None:
            instance.tags = tags
        if type_ is not None:
            instance.type_ = type_
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminListContentV2:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "isOfficial" in dict_ and dict_["isOfficial"] is not None:
            instance.is_official = bool(dict_["isOfficial"])
        elif include_empty:
            instance.is_official = False
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = ""
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "isOfficial": "is_official",
            "limit": "limit",
            "name": "name",
            "offset": "offset",
            "sortBy": "sort_by",
            "subType": "sub_type",
            "tags": "tags",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "isOfficial": False,
            "limit": False,
            "name": False,
            "offset": False,
            "sortBy": False,
            "subType": False,
            "tags": False,
            "type": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "tags": "csv",  # in query
        }

    # endregion static methods
