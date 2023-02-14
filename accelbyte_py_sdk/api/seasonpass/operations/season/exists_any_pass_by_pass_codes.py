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

# AccelByte Cloud Seasonpass Service (1.18.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import Ownership


class ExistsAnyPassByPassCodes(Operation):
    """Get ownership for any pass codes (existsAnyPassByPassCodes)

    [SERVICE COMMUNICATION ONLY]This API is used to get ownership for any pass codes, season only located in non-publisher namespace.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS", action=2 (READ)
      *  Returns : ownership

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS [READ]

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        pass_codes: (passCodes) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """

    # region fields

    _url: str = "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    pass_codes: List[str]  # OPTIONAL in [query]

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
        if hasattr(self, "pass_codes"):
            result["passCodes"] = self.pass_codes
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ExistsAnyPassByPassCodes:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ExistsAnyPassByPassCodes:
        self.user_id = value
        return self

    def with_pass_codes(self, value: List[str]) -> ExistsAnyPassByPassCodes:
        self.pass_codes = value
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
        if hasattr(self, "pass_codes") and self.pass_codes:
            result["passCodes"] = [str(i0) for i0 in self.pass_codes]
        elif include_empty:
            result["passCodes"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, Ownership], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - Ownership (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

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
            return Ownership.create_from_dict(content), None
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
        user_id: str,
        pass_codes: Optional[List[str]] = None,
    ) -> ExistsAnyPassByPassCodes:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if pass_codes is not None:
            instance.pass_codes = pass_codes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ExistsAnyPassByPassCodes:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "passCodes" in dict_ and dict_["passCodes"] is not None:
            instance.pass_codes = [str(i0) for i0 in dict_["passCodes"]]
        elif include_empty:
            instance.pass_codes = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "passCodes": "pass_codes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "passCodes": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "passCodes": "multi",  # in query
        }

    # endregion static methods
