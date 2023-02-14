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
from ...models import PaymentTaxConfigEdit
from ...models import PaymentTaxConfigInfo
from ...models import ValidationErrorEntity


class UpdatePaymentTaxConfig(Operation):
    """Update payment global tax config (updatePaymentTaxConfig)

    Update payment tax config.



         Request Body Parameters:


         Parameter                | Type    | Required | Description
        --------------------------|---------|----------|---------------------------------------------------------------------
        taxJarEnabled             | Boolean | false
        taxJarApiToken            | String  | false    | required, when taxJarEnabled is true and there is no existing token
        sandboxTaxJarApiToken     | String  | false    | optional
        taxJarProductCodesMapping | Map     | No       | key is item type(APP                                                |COINS |INGAMEITEM |BUNDLE |CODE |SUBSCRIPTION) and value is product tax code: https://developers.taxjar.com/api/reference/?ruby#get-list-tax-categories



    Other detail info:
      * Required permission : resource="ADMIN:PAYMENT:CONFIG", action=4 (UPDATE)
      *  Returns : payment global tax config

    Required Permission(s):
        - ADMIN:PAYMENT:CONFIG [UPDATE]

    Properties:
        url: /platform/admin/payment/config/tax

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentTaxConfigEdit in body

    Responses:
        200: OK - PaymentTaxConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/admin/payment/config/tax"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: PaymentTaxConfigEdit  # OPTIONAL in [body]

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
            "body": self.get_body_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: PaymentTaxConfigEdit) -> UpdatePaymentTaxConfig:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = PaymentTaxConfigEdit()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, PaymentTaxConfigInfo],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - PaymentTaxConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

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
            return PaymentTaxConfigInfo.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: Optional[PaymentTaxConfigEdit] = None,
    ) -> UpdatePaymentTaxConfig:
        instance = cls()
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdatePaymentTaxConfig:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = PaymentTaxConfigEdit.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = PaymentTaxConfigEdit()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
        }

    # endregion static methods
