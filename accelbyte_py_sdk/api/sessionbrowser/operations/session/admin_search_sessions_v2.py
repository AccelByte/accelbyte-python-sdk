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

# AccelByte Cloud Session Browser Service ()

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsGetSessionHistorySearchResponseV2
from ...models import ResponseError
from ...models import RestapiErrorV1


class AdminSearchSessionsV2(Operation):
    """Search sessions (AdminSearchSessionsV2)

    Required Permission: ADMIN:NAMESPACE:{namespace}:SESSION [Read]

    Required Scope: social

    Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
    Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:SESSION [Read]

    Required Scope(s):
        - social

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        session_type: (sessionType) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsGetSessionHistorySearchResponseV2 (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """

    # region fields

    _url: str = "/sessionbrowser/admin/namespaces/{namespace}/sessions/history/search"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    channel: str  # OPTIONAL in [query]
    deleted: bool  # OPTIONAL in [query]
    match_id: str  # OPTIONAL in [query]
    party_id: str  # OPTIONAL in [query]
    session_type: str  # OPTIONAL in [query]
    status: str  # OPTIONAL in [query]
    user_id: str  # OPTIONAL in [query]
    limit: int  # REQUIRED in [query]
    offset: int  # REQUIRED in [query]

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
        if hasattr(self, "channel"):
            result["channel"] = self.channel
        if hasattr(self, "deleted"):
            result["deleted"] = self.deleted
        if hasattr(self, "match_id"):
            result["matchID"] = self.match_id
        if hasattr(self, "party_id"):
            result["partyID"] = self.party_id
        if hasattr(self, "session_type"):
            result["sessionType"] = self.session_type
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "user_id"):
            result["userID"] = self.user_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminSearchSessionsV2:
        self.namespace = value
        return self

    def with_channel(self, value: str) -> AdminSearchSessionsV2:
        self.channel = value
        return self

    def with_deleted(self, value: bool) -> AdminSearchSessionsV2:
        self.deleted = value
        return self

    def with_match_id(self, value: str) -> AdminSearchSessionsV2:
        self.match_id = value
        return self

    def with_party_id(self, value: str) -> AdminSearchSessionsV2:
        self.party_id = value
        return self

    def with_session_type(self, value: str) -> AdminSearchSessionsV2:
        self.session_type = value
        return self

    def with_status(self, value: str) -> AdminSearchSessionsV2:
        self.status = value
        return self

    def with_user_id(self, value: str) -> AdminSearchSessionsV2:
        self.user_id = value
        return self

    def with_limit(self, value: int) -> AdminSearchSessionsV2:
        self.limit = value
        return self

    def with_offset(self, value: int) -> AdminSearchSessionsV2:
        self.offset = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "channel") and self.channel:
            result["channel"] = str(self.channel)
        elif include_empty:
            result["channel"] = ""
        if hasattr(self, "deleted") and self.deleted:
            result["deleted"] = bool(self.deleted)
        elif include_empty:
            result["deleted"] = False
        if hasattr(self, "match_id") and self.match_id:
            result["matchID"] = str(self.match_id)
        elif include_empty:
            result["matchID"] = ""
        if hasattr(self, "party_id") and self.party_id:
            result["partyID"] = str(self.party_id)
        elif include_empty:
            result["partyID"] = ""
        if hasattr(self, "session_type") and self.session_type:
            result["sessionType"] = str(self.session_type)
        elif include_empty:
            result["sessionType"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsGetSessionHistorySearchResponseV2],
        Union[None, HttpResponse, ResponseError, RestapiErrorV1],
    ]:
        """Parse the given response.

        200: OK - ModelsGetSessionHistorySearchResponseV2 (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseError (20000: internal server error)

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
                ModelsGetSessionHistorySearchResponseV2.create_from_dict(content),
                None,
            )
        if code == 400:
            return None, RestapiErrorV1.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorV1.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorV1.create_from_dict(content)
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
        limit: int,
        offset: int,
        channel: Optional[str] = None,
        deleted: Optional[bool] = None,
        match_id: Optional[str] = None,
        party_id: Optional[str] = None,
        session_type: Optional[str] = None,
        status: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> AdminSearchSessionsV2:
        instance = cls()
        instance.namespace = namespace
        instance.limit = limit
        instance.offset = offset
        if channel is not None:
            instance.channel = channel
        if deleted is not None:
            instance.deleted = deleted
        if match_id is not None:
            instance.match_id = match_id
        if party_id is not None:
            instance.party_id = party_id
        if session_type is not None:
            instance.session_type = session_type
        if status is not None:
            instance.status = status
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminSearchSessionsV2:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "channel" in dict_ and dict_["channel"] is not None:
            instance.channel = str(dict_["channel"])
        elif include_empty:
            instance.channel = ""
        if "deleted" in dict_ and dict_["deleted"] is not None:
            instance.deleted = bool(dict_["deleted"])
        elif include_empty:
            instance.deleted = False
        if "matchID" in dict_ and dict_["matchID"] is not None:
            instance.match_id = str(dict_["matchID"])
        elif include_empty:
            instance.match_id = ""
        if "partyID" in dict_ and dict_["partyID"] is not None:
            instance.party_id = str(dict_["partyID"])
        elif include_empty:
            instance.party_id = ""
        if "sessionType" in dict_ and dict_["sessionType"] is not None:
            instance.session_type = str(dict_["sessionType"])
        elif include_empty:
            instance.session_type = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "channel": "channel",
            "deleted": "deleted",
            "matchID": "match_id",
            "partyID": "party_id",
            "sessionType": "session_type",
            "status": "status",
            "userID": "user_id",
            "limit": "limit",
            "offset": "offset",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "channel": False,
            "deleted": False,
            "matchID": False,
            "partyID": False,
            "sessionType": False,
            "status": False,
            "userID": False,
            "limit": True,
            "offset": True,
        }

    # endregion static methods
