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

# AccelByte Gaming Services Iam Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ClientmodelListUpsertModulesRequest
from ...models import RestErrorResponse


class AdminUpdateAvailablePermissionsByModule(Operation):
    """Update or create Client permissions module (AdminUpdateAvailablePermissionsByModule)

    Update Client available permissions, if module or group not exists, it will auto create.

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: PUT

        tags: ["Clients Config V3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelListUpsertModulesRequest in body

        force_delete: (forceDelete) OPTIONAL bool in query

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """

    # region fields

    _url: str = "/iam/v3/admin/clientConfig/permissions"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ClientmodelListUpsertModulesRequest  # REQUIRED in [body]
    force_delete: bool  # OPTIONAL in [query]

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
            "query": self.get_query_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "force_delete"):
            result["forceDelete"] = self.force_delete
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ClientmodelListUpsertModulesRequest
    ) -> AdminUpdateAvailablePermissionsByModule:
        self.body = value
        return self

    def with_force_delete(self, value: bool) -> AdminUpdateAvailablePermissionsByModule:
        self.force_delete = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ClientmodelListUpsertModulesRequest()
        if hasattr(self, "force_delete") and self.force_delete:
            result["forceDelete"] = bool(self.force_delete)
        elif include_empty:
            result["forceDelete"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

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

        if code == 204:
            return None, None
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ClientmodelListUpsertModulesRequest,
        force_delete: Optional[bool] = None,
        **kwargs,
    ) -> AdminUpdateAvailablePermissionsByModule:
        instance = cls()
        instance.body = body
        if force_delete is not None:
            instance.force_delete = force_delete
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminUpdateAvailablePermissionsByModule:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ClientmodelListUpsertModulesRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ClientmodelListUpsertModulesRequest()
        if "forceDelete" in dict_ and dict_["forceDelete"] is not None:
            instance.force_delete = bool(dict_["forceDelete"])
        elif include_empty:
            instance.force_delete = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "forceDelete": "force_delete",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "forceDelete": False,
        }

    # endregion static methods
