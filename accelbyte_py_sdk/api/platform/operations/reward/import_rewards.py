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

# AccelByte Cloud Platform Service (4.23.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity


class ImportRewards(Operation):
    """Import reward configurations (importRewards)

    Import reward configurations for a given namespace from file. At current, only JSON file is supported.

    Other detail info:

      *  *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:REWARD", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:REWARD [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/import

        method: POST

        tags: ["Reward"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        replace_existing: (replaceExisting) REQUIRED bool in query

    Responses:
        200: OK - (successful import of reward configs)

        400: Bad Request - ErrorEntity (34021: Reward data for namespace [{namespace}] is invalid)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/rewards/import"
    _method: str = "POST"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    file: Any  # OPTIONAL in [form_data]
    namespace: str  # REQUIRED in [path]
    replace_existing: bool  # REQUIRED in [query]

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
            result["file"] = self.file
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "replace_existing"):
            result["replaceExisting"] = self.replace_existing
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_file(self, value: Any) -> ImportRewards:
        self.file = value
        return self

    def with_namespace(self, value: str) -> ImportRewards:
        self.namespace = value
        return self

    def with_replace_existing(self, value: bool) -> ImportRewards:
        self.replace_existing = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "file") and self.file:
            result["file"] = Any(self.file)
        elif include_empty:
            result["file"] = Any()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "replace_existing") and self.replace_existing:
            result["replaceExisting"] = bool(self.replace_existing)
        elif include_empty:
            result["replaceExisting"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - (successful import of reward configs)

        400: Bad Request - ErrorEntity (34021: Reward data for namespace [{namespace}] is invalid)

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
            return HttpResponse.create(code, "OK"), None
        if code == 400:
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
        replace_existing: bool,
        file: Optional[Any] = None,
    ) -> ImportRewards:
        instance = cls()
        instance.namespace = namespace
        instance.replace_existing = replace_existing
        if file is not None:
            instance.file = file
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImportRewards:
        instance = cls()
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "replaceExisting" in dict_ and dict_["replaceExisting"] is not None:
            instance.replace_existing = bool(dict_["replaceExisting"])
        elif include_empty:
            instance.replace_existing = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "file": "file",
            "namespace": "namespace",
            "replaceExisting": "replace_existing",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "file": False,
            "namespace": True,
            "replaceExisting": True,
        }

    # endregion static methods
