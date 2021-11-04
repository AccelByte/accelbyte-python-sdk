# justice-platform-service (3.34.0)

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

from ...models import BulkOperationResult
from ...models import ErrorEntity


class UploadKeys(Operation):
    """Upload keys to key group (uploadKeys)

    This API is used to upload keys with csv format to a key group.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=4 (UPDATE)
      *  Returns : item data


    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys

        method: POST

        tags: ["KeyGroup"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        security: bearer

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        key_group_id: (keyGroupId) REQUIRED str in path

    Responses:
        200: OK - BulkOperationResult (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])

        400: Bad Request - ErrorEntity (37221: Invalid key file)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys"
    _method: str = "POST"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    file: Any                                                                                      # OPTIONAL in [form_data]
    namespace: str                                                                                 # REQUIRED in [path]
    key_group_id: str                                                                              # REQUIRED in [path]

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
            url = url.replace(f"{{{k}}}", str(v))
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "key_group_id",
        ]

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
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "key_group_id"):
            result["keyGroupId"] = self.key_group_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "key_group_id") or self.key_group_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_file(self, value: Any) -> UploadKeys:
        self.file = value
        return self

    def with_namespace(self, value: str) -> UploadKeys:
        self.namespace = value
        return self

    def with_key_group_id(self, value: str) -> UploadKeys:
        self.key_group_id = value
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
        if hasattr(self, "key_group_id") and self.key_group_id:
            result["keyGroupId"] = str(self.key_group_id)
        elif include_empty:
            result["keyGroupId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, BulkOperationResult], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - BulkOperationResult (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])

        400: Bad Request - ErrorEntity (37221: Invalid key file)
        """
        if code == 200:
            return BulkOperationResult.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
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
        key_group_id: str,
        file: Optional[Any] = None,
    ) -> UploadKeys:
        instance = cls()
        instance.namespace = namespace
        instance.key_group_id = key_group_id
        if file is not None:
            instance.file = file
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UploadKeys:
        instance = cls()
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "keyGroupId" in dict_ and dict_["keyGroupId"] is not None:
            instance.key_group_id = str(dict_["keyGroupId"])
        elif include_empty:
            instance.key_group_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "file": "file",
            "namespace": "namespace",
            "keyGroupId": "key_group_id",
        }

    # endregion static methods
