# Auto-generated at 2021-09-27T17:01:27.290287+08:00
# from: Justice Social Service (1.17.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import StatImportInfo


class ImportStats(Operation):
    """Import stat configurations (importStats)

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/import

        method: POST

        tags: StatConfiguration

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        security: bearer

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        replace_existing: (replaceExisting) OPTIONAL bool in query

    Responses:
        200: OK - StatImportInfo (successful operation)

        400: Bad Request - ErrorEntity (errorCode: 70138 | errorMessage: Stats data for namespace [{namespace}] is invalid)
    """

    # region fields

    _url: str = "/social/v1/admin/namespaces/{namespace}/stats/import"
    _method: str = "POST"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    file: Any                                                                                      # OPTIONAL in [form_data]
    namespace: str                                                                                 # REQUIRED in [path]
    replace_existing: bool                                                                         # OPTIONAL in [query]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
        ]

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

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_file(self, value: Any) -> ImportStats:
        self.file = value
        return self

    def with_namespace(self, value: str) -> ImportStats:
        self.namespace = value
        return self

    def with_replace_existing(self, value: bool) -> ImportStats:
        self.replace_existing = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "file") and self.file:
            result["file"] = Any(self.file)
        elif include_empty:
            result["file"] = Any()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "replace_existing") and self.replace_existing:
            result["replaceExisting"] = bool(self.replace_existing)
        elif include_empty:
            result["replaceExisting"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, StatImportInfo], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - StatImportInfo (successful operation)

        400: Bad Request - ErrorEntity (errorCode: 70138 | errorMessage: Stats data for namespace [{namespace}] is invalid)
        """
        if code == 200:
            return StatImportInfo.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        file: Optional[Any] = None,
        replace_existing: Optional[bool] = None,
    ) -> ImportStats:
        instance = cls()
        instance.namespace = namespace
        if file is not None:
            instance.file = file
        if replace_existing is not None:
            instance.replace_existing = replace_existing
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ImportStats:
        instance = cls()
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "replaceExisting" in dict_ and dict_["replaceExisting"] is not None:
            instance.replace_existing = bool(dict_["replaceExisting"])
        elif include_empty:
            instance.replace_existing = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "file": "file",
            "namespace": "namespace",
            "replaceExisting": "replace_existing",
        }

    # endregion static methods
