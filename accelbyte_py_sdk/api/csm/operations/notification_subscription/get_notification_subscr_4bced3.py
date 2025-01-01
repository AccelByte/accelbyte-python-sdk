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

# Custom Service Manager

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApimodelGetNotificationSubscriberListResponse
from ...models import ResponseErrorResponse


class GetNotificationSubscriberListV2(Operation):
    """Get a list of the app notification subscriber (GetNotificationSubscriberListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

    Request param:
    - notificationType : type of the subscribed app notification
    - values:
    - all
    - app-down
    - critical-vulnerability

    Get a list of the app notification subscriber

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions

        method: GET

        tags: ["Notification Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        notification_type: (notificationType) REQUIRED str in query

    Responses:
        200: OK - ApimodelGetNotificationSubscriberListResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    app: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    notification_type: str  # REQUIRED in [query]

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
        if hasattr(self, "app"):
            result["app"] = self.app
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "notification_type"):
            result["notificationType"] = self.notification_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_app(self, value: str) -> GetNotificationSubscriberListV2:
        self.app = value
        return self

    def with_namespace(self, value: str) -> GetNotificationSubscriberListV2:
        self.namespace = value
        return self

    def with_notification_type(self, value: str) -> GetNotificationSubscriberListV2:
        self.notification_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app") and self.app:
            result["app"] = str(self.app)
        elif include_empty:
            result["app"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "notification_type") and self.notification_type:
            result["notificationType"] = str(self.notification_type)
        elif include_empty:
            result["notificationType"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelGetNotificationSubscriberListResponse],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ApimodelGetNotificationSubscriberListResponse

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

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
            return (
                ApimodelGetNotificationSubscriberListResponse.create_from_dict(content),
                None,
            )
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 404:
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
        cls, app: str, namespace: str, notification_type: str, **kwargs
    ) -> GetNotificationSubscriberListV2:
        instance = cls()
        instance.app = app
        instance.namespace = namespace
        instance.notification_type = notification_type
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetNotificationSubscriberListV2:
        instance = cls()
        if "app" in dict_ and dict_["app"] is not None:
            instance.app = str(dict_["app"])
        elif include_empty:
            instance.app = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = str(dict_["notificationType"])
        elif include_empty:
            instance.notification_type = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "app": "app",
            "namespace": "namespace",
            "notificationType": "notification_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "app": True,
            "namespace": True,
            "notificationType": True,
        }

    # endregion static methods
