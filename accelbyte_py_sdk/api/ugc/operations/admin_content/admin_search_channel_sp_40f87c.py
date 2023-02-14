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

# AccelByte Cloud Ugc Service (2.9.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsPaginatedContentDownloadResponse
from ...models import ResponseError


class AdminSearchChannelSpecificContent(Operation):
    """Search contents specific to a channel (AdminSearchChannelSpecificContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

    `tags=red`

    `tags=red&animal;`

    `tags=red|animal`

    `tags=red&animal;|wild`

    `tags=red&(animal|wild)`

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore `_` and dash `-`

    Allowed character for operator: `&` `|` `(` `)`

     Please note that value of tags query param should be URL encoded

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        isofficial: (isofficial) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = (
        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search"
    )
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    channel_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    creator: str  # OPTIONAL in [query]
    isofficial: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    name: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    orderby: str  # OPTIONAL in [query]
    sortby: str  # OPTIONAL in [query]
    subtype: str  # OPTIONAL in [query]
    tags: List[str]  # OPTIONAL in [query]
    type_: str  # OPTIONAL in [query]
    user_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "channel_id"):
            result["channelId"] = self.channel_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "creator"):
            result["creator"] = self.creator
        if hasattr(self, "isofficial"):
            result["isofficial"] = self.isofficial
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "name"):
            result["name"] = self.name
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "orderby"):
            result["orderby"] = self.orderby
        if hasattr(self, "sortby"):
            result["sortby"] = self.sortby
        if hasattr(self, "subtype"):
            result["subtype"] = self.subtype
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        if hasattr(self, "type_"):
            result["type"] = self.type_
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_channel_id(self, value: str) -> AdminSearchChannelSpecificContent:
        self.channel_id = value
        return self

    def with_namespace(self, value: str) -> AdminSearchChannelSpecificContent:
        self.namespace = value
        return self

    def with_creator(self, value: str) -> AdminSearchChannelSpecificContent:
        self.creator = value
        return self

    def with_isofficial(self, value: str) -> AdminSearchChannelSpecificContent:
        self.isofficial = value
        return self

    def with_limit(self, value: int) -> AdminSearchChannelSpecificContent:
        self.limit = value
        return self

    def with_name(self, value: str) -> AdminSearchChannelSpecificContent:
        self.name = value
        return self

    def with_offset(self, value: int) -> AdminSearchChannelSpecificContent:
        self.offset = value
        return self

    def with_orderby(self, value: str) -> AdminSearchChannelSpecificContent:
        self.orderby = value
        return self

    def with_sortby(self, value: str) -> AdminSearchChannelSpecificContent:
        self.sortby = value
        return self

    def with_subtype(self, value: str) -> AdminSearchChannelSpecificContent:
        self.subtype = value
        return self

    def with_tags(self, value: List[str]) -> AdminSearchChannelSpecificContent:
        self.tags = value
        return self

    def with_type_(self, value: str) -> AdminSearchChannelSpecificContent:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> AdminSearchChannelSpecificContent:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel_id") and self.channel_id:
            result["channelId"] = str(self.channel_id)
        elif include_empty:
            result["channelId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "creator") and self.creator:
            result["creator"] = str(self.creator)
        elif include_empty:
            result["creator"] = ""
        if hasattr(self, "isofficial") and self.isofficial:
            result["isofficial"] = str(self.isofficial)
        elif include_empty:
            result["isofficial"] = ""
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
        if hasattr(self, "orderby") and self.orderby:
            result["orderby"] = str(self.orderby)
        elif include_empty:
            result["orderby"] = ""
        if hasattr(self, "sortby") and self.sortby:
            result["sortby"] = str(self.sortby)
        elif include_empty:
            result["sortby"] = ""
        if hasattr(self, "subtype") and self.subtype:
            result["subtype"] = str(self.subtype)
        elif include_empty:
            result["subtype"] = ""
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
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
        Union[None, ModelsPaginatedContentDownloadResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelsPaginatedContentDownloadResponse (OK)

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
            return (
                ModelsPaginatedContentDownloadResponse.create_from_dict(content),
                None,
            )
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
        channel_id: str,
        namespace: str,
        creator: Optional[str] = None,
        isofficial: Optional[str] = None,
        limit: Optional[int] = None,
        name: Optional[str] = None,
        offset: Optional[int] = None,
        orderby: Optional[str] = None,
        sortby: Optional[str] = None,
        subtype: Optional[str] = None,
        tags: Optional[List[str]] = None,
        type_: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> AdminSearchChannelSpecificContent:
        instance = cls()
        instance.channel_id = channel_id
        instance.namespace = namespace
        if creator is not None:
            instance.creator = creator
        if isofficial is not None:
            instance.isofficial = isofficial
        if limit is not None:
            instance.limit = limit
        if name is not None:
            instance.name = name
        if offset is not None:
            instance.offset = offset
        if orderby is not None:
            instance.orderby = orderby
        if sortby is not None:
            instance.sortby = sortby
        if subtype is not None:
            instance.subtype = subtype
        if tags is not None:
            instance.tags = tags
        if type_ is not None:
            instance.type_ = type_
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminSearchChannelSpecificContent:
        instance = cls()
        if "channelId" in dict_ and dict_["channelId"] is not None:
            instance.channel_id = str(dict_["channelId"])
        elif include_empty:
            instance.channel_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "creator" in dict_ and dict_["creator"] is not None:
            instance.creator = str(dict_["creator"])
        elif include_empty:
            instance.creator = ""
        if "isofficial" in dict_ and dict_["isofficial"] is not None:
            instance.isofficial = str(dict_["isofficial"])
        elif include_empty:
            instance.isofficial = ""
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
        if "orderby" in dict_ and dict_["orderby"] is not None:
            instance.orderby = str(dict_["orderby"])
        elif include_empty:
            instance.orderby = ""
        if "sortby" in dict_ and dict_["sortby"] is not None:
            instance.sortby = str(dict_["sortby"])
        elif include_empty:
            instance.sortby = ""
        if "subtype" in dict_ and dict_["subtype"] is not None:
            instance.subtype = str(dict_["subtype"])
        elif include_empty:
            instance.subtype = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "channelId": "channel_id",
            "namespace": "namespace",
            "creator": "creator",
            "isofficial": "isofficial",
            "limit": "limit",
            "name": "name",
            "offset": "offset",
            "orderby": "orderby",
            "sortby": "sortby",
            "subtype": "subtype",
            "tags": "tags",
            "type": "type_",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "channelId": True,
            "namespace": True,
            "creator": False,
            "isofficial": False,
            "limit": False,
            "name": False,
            "offset": False,
            "orderby": False,
            "sortby": False,
            "subtype": False,
            "tags": False,
            "type": False,
            "userId": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "tags": "csv",  # in query
        }

    # endregion static methods
