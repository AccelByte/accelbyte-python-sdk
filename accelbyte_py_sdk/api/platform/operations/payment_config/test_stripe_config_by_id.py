# justice-platform-service (3.34.0)

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

from ...models import ErrorEntity
from ...models import TestResult


class TestStripeConfigById(Operation):
    """Test stripe configuration by id (testStripeConfigById)

    Test stripe configuration in payment merchant config. Other detail info:

      * Required permission : resource="ADMIN:PAYMENT:CONFIG", action=2 (READ)
      *  Returns : test adyen config


    Properties:
        url: /platform/admin/payment/config/merchant/{id}/stripeconfig/test

        method: GET

        tags: ["PaymentConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        id_: (id) REQUIRED str in path

        sandbox: (sandbox) OPTIONAL bool in query

    Responses:
        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
    """

    # region fields

    _url: str = "/platform/admin/payment/config/merchant/{id}/stripeconfig/test"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    id_: str                                                                                       # REQUIRED in [path]
    sandbox: bool                                                                                  # OPTIONAL in [query]

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

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "id_",
        ]

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

    def is_valid(self) -> bool:
        if not hasattr(self, "id_") or self.id_ is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_id_(self, value: str) -> TestStripeConfigById:
        self.id_ = value
        return self

    def with_sandbox(self, value: bool) -> TestStripeConfigById:
        self.sandbox = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "sandbox") and self.sandbox:
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, TestResult], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - TestResult (successful operation)

        404: Not Found - ErrorEntity (33242: Payment merchant config [{id}] does not exist)
        """
        if code == 200:
            return TestResult.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        sandbox: Optional[bool] = None,
    ) -> TestStripeConfigById:
        instance = cls()
        instance.id_ = id_
        if sandbox is not None:
            instance.sandbox = sandbox
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TestStripeConfigById:
        instance = cls()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "sandbox": "sandbox",
        }

    # endregion static methods
