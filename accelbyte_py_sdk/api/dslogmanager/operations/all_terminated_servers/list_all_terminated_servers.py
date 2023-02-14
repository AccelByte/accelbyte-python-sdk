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

# AccelByte Cloud Ds Log Manager Service (3.2.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsListTerminatedServersResponse
from ...models import ResponseError


class ListAllTerminatedServers(Operation):
    """Retrieve All Terminated Servers (listAllTerminatedServers)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    This endpoint used to retrieve terminated servers in all namespace
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    Properties:
        url: /dslogmanager/servers/search

        method: GET

        tags: ["All Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) OPTIONAL str in query

        end_date: (end_date) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        namespace: (namespace) OPTIONAL str in query

        next_: (next) OPTIONAL str in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        start_date: (start_date) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dslogmanager/servers/search"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    deployment: str  # OPTIONAL in [query]
    end_date: str  # OPTIONAL in [query]
    game_mode: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    namespace: str  # OPTIONAL in [query]
    next_: str  # OPTIONAL in [query]
    party_id: str  # OPTIONAL in [query]
    pod_name: str  # OPTIONAL in [query]
    previous: str  # OPTIONAL in [query]
    provider: str  # OPTIONAL in [query]
    region: str  # OPTIONAL in [query]
    session_id: str  # OPTIONAL in [query]
    start_date: str  # OPTIONAL in [query]
    status: str  # OPTIONAL in [query]
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
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "deployment"):
            result["deployment"] = self.deployment
        if hasattr(self, "end_date"):
            result["end_date"] = self.end_date
        if hasattr(self, "game_mode"):
            result["game_mode"] = self.game_mode
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "next_"):
            result["next"] = self.next_
        if hasattr(self, "party_id"):
            result["party_id"] = self.party_id
        if hasattr(self, "pod_name"):
            result["pod_name"] = self.pod_name
        if hasattr(self, "previous"):
            result["previous"] = self.previous
        if hasattr(self, "provider"):
            result["provider"] = self.provider
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "session_id"):
            result["session_id"] = self.session_id
        if hasattr(self, "start_date"):
            result["start_date"] = self.start_date
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "user_id"):
            result["user_id"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_deployment(self, value: str) -> ListAllTerminatedServers:
        self.deployment = value
        return self

    def with_end_date(self, value: str) -> ListAllTerminatedServers:
        self.end_date = value
        return self

    def with_game_mode(self, value: str) -> ListAllTerminatedServers:
        self.game_mode = value
        return self

    def with_limit(self, value: int) -> ListAllTerminatedServers:
        self.limit = value
        return self

    def with_namespace(self, value: str) -> ListAllTerminatedServers:
        self.namespace = value
        return self

    def with_next_(self, value: str) -> ListAllTerminatedServers:
        self.next_ = value
        return self

    def with_party_id(self, value: str) -> ListAllTerminatedServers:
        self.party_id = value
        return self

    def with_pod_name(self, value: str) -> ListAllTerminatedServers:
        self.pod_name = value
        return self

    def with_previous(self, value: str) -> ListAllTerminatedServers:
        self.previous = value
        return self

    def with_provider(self, value: str) -> ListAllTerminatedServers:
        self.provider = value
        return self

    def with_region(self, value: str) -> ListAllTerminatedServers:
        self.region = value
        return self

    def with_session_id(self, value: str) -> ListAllTerminatedServers:
        self.session_id = value
        return self

    def with_start_date(self, value: str) -> ListAllTerminatedServers:
        self.start_date = value
        return self

    def with_status(self, value: str) -> ListAllTerminatedServers:
        self.status = value
        return self

    def with_user_id(self, value: str) -> ListAllTerminatedServers:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deployment") and self.deployment:
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
        if hasattr(self, "end_date") and self.end_date:
            result["end_date"] = str(self.end_date)
        elif include_empty:
            result["end_date"] = ""
        if hasattr(self, "game_mode") and self.game_mode:
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "next_") and self.next_:
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = ""
        if hasattr(self, "party_id") and self.party_id:
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = ""
        if hasattr(self, "pod_name") and self.pod_name:
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        if hasattr(self, "previous") and self.previous:
            result["previous"] = str(self.previous)
        elif include_empty:
            result["previous"] = ""
        if hasattr(self, "provider") and self.provider:
            result["provider"] = str(self.provider)
        elif include_empty:
            result["provider"] = ""
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "session_id") and self.session_id:
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = ""
        if hasattr(self, "start_date") and self.start_date:
            result["start_date"] = str(self.start_date)
        elif include_empty:
            result["start_date"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsListTerminatedServersResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelsListTerminatedServersResponse (OK)

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
            return ModelsListTerminatedServersResponse.create_from_dict(content), None
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
        deployment: Optional[str] = None,
        end_date: Optional[str] = None,
        game_mode: Optional[str] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        next_: Optional[str] = None,
        party_id: Optional[str] = None,
        pod_name: Optional[str] = None,
        previous: Optional[str] = None,
        provider: Optional[str] = None,
        region: Optional[str] = None,
        session_id: Optional[str] = None,
        start_date: Optional[str] = None,
        status: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> ListAllTerminatedServers:
        instance = cls()
        if deployment is not None:
            instance.deployment = deployment
        if end_date is not None:
            instance.end_date = end_date
        if game_mode is not None:
            instance.game_mode = game_mode
        if limit is not None:
            instance.limit = limit
        if namespace is not None:
            instance.namespace = namespace
        if next_ is not None:
            instance.next_ = next_
        if party_id is not None:
            instance.party_id = party_id
        if pod_name is not None:
            instance.pod_name = pod_name
        if previous is not None:
            instance.previous = previous
        if provider is not None:
            instance.provider = provider
        if region is not None:
            instance.region = region
        if session_id is not None:
            instance.session_id = session_id
        if start_date is not None:
            instance.start_date = start_date
        if status is not None:
            instance.status = status
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ListAllTerminatedServers:
        instance = cls()
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
        if "end_date" in dict_ and dict_["end_date"] is not None:
            instance.end_date = str(dict_["end_date"])
        elif include_empty:
            instance.end_date = ""
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = ""
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = ""
        if "provider" in dict_ and dict_["provider"] is not None:
            instance.provider = str(dict_["provider"])
        elif include_empty:
            instance.provider = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = ""
        if "start_date" in dict_ and dict_["start_date"] is not None:
            instance.start_date = str(dict_["start_date"])
        elif include_empty:
            instance.start_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "deployment": "deployment",
            "end_date": "end_date",
            "game_mode": "game_mode",
            "limit": "limit",
            "namespace": "namespace",
            "next": "next_",
            "party_id": "party_id",
            "pod_name": "pod_name",
            "previous": "previous",
            "provider": "provider",
            "region": "region",
            "session_id": "session_id",
            "start_date": "start_date",
            "status": "status",
            "user_id": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deployment": False,
            "end_date": False,
            "game_mode": False,
            "limit": False,
            "namespace": False,
            "next": False,
            "party_id": False,
            "pod_name": False,
            "previous": False,
            "provider": False,
            "region": False,
            "session_id": False,
            "start_date": False,
            "status": False,
            "user_id": False,
        }

    # endregion static methods
