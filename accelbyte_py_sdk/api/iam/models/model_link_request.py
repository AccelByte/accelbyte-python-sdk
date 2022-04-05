# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.6.0)

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

from ....core import Model

from ..models.rest_error_response import RestErrorResponse


class ModelLinkRequest(Model):
    """Model link request (model.LinkRequest)

    Properties:
        client_id: (client_id) REQUIRED str

        namespace: (namespace) REQUIRED str

        operation_name: (operation_name) REQUIRED str

        payload: (payload) REQUIRED Dict[str, Any]

        redirect_uri: (redirect_uri) REQUIRED str

        request_id: (request_id) REQUIRED str

        status: (status) REQUIRED str

        error: (error) OPTIONAL RestErrorResponse

        expiration: (expiration) OPTIONAL int
    """

    # region fields

    client_id: str                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    operation_name: str                                                                            # REQUIRED
    payload: Dict[str, Any]                                                                        # REQUIRED
    redirect_uri: str                                                                              # REQUIRED
    request_id: str                                                                                # REQUIRED
    status: str                                                                                    # REQUIRED
    error: RestErrorResponse                                                                       # OPTIONAL
    expiration: int                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ModelLinkRequest:
        self.client_id = value
        return self

    def with_namespace(self, value: str) -> ModelLinkRequest:
        self.namespace = value
        return self

    def with_operation_name(self, value: str) -> ModelLinkRequest:
        self.operation_name = value
        return self

    def with_payload(self, value: Dict[str, Any]) -> ModelLinkRequest:
        self.payload = value
        return self

    def with_redirect_uri(self, value: str) -> ModelLinkRequest:
        self.redirect_uri = value
        return self

    def with_request_id(self, value: str) -> ModelLinkRequest:
        self.request_id = value
        return self

    def with_status(self, value: str) -> ModelLinkRequest:
        self.status = value
        return self

    def with_error(self, value: RestErrorResponse) -> ModelLinkRequest:
        self.error = value
        return self

    def with_expiration(self, value: int) -> ModelLinkRequest:
        self.expiration = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "operation_name"):
            result["operation_name"] = str(self.operation_name)
        elif include_empty:
            result["operation_name"] = str()
        if hasattr(self, "payload"):
            result["payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["payload"] = {}
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = str()
        if hasattr(self, "request_id"):
            result["request_id"] = str(self.request_id)
        elif include_empty:
            result["request_id"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "error"):
            result["error"] = self.error.to_dict(include_empty=include_empty)
        elif include_empty:
            result["error"] = RestErrorResponse()
        if hasattr(self, "expiration"):
            result["expiration"] = int(self.expiration)
        elif include_empty:
            result["expiration"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        namespace: str,
        operation_name: str,
        payload: Dict[str, Any],
        redirect_uri: str,
        request_id: str,
        status: str,
        error: Optional[RestErrorResponse] = None,
        expiration: Optional[int] = None,
    ) -> ModelLinkRequest:
        instance = cls()
        instance.client_id = client_id
        instance.namespace = namespace
        instance.operation_name = operation_name
        instance.payload = payload
        instance.redirect_uri = redirect_uri
        instance.request_id = request_id
        instance.status = status
        if error is not None:
            instance.error = error
        if expiration is not None:
            instance.expiration = expiration
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelLinkRequest:
        instance = cls()
        if not dict_:
            return instance
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "operation_name" in dict_ and dict_["operation_name"] is not None:
            instance.operation_name = str(dict_["operation_name"])
        elif include_empty:
            instance.operation_name = str()
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["payload"].items()}
        elif include_empty:
            instance.payload = {}
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "request_id" in dict_ and dict_["request_id"] is not None:
            instance.request_id = str(dict_["request_id"])
        elif include_empty:
            instance.request_id = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = RestErrorResponse.create_from_dict(dict_["error"], include_empty=include_empty)
        elif include_empty:
            instance.error = RestErrorResponse()
        if "expiration" in dict_ and dict_["expiration"] is not None:
            instance.expiration = int(dict_["expiration"])
        elif include_empty:
            instance.expiration = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelLinkRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelLinkRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelLinkRequest, List[ModelLinkRequest], Dict[Any, ModelLinkRequest]]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "client_id": "client_id",
            "namespace": "namespace",
            "operation_name": "operation_name",
            "payload": "payload",
            "redirect_uri": "redirect_uri",
            "request_id": "request_id",
            "status": "status",
            "error": "error",
            "expiration": "expiration",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "client_id": True,
            "namespace": True,
            "operation_name": True,
            "payload": True,
            "redirect_uri": True,
            "request_id": True,
            "status": True,
            "error": False,
            "expiration": False,
        }

    # endregion static methods
