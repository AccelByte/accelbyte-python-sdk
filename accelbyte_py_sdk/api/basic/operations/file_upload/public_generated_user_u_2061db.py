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

# AccelByte Cloud Basic Service (2.5.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import FileUploadUrlInfo
from ...models import ValidationErrorEntity


class PublicGeneratedUserUploadContentUrl(Operation):
    """Generate Upload URL For User Content (publicGeneratedUserUploadContentUrl)

    Generate an upload URL for user content. It's valid for 10 minutes.
    There are 2 kinds of storage limitation per user : maximum file count and maximum file size.
    The threshold of those limitations is different between upload category that is used.
    Other detail info:

      * Required permission : resource = "NAMESPACE:{namespace}:USER:{userId}:FILEUPLOAD" , action=1 (CREATE)
      *  Action code : 11102
      *  Default maximum file count per user : 10 files
      *  Default maximum file size per user : 104857600 bytes
      *  Returns : URL data

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:FILEUPLOAD [CREATE]

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        category: (category) OPTIONAL str in query

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11121: Unable to {action}: category {category} is not valid | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11132: Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace})

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """

    # region fields

    _url: str = "/basic/v1/public/namespaces/{namespace}/users/{userId}/files"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    category: str  # OPTIONAL in [query]
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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "category"):
            result["category"] = self.category
        if hasattr(self, "file_type"):
            result["fileType"] = self.file_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicGeneratedUserUploadContentUrl:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PublicGeneratedUserUploadContentUrl:
        self.user_id = value
        return self

    def with_category(self, value: str) -> PublicGeneratedUserUploadContentUrl:
        self.category = value
        return self

    def with_file_type(self, value: str) -> PublicGeneratedUserUploadContentUrl:
        self.file_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "category") and self.category:
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = ""
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

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11121: Unable to {action}: category {category} is not valid | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11132: Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace})

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
        if code == 409:
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
        namespace: str,
        user_id: str,
        file_type: str,
        category: Optional[str] = None,
    ) -> PublicGeneratedUserUploadContentUrl:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.file_type = file_type
        if category is not None:
            instance.category = category
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicGeneratedUserUploadContentUrl:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = ""
        if "fileType" in dict_ and dict_["fileType"] is not None:
            instance.file_type = str(dict_["fileType"])
        elif include_empty:
            instance.file_type = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "category": "category",
            "fileType": "file_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "category": False,
            "fileType": True,
        }

    # endregion static methods
