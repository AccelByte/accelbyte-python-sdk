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

# AccelByte Cloud Iam Service (5.27.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelInputValidationsPublicResponse
from ...models import RestErrorResponse


class PublicGetInputValidations(Operation):
    """Public Get Input Validations (PublicGetInputValidations)

    No role required




    This endpoint is to get list of input validation configuration.




    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.

    Properties:
        url: /iam/v3/public/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        language_code: (languageCode) OPTIONAL str in query

    Responses:
        200: OK - ModelInputValidationsPublicResponse (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/public/inputValidations"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    default_on_empty: bool  # OPTIONAL in [query]
    language_code: str  # OPTIONAL in [query]

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
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "default_on_empty"):
            result["defaultOnEmpty"] = self.default_on_empty
        if hasattr(self, "language_code"):
            result["languageCode"] = self.language_code
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_default_on_empty(self, value: bool) -> PublicGetInputValidations:
        self.default_on_empty = value
        return self

    def with_language_code(self, value: str) -> PublicGetInputValidations:
        self.language_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "default_on_empty") and self.default_on_empty:
            result["defaultOnEmpty"] = bool(self.default_on_empty)
        elif include_empty:
            result["defaultOnEmpty"] = False
        if hasattr(self, "language_code") and self.language_code:
            result["languageCode"] = str(self.language_code)
        elif include_empty:
            result["languageCode"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelInputValidationsPublicResponse],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelInputValidationsPublicResponse (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

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
            return ModelInputValidationsPublicResponse.create_from_dict(content), None
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        default_on_empty: Optional[bool] = None,
        language_code: Optional[str] = None,
    ) -> PublicGetInputValidations:
        instance = cls()
        if default_on_empty is not None:
            instance.default_on_empty = default_on_empty
        if language_code is not None:
            instance.language_code = language_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicGetInputValidations:
        instance = cls()
        if "defaultOnEmpty" in dict_ and dict_["defaultOnEmpty"] is not None:
            instance.default_on_empty = bool(dict_["defaultOnEmpty"])
        elif include_empty:
            instance.default_on_empty = False
        if "languageCode" in dict_ and dict_["languageCode"] is not None:
            instance.language_code = str(dict_["languageCode"])
        elif include_empty:
            instance.language_code = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "defaultOnEmpty": "default_on_empty",
            "languageCode": "language_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "defaultOnEmpty": False,
            "languageCode": False,
        }

    # endregion static methods
