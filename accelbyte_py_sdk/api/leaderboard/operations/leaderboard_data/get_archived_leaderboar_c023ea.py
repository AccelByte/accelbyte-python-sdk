# justice-leaderboard-service (2.13.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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

from ...models import ModelsArchiveLeaderboardSignedURLResponse
from ...models import ResponseErrorResponse


class GetArchivedLeaderboardRankingDataV1Handler(Operation):
    """Get signed url for archive all time leaderboard ranking data (GetArchivedLeaderboardRankingDataV1Handler)

    Get signed url in an all time leaderboard that archived. NOTE: This will be a
    bulk endpoint to get sign url


    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        slug: (slug) OPTIONAL str in query

        leaderboard_codes: (leaderboardCodes) REQUIRED str in query

    Responses:
        200: OK - List[ModelsArchiveLeaderboardSignedURLResponse] (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    leaderboard_code: str                                                                          # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]
    slug: str                                                                                      # OPTIONAL in [query]
    leaderboard_codes: str                                                                         # REQUIRED in [query]

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
            "leaderboard_code",
            "namespace",
            "leaderboard_codes",
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
        if hasattr(self, "leaderboard_code"):
            result["leaderboardCode"] = self.leaderboard_code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "slug"):
            result["slug"] = self.slug
        if hasattr(self, "leaderboard_codes"):
            result["leaderboardCodes"] = self.leaderboard_codes
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "leaderboard_code") or self.leaderboard_code is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "leaderboard_codes") or self.leaderboard_codes is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_leaderboard_code(self, value: str) -> GetArchivedLeaderboardRankingDataV1Handler:
        self.leaderboard_code = value
        return self

    def with_namespace(self, value: str) -> GetArchivedLeaderboardRankingDataV1Handler:
        self.namespace = value
        return self

    def with_slug(self, value: str) -> GetArchivedLeaderboardRankingDataV1Handler:
        self.slug = value
        return self

    def with_leaderboard_codes(self, value: str) -> GetArchivedLeaderboardRankingDataV1Handler:
        self.leaderboard_codes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "leaderboard_code") and self.leaderboard_code:
            result["leaderboardCode"] = str(self.leaderboard_code)
        elif include_empty:
            result["leaderboardCode"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "slug") and self.slug:
            result["slug"] = str(self.slug)
        elif include_empty:
            result["slug"] = str()
        if hasattr(self, "leaderboard_codes") and self.leaderboard_codes:
            result["leaderboardCodes"] = str(self.leaderboard_codes)
        elif include_empty:
            result["leaderboardCodes"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, List[ModelsArchiveLeaderboardSignedURLResponse]], Union[None, ResponseErrorResponse]]:
        """Parse the given response.

        200: OK - List[ModelsArchiveLeaderboardSignedURLResponse] (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
        """
        if code == 200:
            return [ModelsArchiveLeaderboardSignedURLResponse.create_from_dict(i) for i in content], None
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorResponse.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        leaderboard_code: str,
        namespace: str,
        leaderboard_codes: str,
        slug: Optional[str] = None,
    ) -> GetArchivedLeaderboardRankingDataV1Handler:
        instance = cls()
        instance.leaderboard_code = leaderboard_code
        instance.namespace = namespace
        instance.leaderboard_codes = leaderboard_codes
        if slug is not None:
            instance.slug = slug
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetArchivedLeaderboardRankingDataV1Handler:
        instance = cls()
        if "leaderboardCode" in dict_ and dict_["leaderboardCode"] is not None:
            instance.leaderboard_code = str(dict_["leaderboardCode"])
        elif include_empty:
            instance.leaderboard_code = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "slug" in dict_ and dict_["slug"] is not None:
            instance.slug = str(dict_["slug"])
        elif include_empty:
            instance.slug = str()
        if "leaderboardCodes" in dict_ and dict_["leaderboardCodes"] is not None:
            instance.leaderboard_codes = str(dict_["leaderboardCodes"])
        elif include_empty:
            instance.leaderboard_codes = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "leaderboardCode": "leaderboard_code",
            "namespace": "namespace",
            "slug": "slug",
            "leaderboardCodes": "leaderboard_codes",
        }

    # endregion static methods
