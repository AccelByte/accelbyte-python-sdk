# Justice Matchmaking Service (2.10.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ResponseError
from ...models import ResponseErrorV1
from ...models import ServiceGetSessionHistorySearchResponse


class SearchSessions(Operation):
    """Search sessions (SearchSessions)

    Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Read]
    Required Scope: social Search sessions.


    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED float in query

        offset: (offset) REQUIRED float in query

    Responses:
        200: OK - ServiceGetSessionHistorySearchResponse (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """

    # region fields

    _url: str = "/matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    channel: str                                                                                   # OPTIONAL in [query]
    deleted: bool                                                                                  # OPTIONAL in [query]
    match_id: str                                                                                  # OPTIONAL in [query]
    party_id: str                                                                                  # OPTIONAL in [query]
    user_id: str                                                                                   # OPTIONAL in [query]
    limit: float                                                                                   # REQUIRED in [query]
    offset: float                                                                                  # REQUIRED in [query]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", str(v))
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "limit",
            "offset",
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
        if hasattr(self, "user_id"):
            result["userID"] = self.user_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "limit") or self.limit is None:
            return False
        if not hasattr(self, "offset") or self.offset is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> SearchSessions:
        self.namespace = value
        return self

    def with_channel(self, value: str) -> SearchSessions:
        self.channel = value
        return self

    def with_deleted(self, value: bool) -> SearchSessions:
        self.deleted = value
        return self

    def with_match_id(self, value: str) -> SearchSessions:
        self.match_id = value
        return self

    def with_party_id(self, value: str) -> SearchSessions:
        self.party_id = value
        return self

    def with_user_id(self, value: str) -> SearchSessions:
        self.user_id = value
        return self

    def with_limit(self, value: float) -> SearchSessions:
        self.limit = value
        return self

    def with_offset(self, value: float) -> SearchSessions:
        self.offset = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "channel") and self.channel:
            result["channel"] = str(self.channel)
        elif include_empty:
            result["channel"] = str()
        if hasattr(self, "deleted") and self.deleted:
            result["deleted"] = bool(self.deleted)
        elif include_empty:
            result["deleted"] = bool()
        if hasattr(self, "match_id") and self.match_id:
            result["matchID"] = str(self.match_id)
        elif include_empty:
            result["matchID"] = str()
        if hasattr(self, "party_id") and self.party_id:
            result["partyID"] = str(self.party_id)
        elif include_empty:
            result["partyID"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = float(self.limit)
        elif include_empty:
            result["limit"] = float()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = float(self.offset)
        elif include_empty:
            result["offset"] = float()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ServiceGetSessionHistorySearchResponse], Union[None, ResponseError, ResponseErrorV1]]:
        """Parse the given response.

        200: OK - ServiceGetSessionHistorySearchResponse (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
        """
        if code == 200:
            return ServiceGetSessionHistorySearchResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseErrorV1.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorV1.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorV1.create_from_dict(content)
        if code == 404:
            return None, ResponseErrorV1.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        limit: float,
        offset: float,
        channel: Optional[str] = None,
        deleted: Optional[bool] = None,
        match_id: Optional[str] = None,
        party_id: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> SearchSessions:
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
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SearchSessions:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "channel" in dict_ and dict_["channel"] is not None:
            instance.channel = str(dict_["channel"])
        elif include_empty:
            instance.channel = str()
        if "deleted" in dict_ and dict_["deleted"] is not None:
            instance.deleted = bool(dict_["deleted"])
        elif include_empty:
            instance.deleted = bool()
        if "matchID" in dict_ and dict_["matchID"] is not None:
            instance.match_id = str(dict_["matchID"])
        elif include_empty:
            instance.match_id = str()
        if "partyID" in dict_ and dict_["partyID"] is not None:
            instance.party_id = str(dict_["partyID"])
        elif include_empty:
            instance.party_id = str()
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = float(dict_["limit"])
        elif include_empty:
            instance.limit = float()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = float(dict_["offset"])
        elif include_empty:
            instance.offset = float()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "channel": "channel",
            "deleted": "deleted",
            "matchID": "match_id",
            "partyID": "party_id",
            "userID": "user_id",
            "limit": "limit",
            "offset": "offset",
        }

    # endregion static methods