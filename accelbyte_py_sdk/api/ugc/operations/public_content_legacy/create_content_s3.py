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

# AccelByte Gaming Services Ugc Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsCreateContentResponse
from ...models import ModelsPublicCreateContentRequestS3
from ...models import ResponseError


class CreateContentS3(Operation):
    """Upload content to S3 bucket (CreateContentS3)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except payload, preview, tags, contentType and customAttributes.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.
    If not specified, it will use fileExtension value.



    NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateContentRequestS3 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content uploaded to S3 bucket)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770102: Unable to check user ban status/Unable to save ugc content: unable to get channel)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)
    """

    # region fields

    _url: str = "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3"
    _method: str = "POST"
    _consumes: List[str] = ["application/json", "application/octet-stream"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsPublicCreateContentRequestS3  # REQUIRED in [body]
    channel_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]

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
        if hasattr(self, "channel_id"):
            result["channelId"] = self.channel_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsPublicCreateContentRequestS3) -> CreateContentS3:
        self.body = value
        return self

    def with_channel_id(self, value: str) -> CreateContentS3:
        self.channel_id = value
        return self

    def with_namespace(self, value: str) -> CreateContentS3:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> CreateContentS3:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsPublicCreateContentRequestS3()
        if hasattr(self, "channel_id") and self.channel_id:
            result["channelId"] = str(self.channel_id)
        elif include_empty:
            result["channelId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsCreateContentResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        201: Created - ModelsCreateContentResponse (Content uploaded to S3 bucket)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770102: Unable to check user ban status/Unable to save ugc content: unable to get channel)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)

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
            return ModelsCreateContentResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
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
        body: ModelsPublicCreateContentRequestS3,
        channel_id: str,
        namespace: str,
        user_id: str,
        **kwargs,
    ) -> CreateContentS3:
        instance = cls()
        instance.body = body
        instance.channel_id = channel_id
        instance.namespace = namespace
        instance.user_id = user_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreateContentS3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsPublicCreateContentRequestS3.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsPublicCreateContentRequestS3()
        if "channelId" in dict_ and dict_["channelId"] is not None:
            instance.channel_id = str(dict_["channelId"])
        elif include_empty:
            instance.channel_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "channelId": "channel_id",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "channelId": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
