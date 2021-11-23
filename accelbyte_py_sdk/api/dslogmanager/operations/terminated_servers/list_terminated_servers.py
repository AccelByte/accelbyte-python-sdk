# justice-ds-log-manager-service (1.3.0)

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

from ...models import ModelsListTerminatedServersResponse
from ...models import ResponseError


class ListTerminatedServers(Operation):
    """Retrieve All Terminated Servers (listTerminatedServers)

    ``` Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ] This
    endpoint used to retrieve terminated servers in a namespace ```


    Properties:
        url: /dslogmanager/namespaces/{namespace}/servers/search

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        deployment: (deployment) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dslogmanager/namespaces/{namespace}/servers/search"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json", "text/x-log"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    deployment: str                                                                                # OPTIONAL in [query]
    game_mode: str                                                                                 # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    party_id: str                                                                                  # OPTIONAL in [query]
    pod_name: str                                                                                  # OPTIONAL in [query]
    provider: str                                                                                  # OPTIONAL in [query]
    region: str                                                                                    # OPTIONAL in [query]
    session_id: str                                                                                # OPTIONAL in [query]
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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "deployment"):
            result["deployment"] = self.deployment
        if hasattr(self, "game_mode"):
            result["game_mode"] = self.game_mode
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "party_id"):
            result["party_id"] = self.party_id
        if hasattr(self, "pod_name"):
            result["pod_name"] = self.pod_name
        if hasattr(self, "provider"):
            result["provider"] = self.provider
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "session_id"):
            result["session_id"] = self.session_id
        if hasattr(self, "user_id"):
            result["user_id"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ListTerminatedServers:
        self.namespace = value
        return self

    def with_deployment(self, value: str) -> ListTerminatedServers:
        self.deployment = value
        return self

    def with_game_mode(self, value: str) -> ListTerminatedServers:
        self.game_mode = value
        return self

    def with_limit(self, value: int) -> ListTerminatedServers:
        self.limit = value
        return self

    def with_offset(self, value: int) -> ListTerminatedServers:
        self.offset = value
        return self

    def with_party_id(self, value: str) -> ListTerminatedServers:
        self.party_id = value
        return self

    def with_pod_name(self, value: str) -> ListTerminatedServers:
        self.pod_name = value
        return self

    def with_provider(self, value: str) -> ListTerminatedServers:
        self.provider = value
        return self

    def with_region(self, value: str) -> ListTerminatedServers:
        self.region = value
        return self

    def with_session_id(self, value: str) -> ListTerminatedServers:
        self.session_id = value
        return self

    def with_user_id(self, value: str) -> ListTerminatedServers:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "deployment") and self.deployment:
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = str()
        if hasattr(self, "game_mode") and self.game_mode:
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "party_id") and self.party_id:
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = str()
        if hasattr(self, "pod_name") and self.pod_name:
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = str()
        if hasattr(self, "provider") and self.provider:
            result["provider"] = str(self.provider)
        elif include_empty:
            result["provider"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "session_id") and self.session_id:
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsListTerminatedServersResponse], Union[None, ResponseError]]:
        """Parse the given response.

        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 200:
            return ModelsListTerminatedServersResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
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
        deployment: Optional[str] = None,
        game_mode: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        party_id: Optional[str] = None,
        pod_name: Optional[str] = None,
        provider: Optional[str] = None,
        region: Optional[str] = None,
        session_id: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> ListTerminatedServers:
        instance = cls()
        instance.namespace = namespace
        if deployment is not None:
            instance.deployment = deployment
        if game_mode is not None:
            instance.game_mode = game_mode
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if party_id is not None:
            instance.party_id = party_id
        if pod_name is not None:
            instance.pod_name = pod_name
        if provider is not None:
            instance.provider = provider
        if region is not None:
            instance.region = region
        if session_id is not None:
            instance.session_id = session_id
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListTerminatedServers:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = str()
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = str()
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = str()
        if "provider" in dict_ and dict_["provider"] is not None:
            instance.provider = str(dict_["provider"])
        elif include_empty:
            instance.provider = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = str()
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "deployment": "deployment",
            "game_mode": "game_mode",
            "limit": "limit",
            "offset": "offset",
            "party_id": "party_id",
            "pod_name": "pod_name",
            "provider": "provider",
            "region": "region",
            "session_id": "session_id",
            "user_id": "user_id",
        }

    # endregion static methods
