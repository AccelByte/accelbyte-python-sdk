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

# AccelByte Cloud Matchmaking Service (2.20.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsImportConfigResponse
from ...models import ResponseErrorV1


class ImportChannels(Operation):
    """Import channels (ImportChannels)

    Required Permission: ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Update]

    Required Scope: social

    Import channels configuration from file. It will merge with existing channels.
    Available import strategy:
    - leaveOut: if channel with same key exist, the existing will be used and imported one will be ignored (default)
    - replace: if channel with same key exist, the imported channel will be used and existing one will be removed

    Action Code: 510113

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [Update]

    Required Scope(s):
        - social

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/import

        method: POST

        tags: ["Matchmaking"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        strategy: (strategy) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsImportConfigResponse (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 510109: failed to read file)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """

    # region fields

    _url: str = "/matchmaking/v1/admin/namespaces/{namespace}/channels/import"
    _method: str = "POST"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    file: Any  # OPTIONAL in [form_data]
    strategy: str  # OPTIONAL in [form_data]
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
        if hasattr(self, "file"):
            result["file"] = self.file
        if hasattr(self, "strategy"):
            result["strategy"] = self.strategy
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

    def with_file(self, value: Any) -> ImportChannels:
        self.file = value
        return self

    def with_strategy(self, value: str) -> ImportChannels:
        self.strategy = value
        return self

    def with_namespace(self, value: str) -> ImportChannels:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "file") and self.file:
            result["file"] = Any(self.file)
        elif include_empty:
            result["file"] = Any()
        if hasattr(self, "strategy") and self.strategy:
            result["strategy"] = str(self.strategy)
        elif include_empty:
            result["strategy"] = ""
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
        Union[None, ModelsImportConfigResponse],
        Union[None, HttpResponse, ResponseErrorV1],
    ]:
        """Parse the given response.

        200: OK - ModelsImportConfigResponse (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 510109: failed to read file)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)

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
            return ModelsImportConfigResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseErrorV1.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorV1.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorV1.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorV1.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        file: Optional[Any] = None,
        strategy: Optional[str] = None,
    ) -> ImportChannels:
        instance = cls()
        instance.namespace = namespace
        if file is not None:
            instance.file = file
        if strategy is not None:
            instance.strategy = strategy
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImportChannels:
        instance = cls()
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "strategy" in dict_ and dict_["strategy"] is not None:
            instance.strategy = str(dict_["strategy"])
        elif include_empty:
            instance.strategy = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "file": "file",
            "strategy": "strategy",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "file": False,
            "strategy": False,
            "namespace": True,
        }

    # endregion static methods
