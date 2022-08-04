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

# AccelByte Cloud Achievement Service ()

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsAchievementResponse
from ...models import ModelsAchievementUpdateRequest
from ...models import ResponseError


class AdminUpdateAchievement(Operation):
    """Update an achievement (AdminUpdateAchievement)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}

        method: PUT

        tags: ["achievements"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAchievementUpdateRequest in body

        achievement_code: (achievementCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = (
        "/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}"
    )
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsAchievementUpdateRequest  # REQUIRED in [body]
    achievement_code: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]

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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = self.achievement_code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelsAchievementUpdateRequest
    ) -> AdminUpdateAchievement:
        self.body = value
        return self

    def with_achievement_code(self, value: str) -> AdminUpdateAchievement:
        self.achievement_code = value
        return self

    def with_namespace(self, value: str) -> AdminUpdateAchievement:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsAchievementUpdateRequest()
        if hasattr(self, "achievement_code") and self.achievement_code:
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsAchievementResponse], Union[None, HttpResponse, ResponseError]
    ]:
        """Parse the given response.

        200: OK - ModelsAchievementResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

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
            return ModelsAchievementResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
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
        body: ModelsAchievementUpdateRequest,
        achievement_code: str,
        namespace: str,
    ) -> AdminUpdateAchievement:
        instance = cls()
        instance.body = body
        instance.achievement_code = achievement_code
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminUpdateAchievement:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsAchievementUpdateRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsAchievementUpdateRequest()
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "achievementCode": "achievement_code",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "achievementCode": True,
            "namespace": True,
        }

    # endregion static methods
