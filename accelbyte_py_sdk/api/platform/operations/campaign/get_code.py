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

from ...models import CodeInfo
from ...models import ErrorEntity


class GetCode(Operation):
    """Get code info (getCode)

    Get campaign code, it will check code whether available to redeem if redeemable true.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:CAMPAIGN", action=2 (READ) (READ)
      *  Returns : code info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CAMPAIGN [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/{code}

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        redeemable: (redeemable) OPTIONAL bool in query

    Responses:
        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/codes/{code}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    code: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    redeemable: bool  # OPTIONAL in [query]

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
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "redeemable"):
            result["redeemable"] = self.redeemable
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_code(self, value: str) -> GetCode:
        self.code = value
        return self

    def with_namespace(self, value: str) -> GetCode:
        self.namespace = value
        return self

    def with_redeemable(self, value: bool) -> GetCode:
        self.redeemable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "redeemable") and self.redeemable:
            result["redeemable"] = bool(self.redeemable)
        elif include_empty:
            result["redeemable"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, CodeInfo], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended)

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
            return CodeInfo.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        namespace: str,
        redeemable: Optional[bool] = None,
    ) -> GetCode:
        instance = cls()
        instance.code = code
        instance.namespace = namespace
        if redeemable is not None:
            instance.redeemable = redeemable
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetCode:
        instance = cls()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "redeemable" in dict_ and dict_["redeemable"] is not None:
            instance.redeemable = bool(dict_["redeemable"])
        elif include_empty:
            instance.redeemable = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code": "code",
            "namespace": "namespace",
            "redeemable": "redeemable",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "namespace": True,
            "redeemable": False,
        }

    # endregion static methods
