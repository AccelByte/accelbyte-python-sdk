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

# AccelByte Cloud Basic Service (2.2.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import FileUploadUrlInfo
from ...models import ValidationErrorEntity


class PublicGeneratedUploadUrl(Operation):
    """Generate Upload URL (publicGeneratedUploadUrl)

    Generate an upload URL. It's valid for 10 minutes.
    Other detail info:

      * Required permission : resource = "NAMESPACE:{namespace}:FILEUPLOAD" , action=1 (CREATE)
      *  Action code : 11101
      *  Returns : URL data

    Required Permission(s):
        - NAMESPACE:{namespace}:FILEUPLOAD [CREATE]

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/folders/{folder}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        folder: (folder) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """

    # region fields

    _url: str = "/basic/v1/public/namespaces/{namespace}/folders/{folder}/files"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    folder: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    file_type: str  # REQUIRED in [query]

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
        if hasattr(self, "folder"):
            result["folder"] = self.folder
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "file_type"):
            result["fileType"] = self.file_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_folder(self, value: str) -> PublicGeneratedUploadUrl:
        self.folder = value
        return self

    def with_namespace(self, value: str) -> PublicGeneratedUploadUrl:
        self.namespace = value
        return self

    def with_file_type(self, value: str) -> PublicGeneratedUploadUrl:
        self.file_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "folder") and self.folder:
            result["folder"] = str(self.folder)
        elif include_empty:
            result["folder"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "file_type") and self.file_type:
            result["fileType"] = str(self.file_type)
        elif include_empty:
            result["fileType"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, FileUploadUrlInfo],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: internal server error)

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
            return FileUploadUrlInfo.create_from_dict(content), None
        if code == 400:
            return None, ValidationErrorEntity.create_from_dict(content)
        if code == 401:
            return None, ErrorEntity.create_from_dict(content)
        if code == 403:
            return None, ErrorEntity.create_from_dict(content)
        if code == 500:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        folder: str,
        namespace: str,
        file_type: str,
    ) -> PublicGeneratedUploadUrl:
        instance = cls()
        instance.folder = folder
        instance.namespace = namespace
        instance.file_type = file_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicGeneratedUploadUrl:
        instance = cls()
        if "folder" in dict_ and dict_["folder"] is not None:
            instance.folder = str(dict_["folder"])
        elif include_empty:
            instance.folder = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "fileType" in dict_ and dict_["fileType"] is not None:
            instance.file_type = str(dict_["fileType"])
        elif include_empty:
            instance.file_type = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "folder": "folder",
            "namespace": "namespace",
            "fileType": "file_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "folder": True,
            "namespace": True,
            "fileType": True,
        }

    # endregion static methods
