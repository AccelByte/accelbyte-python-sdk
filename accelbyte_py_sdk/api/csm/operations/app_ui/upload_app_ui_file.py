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

from ...models import ApimodelUploadFileResponse
from ...models import ResponseErrorResponse


class UploadAppUIFile(Operation):
    """Upload App UI assets as a zip file (UploadAppUIFile)

    Uploads a ZIP archive containing App UI static assets (HTML, CSS, JS, etc.). Files are stored in S3 and served with immutable caching.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload

        method: POST

        tags: ["App UI"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

        app_ui_name: (appUiName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) OPTIONAL str in query

    Responses:
        200: OK - ApimodelUploadFileResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        502: Bad Gateway - ResponseErrorResponse (Bad Gateway)
    """

    # region fields

    _url: str = "/csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload"
    _method: str = "POST"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    file: Any  # REQUIRED in [form_data]
    app_ui_name: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    version: str  # OPTIONAL in [query]

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
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "file"):
            result[("file", "file")] = self.file
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "app_ui_name"):
            result["appUiName"] = self.app_ui_name
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "version"):
            result["version"] = self.version
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_file(self, value: Any) -> UploadAppUIFile:
        self.file = value
        return self

    def with_app_ui_name(self, value: str) -> UploadAppUIFile:
        self.app_ui_name = value
        return self

    def with_namespace(self, value: str) -> UploadAppUIFile:
        self.namespace = value
        return self

    def with_version(self, value: str) -> UploadAppUIFile:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "file") and self.file:
            result["file"] = Any(self.file)
        elif include_empty:
            result["file"] = Any()
        if hasattr(self, "app_ui_name") and self.app_ui_name:
            result["appUiName"] = str(self.app_ui_name)
        elif include_empty:
            result["appUiName"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "version") and self.version:
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelUploadFileResponse],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ApimodelUploadFileResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        502: Bad Gateway - ResponseErrorResponse (Bad Gateway)

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
            return ApimodelUploadFileResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 502:
            return None, ResponseErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        file: Any,
        app_ui_name: str,
        namespace: str,
        version: Optional[str] = None,
        **kwargs,
    ) -> UploadAppUIFile:
        instance = cls()
        instance.file = file
        instance.app_ui_name = app_ui_name
        instance.namespace = namespace
        if version is not None:
            instance.version = version
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UploadAppUIFile:
        instance = cls()
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "appUiName" in dict_ and dict_["appUiName"] is not None:
            instance.app_ui_name = str(dict_["appUiName"])
        elif include_empty:
            instance.app_ui_name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "file": "file",
            "appUiName": "app_ui_name",
            "namespace": "namespace",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "file": True,
            "appUiName": True,
            "namespace": True,
            "version": False,
        }

    # endregion static methods
