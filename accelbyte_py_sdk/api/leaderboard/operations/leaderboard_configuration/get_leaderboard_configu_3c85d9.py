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

# AccelByte Cloud Leaderboard Service (2.16.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsGetAllLeaderboardConfigsResp
from ...models import ResponseErrorResponse


class GetLeaderboardConfigurationsAdminV1(Operation):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsAdminV1)

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




    This endpoint return all leaderboard configurations

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_archived: (isArchived) OPTIONAL bool in query

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    is_archived: bool  # OPTIONAL in [query]
    is_deleted: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]

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
        if hasattr(self, "is_archived"):
            result["isArchived"] = self.is_archived
        if hasattr(self, "is_deleted"):
            result["isDeleted"] = self.is_deleted
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetLeaderboardConfigurationsAdminV1:
        self.namespace = value
        return self

    def with_is_archived(self, value: bool) -> GetLeaderboardConfigurationsAdminV1:
        self.is_archived = value
        return self

    def with_is_deleted(self, value: bool) -> GetLeaderboardConfigurationsAdminV1:
        self.is_deleted = value
        return self

    def with_limit(self, value: int) -> GetLeaderboardConfigurationsAdminV1:
        self.limit = value
        return self

    def with_offset(self, value: int) -> GetLeaderboardConfigurationsAdminV1:
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
        if hasattr(self, "is_archived") and self.is_archived:
            result["isArchived"] = bool(self.is_archived)
        elif include_empty:
            result["isArchived"] = False
        if hasattr(self, "is_deleted") and self.is_deleted:
            result["isDeleted"] = bool(self.is_deleted)
        elif include_empty:
            result["isDeleted"] = False
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
        Union[None, ModelsGetAllLeaderboardConfigsResp],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelsGetAllLeaderboardConfigsResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

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
            return ModelsGetAllLeaderboardConfigsResp.create_from_dict(content), None
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        is_archived: Optional[bool] = None,
        is_deleted: Optional[bool] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
    ) -> GetLeaderboardConfigurationsAdminV1:
        instance = cls()
        instance.namespace = namespace
        if is_archived is not None:
            instance.is_archived = is_archived
        if is_deleted is not None:
            instance.is_deleted = is_deleted
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetLeaderboardConfigurationsAdminV1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "isArchived" in dict_ and dict_["isArchived"] is not None:
            instance.is_archived = bool(dict_["isArchived"])
        elif include_empty:
            instance.is_archived = False
        if "isDeleted" in dict_ and dict_["isDeleted"] is not None:
            instance.is_deleted = bool(dict_["isDeleted"])
        elif include_empty:
            instance.is_deleted = False
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
            "isArchived": "is_archived",
            "isDeleted": "is_deleted",
            "limit": "limit",
            "offset": "offset",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "isArchived": False,
            "isDeleted": False,
            "limit": False,
            "offset": False,
        }

    # endregion static methods
