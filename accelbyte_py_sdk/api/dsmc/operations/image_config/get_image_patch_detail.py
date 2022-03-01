# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-dsm-controller-service (2.14.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ModelsGetImagePatchDetailResponse
from ...models import ResponseError


class GetImagePatchDetail(Operation):
    """DS Image patch Detail (GetImagePatchDetail)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get specific image patch version of dedicated servers version.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}

        method: GET

        tags: ["Image Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

        version_patch: (versionPatch) REQUIRED str in path

    Responses:
        200: OK - ModelsGetImagePatchDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    version: str                                                                                   # REQUIRED in [path]
    version_patch: str                                                                             # REQUIRED in [path]

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "version",
            "version_patch",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "version"):
            result["version"] = self.version
        if hasattr(self, "version_patch"):
            result["versionPatch"] = self.version_patch
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "version") or self.version is None:
            return False
        if not hasattr(self, "version_patch") or self.version_patch is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetImagePatchDetail:
        self.namespace = value
        return self

    def with_version(self, value: str) -> GetImagePatchDetail:
        self.version = value
        return self

    def with_version_patch(self, value: str) -> GetImagePatchDetail:
        self.version_patch = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "version") and self.version:
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = str()
        if hasattr(self, "version_patch") and self.version_patch:
            result["versionPatch"] = str(self.version_patch)
        elif include_empty:
            result["versionPatch"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsGetImagePatchDetailResponse], Union[None, ResponseError]]:
        """Parse the given response.

        200: OK - ModelsGetImagePatchDetailResponse (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (image version not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 200:
            return ModelsGetImagePatchDetailResponse.create_from_dict(content), None
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)
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
        version: str,
        version_patch: str,
    ) -> GetImagePatchDetail:
        instance = cls()
        instance.namespace = namespace
        instance.version = version
        instance.version_patch = version_patch
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetImagePatchDetail:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = str()
        if "versionPatch" in dict_ and dict_["versionPatch"] is not None:
            instance.version_patch = str(dict_["versionPatch"])
        elif include_empty:
            instance.version_patch = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "version": "version",
            "versionPatch": "version_patch",
        }

    # endregion static methods