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

# AccelByte Gaming Services Session Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import ModelsPlatformCredentials
from ...models import ResponseError


class AdminUploadXBoxCertificate(Operation):
    """Upload certificates for XBox. (adminUploadXBoxCertificate)

    Upload certificates for XBox. Certificate must be in the valid form of PFX format. 'certname'' must be specified to 'xbl-pfx' for Session Sync to work

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl

        method: PUT

        tags: ["Certificate"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        description: (description) OPTIONAL str in form_data

        certname: (certname) REQUIRED str in form_data

        file: (file) REQUIRED Any in form_data

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlatformCredentials (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = (
        "/session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl"
    )
    _method: str = "PUT"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    description: str  # OPTIONAL in [form_data]
    certname: str  # REQUIRED in [form_data]
    file: Any  # REQUIRED in [form_data]
    password: str  # REQUIRED in [form_data]
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
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "description"):
            result["description"] = self.description
        if hasattr(self, "certname"):
            result["certname"] = self.certname
        if hasattr(self, "file"):
            result[("file", "file")] = self.file
        if hasattr(self, "password"):
            result["password"] = self.password
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_description(self, value: str) -> AdminUploadXBoxCertificate:
        self.description = value
        return self

    def with_certname(self, value: str) -> AdminUploadXBoxCertificate:
        self.certname = value
        return self

    def with_file(self, value: Any) -> AdminUploadXBoxCertificate:
        self.file = value
        return self

    def with_password(self, value: str) -> AdminUploadXBoxCertificate:
        self.password = value
        return self

    def with_namespace(self, value: str) -> AdminUploadXBoxCertificate:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "certname") and self.certname:
            result["certname"] = str(self.certname)
        elif include_empty:
            result["certname"] = ""
        if hasattr(self, "file") and self.file:
            result["file"] = Any(self.file)
        elif include_empty:
            result["file"] = Any()
        if hasattr(self, "password") and self.password:
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
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
        Union[None, ModelsPlatformCredentials], Union[None, HttpResponse, ResponseError]
    ]:
        """Parse the given response.

        200: OK - ModelsPlatformCredentials (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)

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
            return ModelsPlatformCredentials.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
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
        certname: str,
        file: Any,
        password: str,
        namespace: str,
        description: Optional[str] = None,
        **kwargs,
    ) -> AdminUploadXBoxCertificate:
        instance = cls()
        instance.certname = certname
        instance.file = file
        instance.password = password
        instance.namespace = namespace
        if description is not None:
            instance.description = description
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminUploadXBoxCertificate:
        instance = cls()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "certname" in dict_ and dict_["certname"] is not None:
            instance.certname = str(dict_["certname"])
        elif include_empty:
            instance.certname = ""
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "description": "description",
            "certname": "certname",
            "file": "file",
            "password": "password",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": False,
            "certname": True,
            "file": True,
            "password": True,
            "namespace": True,
        }

    # endregion static methods
