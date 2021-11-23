# justice-leaderboard-service (2.11.0)

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

from ...models import ModelsGetLeaderboardConfigResp
from ...models import ModelsUpdateLeaderboardConfigReq
from ...models import ResponseErrorResponse


class UpdateLeaderboardConfigurationAdminV1(Operation):
    """update leaderboard by leaderboardCode (updateLeaderboardConfigurationAdminV1)

    <p>Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]'</p>
    <p><b>Fields :</b></p> <ul> <li>Maximum length for leaderboard name is 128
    characters.</li> <li>Start time must be follow RFC3339 standard. e.g.
    2020-10-02T15:00:00.05Z</li> <li>Season period must be greater than 31
    days.</li> <li>If seasonPeriod is filled, the LeaderboardConfig would have
    seasonal leaderboard.</li> <li>Reset Date must be a number 1 - 31. Default is
    '1'.</li> <li>Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 =
    Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week).
    Default is '0'.</li> <li>Reset time must be <b>hours:minutes</b> in 24 hours
    format e.g. 01:30, 10:30, 15:30, 23:15.</li> </ul>


    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: PUT

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) REQUIRED ModelsUpdateLeaderboardConfigReq in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}"
    _method: str = "PUT"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelsUpdateLeaderboardConfigReq                                                         # REQUIRED in [body]
    leaderboard_code: str                                                                          # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]

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

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "leaderboard_code",
            "namespace",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "leaderboard_code"):
            result["leaderboardCode"] = self.leaderboard_code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "leaderboard_code") or self.leaderboard_code is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsUpdateLeaderboardConfigReq) -> UpdateLeaderboardConfigurationAdminV1:
        self.body = value
        return self

    def with_leaderboard_code(self, value: str) -> UpdateLeaderboardConfigurationAdminV1:
        self.leaderboard_code = value
        return self

    def with_namespace(self, value: str) -> UpdateLeaderboardConfigurationAdminV1:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsUpdateLeaderboardConfigReq()
        if hasattr(self, "leaderboard_code") and self.leaderboard_code:
            result["leaderboardCode"] = str(self.leaderboard_code)
        elif include_empty:
            result["leaderboardCode"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsGetLeaderboardConfigResp], Union[None, ResponseErrorResponse]]:
        """Parse the given response.

        200: OK - ModelsGetLeaderboardConfigResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
        """
        if code == 200:
            return ModelsGetLeaderboardConfigResp.create_from_dict(content), None
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
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelsUpdateLeaderboardConfigReq,
        leaderboard_code: str,
        namespace: str,
    ) -> UpdateLeaderboardConfigurationAdminV1:
        instance = cls()
        instance.body = body
        instance.leaderboard_code = leaderboard_code
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateLeaderboardConfigurationAdminV1:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsUpdateLeaderboardConfigReq.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelsUpdateLeaderboardConfigReq()
        if "leaderboardCode" in dict_ and dict_["leaderboardCode"] is not None:
            instance.leaderboard_code = str(dict_["leaderboardCode"])
        elif include_empty:
            instance.leaderboard_code = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "leaderboardCode": "leaderboard_code",
            "namespace": "namespace",
        }

    # endregion static methods