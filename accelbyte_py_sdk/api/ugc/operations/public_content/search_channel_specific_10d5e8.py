# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-ugc-service (1.15.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ModelsPaginatedContentDownloadResponse
from ...models import ResponseError


class SearchChannelSpecificContent(Operation):
    """Search contents specific to a channel (SearchChannelSpecificContent)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        security_type: bearer

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        isofficial: (isofficial) OPTIONAL str in query

        limit: (limit) OPTIONAL str in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL str in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents"
    _method: str = "GET"
    _consumes: List[str] = ["application/json", "application/octet-stream"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    channel_id: str                                                                                # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]
    creator: str                                                                                   # OPTIONAL in [query]
    isofficial: str                                                                                # OPTIONAL in [query]
    limit: str                                                                                     # OPTIONAL in [query]
    name: str                                                                                      # OPTIONAL in [query]
    offset: str                                                                                    # OPTIONAL in [query]
    orderby: str                                                                                   # OPTIONAL in [query]
    sortby: str                                                                                    # OPTIONAL in [query]
    subtype: str                                                                                   # OPTIONAL in [query]
    tags: str                                                                                      # OPTIONAL in [query]
    type_: str                                                                                     # OPTIONAL in [query]
    user_id: str                                                                                   # OPTIONAL in [query]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "channel_id",
            "namespace",
        ]

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

    def is_valid(self) -> bool:
        if not hasattr(self, "channel_id") or self.channel_id is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_channel_id(self, value: str) -> SearchChannelSpecificContent:
        self.channel_id = value
        return self

    def with_namespace(self, value: str) -> SearchChannelSpecificContent:
        self.namespace = value
        return self

    def with_creator(self, value: str) -> SearchChannelSpecificContent:
        self.creator = value
        return self

    def with_isofficial(self, value: str) -> SearchChannelSpecificContent:
        self.isofficial = value
        return self

    def with_limit(self, value: str) -> SearchChannelSpecificContent:
        self.limit = value
        return self

    def with_name(self, value: str) -> SearchChannelSpecificContent:
        self.name = value
        return self

    def with_offset(self, value: str) -> SearchChannelSpecificContent:
        self.offset = value
        return self

    def with_orderby(self, value: str) -> SearchChannelSpecificContent:
        self.orderby = value
        return self

    def with_sortby(self, value: str) -> SearchChannelSpecificContent:
        self.sortby = value
        return self

    def with_subtype(self, value: str) -> SearchChannelSpecificContent:
        self.subtype = value
        return self

    def with_tags(self, value: str) -> SearchChannelSpecificContent:
        self.tags = value
        return self

    def with_type_(self, value: str) -> SearchChannelSpecificContent:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> SearchChannelSpecificContent:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel_id") and self.channel_id:
            result["channelId"] = str(self.channel_id)
        elif include_empty:
            result["channelId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "creator") and self.creator:
            result["creator"] = str(self.creator)
        elif include_empty:
            result["creator"] = str()
        if hasattr(self, "isofficial") and self.isofficial:
            result["isofficial"] = str(self.isofficial)
        elif include_empty:
            result["isofficial"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = str(self.limit)
        elif include_empty:
            result["limit"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = str(self.offset)
        elif include_empty:
            result["offset"] = str()
        if hasattr(self, "orderby") and self.orderby:
            result["orderby"] = str(self.orderby)
        elif include_empty:
            result["orderby"] = str()
        if hasattr(self, "sortby") and self.sortby:
            result["sortby"] = str(self.sortby)
        elif include_empty:
            result["sortby"] = str()
        if hasattr(self, "subtype") and self.subtype:
            result["subtype"] = str(self.subtype)
        elif include_empty:
            result["subtype"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = str(self.tags)
        elif include_empty:
            result["tags"] = str()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsPaginatedContentDownloadResponse], Union[None, HttpResponse, ResponseError]]:
        """Parse the given response.

        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return ModelsPaginatedContentDownloadResponse.create_from_dict(content), None
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        channel_id: str,
        namespace: str,
        creator: Optional[str] = None,
        isofficial: Optional[str] = None,
        limit: Optional[str] = None,
        name: Optional[str] = None,
        offset: Optional[str] = None,
        orderby: Optional[str] = None,
        sortby: Optional[str] = None,
        subtype: Optional[str] = None,
        tags: Optional[str] = None,
        type_: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> SearchChannelSpecificContent:
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SearchChannelSpecificContent:
        instance = cls()
        if "channelId" in dict_ and dict_["channelId"] is not None:
            instance.channel_id = str(dict_["channelId"])
        elif include_empty:
            instance.channel_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "creator" in dict_ and dict_["creator"] is not None:
            instance.creator = str(dict_["creator"])
        elif include_empty:
            instance.creator = str()
        if "isofficial" in dict_ and dict_["isofficial"] is not None:
            instance.isofficial = str(dict_["isofficial"])
        elif include_empty:
            instance.isofficial = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = str(dict_["limit"])
        elif include_empty:
            instance.limit = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = str(dict_["offset"])
        elif include_empty:
            instance.offset = str()
        if "orderby" in dict_ and dict_["orderby"] is not None:
            instance.orderby = str(dict_["orderby"])
        elif include_empty:
            instance.orderby = str()
        if "sortby" in dict_ and dict_["sortby"] is not None:
            instance.sortby = str(dict_["sortby"])
        elif include_empty:
            instance.sortby = str()
        if "subtype" in dict_ and dict_["subtype"] is not None:
            instance.subtype = str(dict_["subtype"])
        elif include_empty:
            instance.subtype = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = str(dict_["tags"])
        elif include_empty:
            instance.tags = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
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

    # endregion static methods
