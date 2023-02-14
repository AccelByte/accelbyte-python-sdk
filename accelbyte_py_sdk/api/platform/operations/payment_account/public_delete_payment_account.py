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
from .....core import StrEnum


class TypeEnum(StrEnum):
    CARD = "card"
    PAYPAL = "paypal"


class PublicDeletePaymentAccount(Operation):
    """Delete payment account (publicDeletePaymentAccount)

    Delete payment account.
    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:PAYMENT:ACCOUNT", action=8 (DELETE)
      *  Returns :

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:PAYMENT:ACCOUNT [DELETE]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id}

        method: DELETE

        tags: ["PaymentAccount"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        type_: (type) REQUIRED Union[str, TypeEnum] in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete a payment account successfully)
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id}"
    _method: str = "DELETE"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    id_: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    type_: Union[str, TypeEnum]  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]

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
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "id_"):
            result["id"] = self.id_
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "type_"):
            result["type"] = self.type_
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_id_(self, value: str) -> PublicDeletePaymentAccount:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> PublicDeletePaymentAccount:
        self.namespace = value
        return self

    def with_type_(self, value: Union[str, TypeEnum]) -> PublicDeletePaymentAccount:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> PublicDeletePaymentAccount:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse]]:
        """Parse the given response.

        204: No Content - (delete a payment account successfully)

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

        if code == 204:
            return None, None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        type_: Union[str, TypeEnum],
        user_id: str,
    ) -> PublicDeletePaymentAccount:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.type_ = type_
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicDeletePaymentAccount:
        instance = cls()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "type": "type_",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "namespace": True,
            "type": True,
            "userId": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["card", "paypal"],  # in path
        }

    # endregion static methods
