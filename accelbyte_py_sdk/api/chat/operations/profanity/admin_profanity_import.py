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

# AccelByte Gaming Services Chat Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ModelsDictionaryImportResult
from ...models import RestapiErrorResponseBody


class ActionEnum(StrEnum):
    FULLREPLACE = "FULLREPLACE"
    LEAVEOUT = "LEAVEOUT"
    REPLACE = "REPLACE"


class AdminProfanityImport(Operation):
    """admin import profanity words (adminProfanityImport)

    Import profanity words

    Properties:
        url: /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import

        method: POST

        tags: ["profanity"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

        namespace: (namespace) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        show_result: (showResult) OPTIONAL bool in query

    Responses:
        200: OK - ModelsDictionaryImportResult (returned when showResult=true)

        204: No Content - (No Content returned when showResult=false or not defined)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """

    # region fields

    _url: str = "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import"
    _method: str = "POST"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    file: Any  # REQUIRED in [form_data]
    namespace: str  # REQUIRED in [path]
    action: Union[str, ActionEnum]  # OPTIONAL in [query]
    show_result: bool  # OPTIONAL in [query]

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
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "file"):
            result[("file", "file")] = self.file
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "action"):
            result["action"] = self.action
        if hasattr(self, "show_result"):
            result["showResult"] = self.show_result
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_file(self, value: Any) -> AdminProfanityImport:
        self.file = value
        return self

    def with_namespace(self, value: str) -> AdminProfanityImport:
        self.namespace = value
        return self

    def with_action(self, value: Union[str, ActionEnum]) -> AdminProfanityImport:
        self.action = value
        return self

    def with_show_result(self, value: bool) -> AdminProfanityImport:
        self.show_result = value
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
            result["namespace"] = ""
        if hasattr(self, "action") and self.action:
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = Union[str, ActionEnum]()
        if hasattr(self, "show_result") and self.show_result:
            result["showResult"] = bool(self.show_result)
        elif include_empty:
            result["showResult"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsDictionaryImportResult],
        Union[None, HttpResponse, RestapiErrorResponseBody],
    ]:
        """Parse the given response.

        200: OK - ModelsDictionaryImportResult (returned when showResult=true)

        204: No Content - (No Content returned when showResult=false or not defined)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)

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
            return ModelsDictionaryImportResult.create_from_dict(content), None
        if code == 204:
            return None, None
        if code == 400:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 500:
            return None, RestapiErrorResponseBody.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        file: Any,
        namespace: str,
        action: Optional[Union[str, ActionEnum]] = None,
        show_result: Optional[bool] = None,
        **kwargs,
    ) -> AdminProfanityImport:
        instance = cls()
        instance.file = file
        instance.namespace = namespace
        if action is not None:
            instance.action = action
        if show_result is not None:
            instance.show_result = show_result
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminProfanityImport:
        instance = cls()
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = Union[str, ActionEnum]()
        if "showResult" in dict_ and dict_["showResult"] is not None:
            instance.show_result = bool(dict_["showResult"])
        elif include_empty:
            instance.show_result = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "file": "file",
            "namespace": "namespace",
            "action": "action",
            "showResult": "show_result",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "file": True,
            "namespace": True,
            "action": False,
            "showResult": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "action": ["FULLREPLACE", "LEAVEOUT", "REPLACE"],  # in query
        }

    # endregion static methods
