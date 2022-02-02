# justice-platform-service (4.1.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ImportRewards(Operation):
    """Import reward configurations (importRewards)

    Import reward configurations for a given namespace from file. At current, only
    JSON file is supported.<p>Other detail info:<ul><li><i>*Required permission*:
    resource="ADMIN:NAMESPACE:{namespace}:REWARD", action=1 (CREATE)</li></ul>


    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:REWARD [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/rewards/import

        method: POST

        tags: ["Reward"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        security_type: bearer

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
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    file: Any                                                                                      # OPTIONAL in [form_data]
    namespace: str                                                                                 # REQUIRED in [path]
    replace_existing: bool                                                                         # REQUIRED in [query]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "replace_existing",
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
        if not hasattr(self, "replace_existing") or self.replace_existing is None:
            return False
        return True

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
            result["namespace"] = str()
        if hasattr(self, "replace_existing") and self.replace_existing:
            result["replaceExisting"] = bool(self.replace_existing)
        elif include_empty:
            result["replaceExisting"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - (successful import of reward configs)

        400: Bad Request - ErrorEntity (34021: Reward data for namespace [{namespace}] is invalid)
        """
        if code == 200:
            return HttpResponse.create(code, "OK"), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ImportRewards:
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
