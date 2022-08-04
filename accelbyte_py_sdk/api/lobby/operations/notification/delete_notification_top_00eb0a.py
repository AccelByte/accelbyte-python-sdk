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

# AccelByte Cloud Lobby Server (staging)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import RestapiErrorResponseV1


class DeleteNotificationTopicV1Admin(Operation):
    """delete topic information by topic name (deleteNotificationTopicV1Admin)

    Required permission : `ADMIN:NAMESPACE:{namespace}:NOTIFICATION [DELETE]` with scope `social`

    delete topic information by topic name.

    topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
    Already existing topic can not be created

    Action Code: 50217

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:NOTIFICATION [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}

        method: DELETE

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic_name: (topicName) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """

    # region fields

    _url: str = "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}"
    _method: str = "DELETE"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    topic_name: str  # REQUIRED in [path]

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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "topic_name"):
            result["topicName"] = self.topic_name
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> DeleteNotificationTopicV1Admin:
        self.namespace = value
        return self

    def with_topic_name(self, value: str) -> DeleteNotificationTopicV1Admin:
        self.topic_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "topic_name") and self.topic_name:
            result["topicName"] = str(self.topic_name)
        elif include_empty:
            result["topicName"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, RestapiErrorResponseV1]]:
        """Parse the given response.

        204: No Content - (No Content)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)

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

        if code == 204:
            return None, None
        if code == 401:
            return None, RestapiErrorResponseV1.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorResponseV1.create_from_dict(content)
        if code == 404:
            return None, RestapiErrorResponseV1.create_from_dict(content)
        if code == 500:
            return None, RestapiErrorResponseV1.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        topic_name: str,
    ) -> DeleteNotificationTopicV1Admin:
        instance = cls()
        instance.namespace = namespace
        instance.topic_name = topic_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DeleteNotificationTopicV1Admin:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "topicName" in dict_ and dict_["topicName"] is not None:
            instance.topic_name = str(dict_["topicName"])
        elif include_empty:
            instance.topic_name = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "topicName": "topic_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "topicName": True,
        }

    # endregion static methods
