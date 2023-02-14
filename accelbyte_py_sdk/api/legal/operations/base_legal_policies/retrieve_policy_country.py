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

# AccelByte Cloud Legal Service (1.26.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import RetrievePolicyResponse


class RetrievePolicyCountry(Operation):
    """Retrieve a Base Legal Policy based on a Particular Country (retrievePolicyCountry)

    Retrieve a Base Legal Policy based on a Particular Country.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [READ]

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        base_policy_id: (basePolicyId) REQUIRED str in path

        country_code: (countryCode) REQUIRED str in path

    Responses:
        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)
    """

    # region fields

    _url: str = "/agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    base_policy_id: str  # REQUIRED in [path]
    country_code: str  # REQUIRED in [path]

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
        if hasattr(self, "base_policy_id"):
            result["basePolicyId"] = self.base_policy_id
        if hasattr(self, "country_code"):
            result["countryCode"] = self.country_code
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_base_policy_id(self, value: str) -> RetrievePolicyCountry:
        self.base_policy_id = value
        return self

    def with_country_code(self, value: str) -> RetrievePolicyCountry:
        self.country_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "base_policy_id") and self.base_policy_id:
            result["basePolicyId"] = str(self.base_policy_id)
        elif include_empty:
            result["basePolicyId"] = ""
        if hasattr(self, "country_code") and self.country_code:
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, RetrievePolicyResponse], Union[None, ErrorEntity, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - RetrievePolicyResponse (successful operation)

        404: Not Found - ErrorEntity (40041: errors.net.accelbyte.platform.legal.policy_not_found)

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
            return RetrievePolicyResponse.create_from_dict(content), None
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
        base_policy_id: str,
        country_code: str,
    ) -> RetrievePolicyCountry:
        instance = cls()
        instance.base_policy_id = base_policy_id
        instance.country_code = country_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrievePolicyCountry:
        instance = cls()
        if "basePolicyId" in dict_ and dict_["basePolicyId"] is not None:
            instance.base_policy_id = str(dict_["basePolicyId"])
        elif include_empty:
            instance.base_policy_id = ""
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "basePolicyId": "base_policy_id",
            "countryCode": "country_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "basePolicyId": True,
            "countryCode": True,
        }

    # endregion static methods
