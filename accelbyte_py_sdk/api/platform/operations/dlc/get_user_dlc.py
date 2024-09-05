# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

# AccelByte Gaming Services Platform Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import UserDLCRecord


class StatusEnum(StrEnum):
    FULFILLED = "FULFILLED"
    REVOKED = "REVOKED"
    REVOKE_FAILED = "REVOKE_FAILED"


class TypeEnum(StrEnum):
    EPICGAMES = "EPICGAMES"
    OCULUS = "OCULUS"
    PSN = "PSN"
    STEAM = "STEAM"
    XBOX = "XBOX"


class GetUserDLC(Operation):
    """Get user dlc records (getUserDLC)

    Get user dlc records.
    Note: includeAllNamespaces means this endpoint will return user dlcs from all namespace, example scenario isadmin may need to check the user dlcs before unlink a 3rd party account, so the user dlcs should be from all namespaces because unlinking is a platform level action
    Other detail info:

      * Returns : user dlc

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/dlc/records

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        include_all_namespaces: (includeAllNamespaces) OPTIONAL bool in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - List[UserDLCRecord] (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/dlc/records"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    include_all_namespaces: bool  # OPTIONAL in [query]
    status: Union[str, StatusEnum]  # OPTIONAL in [query]
    type_: Union[str, TypeEnum]  # OPTIONAL in [query]

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
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "include_all_namespaces"):
            result["includeAllNamespaces"] = self.include_all_namespaces
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "type_"):
            result["type"] = self.type_
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetUserDLC:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> GetUserDLC:
        self.user_id = value
        return self

    def with_include_all_namespaces(self, value: bool) -> GetUserDLC:
        self.include_all_namespaces = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> GetUserDLC:
        self.status = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> GetUserDLC:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "include_all_namespaces") and self.include_all_namespaces:
            result["includeAllNamespaces"] = bool(self.include_all_namespaces)
        elif include_empty:
            result["includeAllNamespaces"] = False
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, List[UserDLCRecord]], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - List[UserDLCRecord] (successful operation)

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
            return [UserDLCRecord.create_from_dict(i) for i in content], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        include_all_namespaces: Optional[bool] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        **kwargs,
    ) -> GetUserDLC:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if include_all_namespaces is not None:
            instance.include_all_namespaces = include_all_namespaces
        if status is not None:
            instance.status = status
        if type_ is not None:
            instance.type_ = type_
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetUserDLC:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if (
            "includeAllNamespaces" in dict_
            and dict_["includeAllNamespaces"] is not None
        ):
            instance.include_all_namespaces = bool(dict_["includeAllNamespaces"])
        elif include_empty:
            instance.include_all_namespaces = False
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "includeAllNamespaces": "include_all_namespaces",
            "status": "status",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "includeAllNamespaces": False,
            "status": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FULFILLED", "REVOKED", "REVOKE_FAILED"],  # in query
            "type": ["EPICGAMES", "OCULUS", "PSN", "STEAM", "XBOX"],  # in query
        }

    # endregion static methods
