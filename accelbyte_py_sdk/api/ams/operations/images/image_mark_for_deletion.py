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

# Fleet Commander

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ResponseErrorResponse


class ImageMarkForDeletion(Operation):
    """mark the image for deletion (ImageMarkForDeletion)

    Marks an image for deletion. The image will stop being available for fleets and will eventually be deleted.

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images/{imageID}

        method: DELETE

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        image_id: (imageID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (image doesn't exist)

        412: Precondition Failed - ResponseErrorResponse (image is being used by 1 or more fleets)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/images/{imageID}"
    _method: str = "DELETE"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    image_id: str  # REQUIRED in [path]
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
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "image_id"):
            result["imageID"] = self.image_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_image_id(self, value: str) -> ImageMarkForDeletion:
        self.image_id = value
        return self

    def with_namespace(self, value: str) -> ImageMarkForDeletion:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "image_id") and self.image_id:
            result["imageID"] = str(self.image_id)
        elif include_empty:
            result["imageID"] = ""
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
        Union[None, HttpResponse], Union[None, HttpResponse, ResponseErrorResponse]
    ]:
        """Parse the given response.

        202: Accepted - (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (image doesn't exist)

        412: Precondition Failed - ResponseErrorResponse (image is being used by 1 or more fleets)

        500: Internal Server Error - ResponseErrorResponse (internal server error)

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

        if code == 202:
            return HttpResponse.create(code, "Accepted"), None
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 412:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(cls, image_id: str, namespace: str, **kwargs) -> ImageMarkForDeletion:
        instance = cls()
        instance.image_id = image_id
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImageMarkForDeletion:
        instance = cls()
        if "imageID" in dict_ and dict_["imageID"] is not None:
            instance.image_id = str(dict_["imageID"])
        elif include_empty:
            instance.image_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "imageID": "image_id",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "imageID": True,
            "namespace": True,
        }

    # endregion static methods
