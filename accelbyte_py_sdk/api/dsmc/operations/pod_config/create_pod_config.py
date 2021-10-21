# Auto-generated at 2021-10-21T08:52:24.366539+08:00
# from: Justice dsmc Service (2.6.0)

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

from ...models import ModelsCreatePodConfigRequest
from ...models import ModelsPodConfigRecord
from ...models import ResponseError


class CreatePodConfig(Operation):
    """Create pod config (CreatePodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE] Required
    scope: social This endpoint create a dedicated servers pod config in a
    namespace.


    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: POST

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) REQUIRED ModelsCreatePodConfigRequest in body

        namespace: (namespace) REQUIRED str in path

        name: (name) REQUIRED str in path

    Responses:
        201: Created - ModelsPodConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (pod config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelsCreatePodConfigRequest                                                             # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    name: str                                                                                      # REQUIRED in [path]

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

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "namespace",
            "name",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "name"):
            result["name"] = self.name
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "name") or self.name is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsCreatePodConfigRequest) -> CreatePodConfig:
        self.body = value
        return self

    def with_namespace(self, value: str) -> CreatePodConfig:
        self.namespace = value
        return self

    def with_name(self, value: str) -> CreatePodConfig:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsCreatePodConfigRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsPodConfigRecord], Union[None, ResponseError]]:
        """Parse the given response.

        201: Created - ModelsPodConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (pod config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 201:
            return ModelsPodConfigRecord.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 409:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelsCreatePodConfigRequest,
        namespace: str,
        name: str,
    ) -> CreatePodConfig:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreatePodConfig:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsCreatePodConfigRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelsCreatePodConfigRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "name": "name",
        }

    # endregion static methods
