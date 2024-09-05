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

from ...models import ApiArtifactURLResponse
from ...models import ResponseErrorResponse


class ArtifactGetURL(Operation):
    """get a signed URL for a specific artifact (ArtifactGetURL)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        artifact_id: (artifactID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiArtifactURLResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no artifact with specifed artifactID)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    artifact_id: str  # REQUIRED in [path]
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
        if hasattr(self, "artifact_id"):
            result["artifactID"] = self.artifact_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_artifact_id(self, value: str) -> ArtifactGetURL:
        self.artifact_id = value
        return self

    def with_namespace(self, value: str) -> ArtifactGetURL:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "artifact_id") and self.artifact_id:
            result["artifactID"] = str(self.artifact_id)
        elif include_empty:
            result["artifactID"] = ""
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
        Union[None, ApiArtifactURLResponse],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ApiArtifactURLResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no artifact with specifed artifactID)

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

        if code == 200:
            return ApiArtifactURLResponse.create_from_dict(content), None
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

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(cls, artifact_id: str, namespace: str, **kwargs) -> ArtifactGetURL:
        instance = cls()
        instance.artifact_id = artifact_id
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ArtifactGetURL:
        instance = cls()
        if "artifactID" in dict_ and dict_["artifactID"] is not None:
            instance.artifact_id = str(dict_["artifactID"])
        elif include_empty:
            instance.artifact_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "artifactID": "artifact_id",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "artifactID": True,
            "namespace": True,
        }

    # endregion static methods
