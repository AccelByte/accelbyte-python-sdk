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

# AccelByte Gaming Services Challenge Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import IamErrorResponse
from ...models import ModelCreateGoalRequest
from ...models import ModelGoalResponse
from ...models import ResponseError


class AdminCreateGoal(Operation):
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]&lt;/li&gt;&lt;/ul&gt;Goal describe set of requirements that need to be fulfilled by players in order to complete it and describe what is the rewards given to player when they complete the goal.The requirement will have target value and a operator that will evaluate that against an observable player’s attribute (e.g. statistic, entitlement). Goal belongs to a challenge. (adminCreateGoal)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]

    Goal describe set of requirements that need to be fulfilled by players in order to complete it and describe what is the rewards given to player when they complete the goal.The requirement will have target value and a operator that will evaluate that against an observable playerâs attribute (e.g. statistic, entitlement). Goal belongs to a challenge.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals

        method: POST

        tags: ["Goal Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateGoalRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelGoalResponse (Created)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        409: Conflict - ResponseError (99002: duplicate key error: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """

    # region fields

    _url: str = (
        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals"
    )
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelCreateGoalRequest  # REQUIRED in [body]
    challenge_code: str  # REQUIRED in [path]
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
        if hasattr(self, "challenge_code"):
            result["challengeCode"] = self.challenge_code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelCreateGoalRequest) -> AdminCreateGoal:
        self.body = value
        return self

    def with_challenge_code(self, value: str) -> AdminCreateGoal:
        self.challenge_code = value
        return self

    def with_namespace(self, value: str) -> AdminCreateGoal:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelCreateGoalRequest()
        if hasattr(self, "challenge_code") and self.challenge_code:
            result["challengeCode"] = str(self.challenge_code)
        elif include_empty:
            result["challengeCode"] = ""
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
        Union[None, ModelGoalResponse],
        Union[None, HttpResponse, IamErrorResponse, ResponseError],
    ]:
        """Parse the given response.

        201: Created - ModelGoalResponse (Created)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        409: Conflict - ResponseError (99002: duplicate key error: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})

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

        if code == 201:
            return ModelGoalResponse.create_from_dict(content), None
        if code == 401:
            return None, IamErrorResponse.create_from_dict(content)
        if code == 403:
            return None, IamErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ResponseError.create_from_dict(content)
        if code == 409:
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
        cls, body: ModelCreateGoalRequest, challenge_code: str, namespace: str, **kwargs
    ) -> AdminCreateGoal:
        instance = cls()
        instance.body = body
        instance.challenge_code = challenge_code
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminCreateGoal:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelCreateGoalRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelCreateGoalRequest()
        if "challengeCode" in dict_ and dict_["challengeCode"] is not None:
            instance.challenge_code = str(dict_["challengeCode"])
        elif include_empty:
            instance.challenge_code = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "challengeCode": "challenge_code",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "challengeCode": True,
            "namespace": True,
        }

    # endregion static methods
