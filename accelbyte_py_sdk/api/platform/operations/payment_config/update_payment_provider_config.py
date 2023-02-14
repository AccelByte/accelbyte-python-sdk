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
from ...models import PaymentProviderConfigEdit
from ...models import PaymentProviderConfigInfo
from ...models import ValidationErrorEntity


class UpdatePaymentProviderConfig(Operation):
    """Update payment provider config (updatePaymentProviderConfig)

    Update payment provider config.



         Request Body Parameters:


         Parameter | Type   | Required | Description
        -----------|--------|----------|-----------------------------------------------------------
        namespace  | String | Yes      | namespace, * indicates all namespace
        region     | String | Yes      | region, * indicates all regions
        aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
        specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



    payment provider applied has priority:

      1. namespace and region match
      2. namespace matches and region is *
      3. region matches and namespace is *
      4. namespace and region are *

    Other detail info:
      * Required permission : resource="ADMIN:PAYMENT:CONFIG", action=4 (UPDATE)
      *  Returns : payment provider config

    Required Permission(s):
        - ADMIN:PAYMENT:CONFIG [UPDATE]

    Properties:
        url: /platform/admin/payment/config/provider/{id}

        method: PUT

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL PaymentProviderConfigEdit in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - PaymentProviderConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)

        409: Conflict - ErrorEntity (33271: Payment provider config for namespace [{namespace}] and region [{region}] already exists)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/admin/payment/config/provider/{id}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: PaymentProviderConfigEdit  # OPTIONAL in [body]
    id_: str  # REQUIRED in [path]

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
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "id_"):
            result["id"] = self.id_
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: PaymentProviderConfigEdit
    ) -> UpdatePaymentProviderConfig:
        self.body = value
        return self

    def with_id_(self, value: str) -> UpdatePaymentProviderConfig:
        self.id_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = PaymentProviderConfigEdit()
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, PaymentProviderConfigInfo],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - PaymentProviderConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (33221: TaxJar api token required)

        404: Not Found - ErrorEntity (33241: Payment provider config [{id}] does not exist)

        409: Conflict - ErrorEntity (33271: Payment provider config for namespace [{namespace}] and region [{region}] already exists)

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
            return PaymentProviderConfigInfo.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
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
        id_: str,
        body: Optional[PaymentProviderConfigEdit] = None,
    ) -> UpdatePaymentProviderConfig:
        instance = cls()
        instance.id_ = id_
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdatePaymentProviderConfig:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = PaymentProviderConfigEdit.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = PaymentProviderConfigEdit()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "id": "id_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "id": True,
        }

    # endregion static methods
