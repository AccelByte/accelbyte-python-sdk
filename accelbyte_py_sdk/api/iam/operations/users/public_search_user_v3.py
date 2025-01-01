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

# AccelByte Gaming Services Iam Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelPublicUserInformationResponseV3
from ...models import RestErrorResponse


class PublicSearchUserV3(Operation):
    """Search User (PublicSearchUserV3)

    This endpoint search all users on the specified namespace that match the query on these fields: display name, unique display name, username or by 3rd party display name.
    The query length should between 3-20, otherwise will not query the database.
    The default limit value is 20.

    ## Searching by 3rd party platform

    **Note: searching by 3rd party platform display name will use exact query, not fuzzy query.**

    Step when searching by 3rd party platform display name:
    1. set __by__ to __thirdPartyPlatform__
    2. set __platformId__ to the _supported platform id_
    3. set __platformBy__ to __platformDisplayName__


    **Supported Platforms:**
    - Steam group (steamnetwork):
    - steam
    - steamopenid
    - PSN group (psn):
    - ps4web
    - ps4
    - ps5
    - XBOX group(xbox):
    - live
    - xblweb
    - Oculus group (oculusgroup):
    - oculus
    - oculusweb
    - Google group (google):
    - google
    - googleplaygames:
    - epicgames
    - facebook
    - twitch
    - discord
    - android
    - ios
    - apple
    - device
    - nintendo
    - awscognito
    - amazon
    - netflix
    - snapchat
    - _oidc platform id_

    Note:
    - You can use either platform id or platform group as **platformId** parameter.
    - **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

    ## IP Rate Limit validation

    This API have IP Rate Limit validation, which activates when triggered excessively from the same IP address (throw 429 http error).
    The default rule: 10 max request per 30 seconds (per unique IP address).

    To mitigate potential unexpected issues in your implementation, consider adhering to these best practices as illustrated in the following examples:
    * Delay invoking the Search API if the player continues typing in the search box, and only utilize the latest input provided.
    * Prevent players from double-clicking or making multiple clicks within a short time frame.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        by: (by) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_by: (platformBy) OPTIONAL str in query

        platform_id: (platformId) OPTIONAL str in query

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUserInformationResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/public/namespaces/{namespace}/users"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    by: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    platform_by: str  # OPTIONAL in [query]
    platform_id: str  # OPTIONAL in [query]
    query: str  # OPTIONAL in [query]

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
        if hasattr(self, "by"):
            result["by"] = self.by
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "platform_by"):
            result["platformBy"] = self.platform_by
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        if hasattr(self, "query"):
            result["query"] = self.query
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicSearchUserV3:
        self.namespace = value
        return self

    def with_by(self, value: str) -> PublicSearchUserV3:
        self.by = value
        return self

    def with_limit(self, value: int) -> PublicSearchUserV3:
        self.limit = value
        return self

    def with_offset(self, value: int) -> PublicSearchUserV3:
        self.offset = value
        return self

    def with_platform_by(self, value: str) -> PublicSearchUserV3:
        self.platform_by = value
        return self

    def with_platform_id(self, value: str) -> PublicSearchUserV3:
        self.platform_id = value
        return self

    def with_query(self, value: str) -> PublicSearchUserV3:
        self.query = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "by") and self.by:
            result["by"] = str(self.by)
        elif include_empty:
            result["by"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "platform_by") and self.platform_by:
            result["platformBy"] = str(self.platform_by)
        elif include_empty:
            result["platformBy"] = ""
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "query") and self.query:
            result["query"] = str(self.query)
        elif include_empty:
            result["query"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelPublicUserInformationResponseV3],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelPublicUserInformationResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

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
            return ModelPublicUserInformationResponseV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 429:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        by: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        platform_by: Optional[str] = None,
        platform_id: Optional[str] = None,
        query: Optional[str] = None,
        **kwargs,
    ) -> PublicSearchUserV3:
        instance = cls()
        instance.namespace = namespace
        if by is not None:
            instance.by = by
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if platform_by is not None:
            instance.platform_by = platform_by
        if platform_id is not None:
            instance.platform_id = platform_id
        if query is not None:
            instance.query = query
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicSearchUserV3:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "by" in dict_ and dict_["by"] is not None:
            instance.by = str(dict_["by"])
        elif include_empty:
            instance.by = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "platformBy" in dict_ and dict_["platformBy"] is not None:
            instance.platform_by = str(dict_["platformBy"])
        elif include_empty:
            instance.platform_by = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "query" in dict_ and dict_["query"] is not None:
            instance.query = str(dict_["query"])
        elif include_empty:
            instance.query = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "by": "by",
            "limit": "limit",
            "offset": "offset",
            "platformBy": "platform_by",
            "platformId": "platform_id",
            "query": "query",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "by": False,
            "limit": False,
            "offset": False,
            "platformBy": False,
            "platformId": False,
            "query": False,
        }

    # endregion static methods
