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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ResponseErrorResponse


class ArtifactBulkDelete(Operation):
    """delete artifacts that match criteria in bulk. all artifacts matching any one criteria will be deleted. at least 1 parameter is required. (ArtifactBulkDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts

        method: DELETE

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        artifact_type: (artifactType) OPTIONAL str in query

        fleet_id: (fleetId) OPTIONAL str in query

        uploaded_before: (uploadedBefore) OPTIONAL str in query

    Responses:
        202: Accepted - (delete received)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/artifacts"
    _method: str = "DELETE"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    artifact_type: str  # OPTIONAL in [query]
    fleet_id: str  # OPTIONAL in [query]
    uploaded_before: str  # OPTIONAL in [query]

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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "artifact_type"):
            result["artifactType"] = self.artifact_type
        if hasattr(self, "fleet_id"):
            result["fleetId"] = self.fleet_id
        if hasattr(self, "uploaded_before"):
            result["uploadedBefore"] = self.uploaded_before
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ArtifactBulkDelete:
        self.namespace = value
        return self

    def with_artifact_type(self, value: str) -> ArtifactBulkDelete:
        self.artifact_type = value
        return self

    def with_fleet_id(self, value: str) -> ArtifactBulkDelete:
        self.fleet_id = value
        return self

    def with_uploaded_before(self, value: str) -> ArtifactBulkDelete:
        self.uploaded_before = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "artifact_type") and self.artifact_type:
            result["artifactType"] = str(self.artifact_type)
        elif include_empty:
            result["artifactType"] = ""
        if hasattr(self, "fleet_id") and self.fleet_id:
            result["fleetId"] = str(self.fleet_id)
        elif include_empty:
            result["fleetId"] = ""
        if hasattr(self, "uploaded_before") and self.uploaded_before:
            result["uploadedBefore"] = str(self.uploaded_before)
        elif include_empty:
            result["uploadedBefore"] = ""
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

        202: Accepted - (delete received)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

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
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
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
        cls,
        namespace: str,
        artifact_type: Optional[str] = None,
        fleet_id: Optional[str] = None,
        uploaded_before: Optional[str] = None,
        **kwargs,
    ) -> ArtifactBulkDelete:
        instance = cls()
        instance.namespace = namespace
        if artifact_type is not None:
            instance.artifact_type = artifact_type
        if fleet_id is not None:
            instance.fleet_id = fleet_id
        if uploaded_before is not None:
            instance.uploaded_before = uploaded_before
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ArtifactBulkDelete:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "artifactType" in dict_ and dict_["artifactType"] is not None:
            instance.artifact_type = str(dict_["artifactType"])
        elif include_empty:
            instance.artifact_type = ""
        if "fleetId" in dict_ and dict_["fleetId"] is not None:
            instance.fleet_id = str(dict_["fleetId"])
        elif include_empty:
            instance.fleet_id = ""
        if "uploadedBefore" in dict_ and dict_["uploadedBefore"] is not None:
            instance.uploaded_before = str(dict_["uploadedBefore"])
        elif include_empty:
            instance.uploaded_before = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "artifactType": "artifact_type",
            "fleetId": "fleet_id",
            "uploadedBefore": "uploaded_before",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "artifactType": False,
            "fleetId": False,
            "uploadedBefore": False,
        }

    @staticmethod
    def get_pattern_map() -> Dict[str, re.Pattern]:
        return {
            "uploadedBefore": re.compile(
                r"^(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$"
            ),
        }

    # endregion static methods
