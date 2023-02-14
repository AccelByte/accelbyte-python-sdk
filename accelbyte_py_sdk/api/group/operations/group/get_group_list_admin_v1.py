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

# AccelByte Cloud Group Service (2.15.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsGetGroupsListResponseV1
from ...models import ResponseErrorResponse


class GetGroupListAdminV1(Operation):
    """get list of groups (getGroupListAdminV1)

    Required Permission: "ADMIN:NAMESPACE:{namespace}:GROUP [READ]"




    Get list of groups. This endpoint will show any types of group




    Action Code: 73301

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:GROUP [READ]

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        configuration_code: (configurationCode) OPTIONAL str in query

        group_name: (groupName) OPTIONAL str in query

        group_region: (groupRegion) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/group/v1/admin/namespaces/{namespace}/groups"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    configuration_code: str  # OPTIONAL in [query]
    group_name: str  # OPTIONAL in [query]
    group_region: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]

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
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "configuration_code"):
            result["configurationCode"] = self.configuration_code
        if hasattr(self, "group_name"):
            result["groupName"] = self.group_name
        if hasattr(self, "group_region"):
            result["groupRegion"] = self.group_region
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetGroupListAdminV1:
        self.namespace = value
        return self

    def with_configuration_code(self, value: str) -> GetGroupListAdminV1:
        self.configuration_code = value
        return self

    def with_group_name(self, value: str) -> GetGroupListAdminV1:
        self.group_name = value
        return self

    def with_group_region(self, value: str) -> GetGroupListAdminV1:
        self.group_region = value
        return self

    def with_limit(self, value: int) -> GetGroupListAdminV1:
        self.limit = value
        return self

    def with_offset(self, value: int) -> GetGroupListAdminV1:
        self.offset = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "configuration_code") and self.configuration_code:
            result["configurationCode"] = str(self.configuration_code)
        elif include_empty:
            result["configurationCode"] = ""
        if hasattr(self, "group_name") and self.group_name:
            result["groupName"] = str(self.group_name)
        elif include_empty:
            result["groupName"] = ""
        if hasattr(self, "group_region") and self.group_region:
            result["groupRegion"] = str(self.group_region)
        elif include_empty:
            result["groupRegion"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsGetGroupsListResponseV1],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelsGetGroupsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

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
            return ModelsGetGroupsListResponseV1.create_from_dict(content), None
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        configuration_code: Optional[str] = None,
        group_name: Optional[str] = None,
        group_region: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
    ) -> GetGroupListAdminV1:
        instance = cls()
        instance.namespace = namespace
        if configuration_code is not None:
            instance.configuration_code = configuration_code
        if group_name is not None:
            instance.group_name = group_name
        if group_region is not None:
            instance.group_region = group_region
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetGroupListAdminV1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "configurationCode" in dict_ and dict_["configurationCode"] is not None:
            instance.configuration_code = str(dict_["configurationCode"])
        elif include_empty:
            instance.configuration_code = ""
        if "groupName" in dict_ and dict_["groupName"] is not None:
            instance.group_name = str(dict_["groupName"])
        elif include_empty:
            instance.group_name = ""
        if "groupRegion" in dict_ and dict_["groupRegion"] is not None:
            instance.group_region = str(dict_["groupRegion"])
        elif include_empty:
            instance.group_region = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "configurationCode": "configuration_code",
            "groupName": "group_name",
            "groupRegion": "group_region",
            "limit": "limit",
            "offset": "offset",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "configurationCode": False,
            "groupName": False,
            "groupRegion": False,
            "limit": False,
            "offset": False,
        }

    # endregion static methods
