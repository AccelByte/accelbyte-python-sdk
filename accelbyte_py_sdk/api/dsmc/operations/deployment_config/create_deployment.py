# Auto-generated at 2021-10-21T08:52:24.329626+08:00
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

from ...models import ModelsCreateDeploymentRequest
from ...models import ModelsDeploymentWithOverride
from ...models import ResponseError


class CreateDeployment(Operation):
    """Create deployment (CreateDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE] Required
    scope: social This endpoint create a dedicated servers deployment in a
    namespace.


    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) REQUIRED ModelsCreateDeploymentRequest in body

        namespace: (namespace) REQUIRED str in path

        deployment: (deployment) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (deployment created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (deployment already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelsCreateDeploymentRequest                                                            # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    deployment: str                                                                                # REQUIRED in [path]

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
            "deployment",
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
        if hasattr(self, "deployment"):
            result["deployment"] = self.deployment
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "deployment") or self.deployment is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsCreateDeploymentRequest) -> CreateDeployment:
        self.body = value
        return self

    def with_namespace(self, value: str) -> CreateDeployment:
        self.namespace = value
        return self

    def with_deployment(self, value: str) -> CreateDeployment:
        self.deployment = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsCreateDeploymentRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "deployment") and self.deployment:
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsDeploymentWithOverride], Union[None, ResponseError]]:
        """Parse the given response.

        201: Created - ModelsDeploymentWithOverride (deployment created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (deployment already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 201:
            return ModelsDeploymentWithOverride.create_from_dict(content), None
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
        body: ModelsCreateDeploymentRequest,
        namespace: str,
        deployment: str,
    ) -> CreateDeployment:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.deployment = deployment
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreateDeployment:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsCreateDeploymentRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelsCreateDeploymentRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "deployment": "deployment",
        }

    # endregion static methods
