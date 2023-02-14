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

# AccelByte Cloud Session Service (2.6.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApimodelsUpdateGameSessionMemberStatusResponse
from ...models import ResponseError


class AdminUpdateGameSessionMember(Operation):
    """Update status of a game session member. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (adminUpdateGameSessionMember)

    Update a game session member status.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_id: (memberId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        status_type: (statusType) REQUIRED str in path

    Responses:
        200: OK - ApimodelsUpdateGameSessionMemberStatusResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    member_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    session_id: str  # REQUIRED in [path]
    status_type: str  # REQUIRED in [path]

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
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "member_id"):
            result["memberId"] = self.member_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "session_id"):
            result["sessionId"] = self.session_id
        if hasattr(self, "status_type"):
            result["statusType"] = self.status_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_member_id(self, value: str) -> AdminUpdateGameSessionMember:
        self.member_id = value
        return self

    def with_namespace(self, value: str) -> AdminUpdateGameSessionMember:
        self.namespace = value
        return self

    def with_session_id(self, value: str) -> AdminUpdateGameSessionMember:
        self.session_id = value
        return self

    def with_status_type(self, value: str) -> AdminUpdateGameSessionMember:
        self.status_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "member_id") and self.member_id:
            result["memberId"] = str(self.member_id)
        elif include_empty:
            result["memberId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "session_id") and self.session_id:
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        if hasattr(self, "status_type") and self.status_type:
            result["statusType"] = str(self.status_type)
        elif include_empty:
            result["statusType"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelsUpdateGameSessionMemberStatusResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ApimodelsUpdateGameSessionMemberStatusResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

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
            return (
                ApimodelsUpdateGameSessionMemberStatusResponse.create_from_dict(
                    content
                ),
                None,
            )
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
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
        member_id: str,
        namespace: str,
        session_id: str,
        status_type: str,
    ) -> AdminUpdateGameSessionMember:
        instance = cls()
        instance.member_id = member_id
        instance.namespace = namespace
        instance.session_id = session_id
        instance.status_type = status_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminUpdateGameSessionMember:
        instance = cls()
        if "memberId" in dict_ and dict_["memberId"] is not None:
            instance.member_id = str(dict_["memberId"])
        elif include_empty:
            instance.member_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        if "statusType" in dict_ and dict_["statusType"] is not None:
            instance.status_type = str(dict_["statusType"])
        elif include_empty:
            instance.status_type = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "memberId": "member_id",
            "namespace": "namespace",
            "sessionId": "session_id",
            "statusType": "status_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "memberId": True,
            "namespace": True,
            "sessionId": True,
            "statusType": True,
        }

    # endregion static methods
