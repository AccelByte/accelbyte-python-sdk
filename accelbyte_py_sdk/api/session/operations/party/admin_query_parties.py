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

# AccelByte Gaming Services Session Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ApimodelsPartyQueryResponse
from ...models import ResponseError


class JoinabilityEnum(StrEnum):
    CLOSED = "CLOSED"
    FRIENDS_OF_FRIENDS = "FRIENDS_OF_FRIENDS"
    FRIENDS_OF_LEADER = "FRIENDS_OF_LEADER"
    FRIENDS_OF_MEMBERS = "FRIENDS_OF_MEMBERS"
    INVITE_ONLY = "INVITE_ONLY"
    OPEN = "OPEN"


class MemberStatusEnum(StrEnum):
    CANCELLED = "CANCELLED"
    CONNECTED = "CONNECTED"
    DISCONNECTED = "DISCONNECTED"
    DROPPED = "DROPPED"
    INVITED = "INVITED"
    JOINED = "JOINED"
    KICKED = "KICKED"
    LEFT = "LEFT"
    REJECTED = "REJECTED"
    TIMEOUT = "TIMEOUT"


class AdminQueryParties(Operation):
    """Query parties. (adminQueryParties)

    Query parties.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        configuration_name: (configurationName) OPTIONAL str in query

        from_time: (fromTime) OPTIONAL str in query

        is_soft_deleted: (isSoftDeleted) OPTIONAL str in query

        joinability: (joinability) OPTIONAL Union[str, JoinabilityEnum] in query

        key: (key) OPTIONAL str in query

        leader_id: (leaderID) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        member_id: (memberID) OPTIONAL str in query

        member_status: (memberStatus) OPTIONAL Union[str, MemberStatusEnum] in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        to_time: (toTime) OPTIONAL str in query

        value: (value) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/session/v1/admin/namespaces/{namespace}/parties"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    configuration_name: str  # OPTIONAL in [query]
    from_time: str  # OPTIONAL in [query]
    is_soft_deleted: str  # OPTIONAL in [query]
    joinability: Union[str, JoinabilityEnum]  # OPTIONAL in [query]
    key: str  # OPTIONAL in [query]
    leader_id: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    member_id: str  # OPTIONAL in [query]
    member_status: Union[str, MemberStatusEnum]  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    order: str  # OPTIONAL in [query]
    order_by: str  # OPTIONAL in [query]
    party_id: str  # OPTIONAL in [query]
    to_time: str  # OPTIONAL in [query]
    value: str  # OPTIONAL in [query]

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
        if hasattr(self, "configuration_name"):
            result["configurationName"] = self.configuration_name
        if hasattr(self, "from_time"):
            result["fromTime"] = self.from_time
        if hasattr(self, "is_soft_deleted"):
            result["isSoftDeleted"] = self.is_soft_deleted
        if hasattr(self, "joinability"):
            result["joinability"] = self.joinability
        if hasattr(self, "key"):
            result["key"] = self.key
        if hasattr(self, "leader_id"):
            result["leaderID"] = self.leader_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "member_id"):
            result["memberID"] = self.member_id
        if hasattr(self, "member_status"):
            result["memberStatus"] = self.member_status
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "order_by"):
            result["orderBy"] = self.order_by
        if hasattr(self, "party_id"):
            result["partyID"] = self.party_id
        if hasattr(self, "to_time"):
            result["toTime"] = self.to_time
        if hasattr(self, "value"):
            result["value"] = self.value
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminQueryParties:
        self.namespace = value
        return self

    def with_configuration_name(self, value: str) -> AdminQueryParties:
        self.configuration_name = value
        return self

    def with_from_time(self, value: str) -> AdminQueryParties:
        self.from_time = value
        return self

    def with_is_soft_deleted(self, value: str) -> AdminQueryParties:
        self.is_soft_deleted = value
        return self

    def with_joinability(self, value: Union[str, JoinabilityEnum]) -> AdminQueryParties:
        self.joinability = value
        return self

    def with_key(self, value: str) -> AdminQueryParties:
        self.key = value
        return self

    def with_leader_id(self, value: str) -> AdminQueryParties:
        self.leader_id = value
        return self

    def with_limit(self, value: int) -> AdminQueryParties:
        self.limit = value
        return self

    def with_member_id(self, value: str) -> AdminQueryParties:
        self.member_id = value
        return self

    def with_member_status(
        self, value: Union[str, MemberStatusEnum]
    ) -> AdminQueryParties:
        self.member_status = value
        return self

    def with_offset(self, value: int) -> AdminQueryParties:
        self.offset = value
        return self

    def with_order(self, value: str) -> AdminQueryParties:
        self.order = value
        return self

    def with_order_by(self, value: str) -> AdminQueryParties:
        self.order_by = value
        return self

    def with_party_id(self, value: str) -> AdminQueryParties:
        self.party_id = value
        return self

    def with_to_time(self, value: str) -> AdminQueryParties:
        self.to_time = value
        return self

    def with_value(self, value: str) -> AdminQueryParties:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "configuration_name") and self.configuration_name:
            result["configurationName"] = str(self.configuration_name)
        elif include_empty:
            result["configurationName"] = ""
        if hasattr(self, "from_time") and self.from_time:
            result["fromTime"] = str(self.from_time)
        elif include_empty:
            result["fromTime"] = ""
        if hasattr(self, "is_soft_deleted") and self.is_soft_deleted:
            result["isSoftDeleted"] = str(self.is_soft_deleted)
        elif include_empty:
            result["isSoftDeleted"] = ""
        if hasattr(self, "joinability") and self.joinability:
            result["joinability"] = str(self.joinability)
        elif include_empty:
            result["joinability"] = Union[str, JoinabilityEnum]()
        if hasattr(self, "key") and self.key:
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "leader_id") and self.leader_id:
            result["leaderID"] = str(self.leader_id)
        elif include_empty:
            result["leaderID"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "member_id") and self.member_id:
            result["memberID"] = str(self.member_id)
        elif include_empty:
            result["memberID"] = ""
        if hasattr(self, "member_status") and self.member_status:
            result["memberStatus"] = str(self.member_status)
        elif include_empty:
            result["memberStatus"] = Union[str, MemberStatusEnum]()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "order") and self.order:
            result["order"] = str(self.order)
        elif include_empty:
            result["order"] = ""
        if hasattr(self, "order_by") and self.order_by:
            result["orderBy"] = str(self.order_by)
        elif include_empty:
            result["orderBy"] = ""
        if hasattr(self, "party_id") and self.party_id:
            result["partyID"] = str(self.party_id)
        elif include_empty:
            result["partyID"] = ""
        if hasattr(self, "to_time") and self.to_time:
            result["toTime"] = str(self.to_time)
        elif include_empty:
            result["toTime"] = ""
        if hasattr(self, "value") and self.value:
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelsPartyQueryResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

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
            return ApimodelsPartyQueryResponse.create_from_dict(content), None
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
        configuration_name: Optional[str] = None,
        from_time: Optional[str] = None,
        is_soft_deleted: Optional[str] = None,
        joinability: Optional[Union[str, JoinabilityEnum]] = None,
        key: Optional[str] = None,
        leader_id: Optional[str] = None,
        limit: Optional[int] = None,
        member_id: Optional[str] = None,
        member_status: Optional[Union[str, MemberStatusEnum]] = None,
        offset: Optional[int] = None,
        order: Optional[str] = None,
        order_by: Optional[str] = None,
        party_id: Optional[str] = None,
        to_time: Optional[str] = None,
        value: Optional[str] = None,
        **kwargs,
    ) -> AdminQueryParties:
        instance = cls()
        instance.namespace = namespace
        if configuration_name is not None:
            instance.configuration_name = configuration_name
        if from_time is not None:
            instance.from_time = from_time
        if is_soft_deleted is not None:
            instance.is_soft_deleted = is_soft_deleted
        if joinability is not None:
            instance.joinability = joinability
        if key is not None:
            instance.key = key
        if leader_id is not None:
            instance.leader_id = leader_id
        if limit is not None:
            instance.limit = limit
        if member_id is not None:
            instance.member_id = member_id
        if member_status is not None:
            instance.member_status = member_status
        if offset is not None:
            instance.offset = offset
        if order is not None:
            instance.order = order
        if order_by is not None:
            instance.order_by = order_by
        if party_id is not None:
            instance.party_id = party_id
        if to_time is not None:
            instance.to_time = to_time
        if value is not None:
            instance.value = value
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminQueryParties:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "configurationName" in dict_ and dict_["configurationName"] is not None:
            instance.configuration_name = str(dict_["configurationName"])
        elif include_empty:
            instance.configuration_name = ""
        if "fromTime" in dict_ and dict_["fromTime"] is not None:
            instance.from_time = str(dict_["fromTime"])
        elif include_empty:
            instance.from_time = ""
        if "isSoftDeleted" in dict_ and dict_["isSoftDeleted"] is not None:
            instance.is_soft_deleted = str(dict_["isSoftDeleted"])
        elif include_empty:
            instance.is_soft_deleted = ""
        if "joinability" in dict_ and dict_["joinability"] is not None:
            instance.joinability = str(dict_["joinability"])
        elif include_empty:
            instance.joinability = Union[str, JoinabilityEnum]()
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "leaderID" in dict_ and dict_["leaderID"] is not None:
            instance.leader_id = str(dict_["leaderID"])
        elif include_empty:
            instance.leader_id = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "memberID" in dict_ and dict_["memberID"] is not None:
            instance.member_id = str(dict_["memberID"])
        elif include_empty:
            instance.member_id = ""
        if "memberStatus" in dict_ and dict_["memberStatus"] is not None:
            instance.member_status = str(dict_["memberStatus"])
        elif include_empty:
            instance.member_status = Union[str, MemberStatusEnum]()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = str(dict_["order"])
        elif include_empty:
            instance.order = ""
        if "orderBy" in dict_ and dict_["orderBy"] is not None:
            instance.order_by = str(dict_["orderBy"])
        elif include_empty:
            instance.order_by = ""
        if "partyID" in dict_ and dict_["partyID"] is not None:
            instance.party_id = str(dict_["partyID"])
        elif include_empty:
            instance.party_id = ""
        if "toTime" in dict_ and dict_["toTime"] is not None:
            instance.to_time = str(dict_["toTime"])
        elif include_empty:
            instance.to_time = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "configurationName": "configuration_name",
            "fromTime": "from_time",
            "isSoftDeleted": "is_soft_deleted",
            "joinability": "joinability",
            "key": "key",
            "leaderID": "leader_id",
            "limit": "limit",
            "memberID": "member_id",
            "memberStatus": "member_status",
            "offset": "offset",
            "order": "order",
            "orderBy": "order_by",
            "partyID": "party_id",
            "toTime": "to_time",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "configurationName": False,
            "fromTime": False,
            "isSoftDeleted": False,
            "joinability": False,
            "key": False,
            "leaderID": False,
            "limit": False,
            "memberID": False,
            "memberStatus": False,
            "offset": False,
            "order": False,
            "orderBy": False,
            "partyID": False,
            "toTime": False,
            "value": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "joinability": [
                "CLOSED",
                "FRIENDS_OF_FRIENDS",
                "FRIENDS_OF_LEADER",
                "FRIENDS_OF_MEMBERS",
                "INVITE_ONLY",
                "OPEN",
            ],  # in query
            "memberStatus": [
                "CANCELLED",
                "CONNECTED",
                "DISCONNECTED",
                "DROPPED",
                "INVITED",
                "JOINED",
                "KICKED",
                "LEFT",
                "REJECTED",
                "TIMEOUT",
            ],  # in query
        }

    # endregion static methods
