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

from ...models import ErrorEntity
from ...models import TestResult


class TestPayPalConfigById(Operation):
    """Test PayPal configuration by id (testPayPalConfigById)

    Test PayPal configuration in payment merchant config. Other detail info:

      * Required permission : resource="ADMIN:PAYMENT:CONFIG", action=2 (READ)
      *  Returns : test result

    Required Permission(s):
        - ADMIN:PAYMENT:CONFIG [READ]

    Properties:
        url: /platform/admin/payment/config/merchant/{id}/paypalconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33045: errors.net.accelbyte.platform.payment.payment_merchant_config_not_found)
    """

    # region fields

    _url: str = "/platform/admin/payment/config/merchant/{id}/paypalconfig/test"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    id_: str  # REQUIRED in [path]
    sandbox: bool  # OPTIONAL in [query]

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
        if hasattr(self, "id_"):
            result["id"] = self.id_
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "sandbox"):
            result["sandbox"] = self.sandbox
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_id_(self, value: str) -> TestPayPalConfigById:
        self.id_ = value
        return self

    def with_sandbox(self, value: bool) -> TestPayPalConfigById:
        self.sandbox = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "sandbox") and self.sandbox:
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, TestResult], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33045: errors.net.accelbyte.platform.payment.payment_merchant_config_not_found)

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
            return TestResult.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        sandbox: Optional[bool] = None,
    ) -> TestPayPalConfigById:
        instance = cls()
        instance.id_ = id_
        if sandbox is not None:
            instance.sandbox = sandbox
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TestPayPalConfigById:
        instance = cls()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "sandbox": "sandbox",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "sandbox": False,
        }

    # endregion static methods
