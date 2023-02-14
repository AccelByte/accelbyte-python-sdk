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

from ...models import RetrievePolicyTypeResponse


class RetrieveAllPolicyTypes(Operation):
    """Retrieve All Policy Type (retrieveAllPolicyTypes)

    Retrieve all supported policy types.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [READ]

    Properties:
        url: /agreement/admin/policy-types

        method: GET

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        offset: (offset) OPTIONAL int in query

        limit: (limit) REQUIRED int in query

    Responses:
        200: OK - List[RetrievePolicyTypeResponse] (successful operation)
    """

    # region fields

    _url: str = "/agreement/admin/policy-types"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    offset: int  # OPTIONAL in [query]
    limit: int  # REQUIRED in [query]

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
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_offset(self, value: int) -> RetrieveAllPolicyTypes:
        self.offset = value
        return self

    def with_limit(self, value: int) -> RetrieveAllPolicyTypes:
        self.limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[RetrievePolicyTypeResponse]], Union[None, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - List[RetrievePolicyTypeResponse] (successful operation)

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
            return [
                RetrievePolicyTypeResponse.create_from_dict(i) for i in content
            ], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        limit: int,
        offset: Optional[int] = None,
    ) -> RetrieveAllPolicyTypes:
        instance = cls()
        instance.limit = limit
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveAllPolicyTypes:
        instance = cls()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "offset": "offset",
            "limit": "limit",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "offset": False,
            "limit": True,
        }

    # endregion static methods
