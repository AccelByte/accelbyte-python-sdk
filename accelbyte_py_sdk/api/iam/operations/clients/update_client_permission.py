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

# AccelByte Cloud Iam Service (5.20.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import AccountcommonClientPermissions


class UpdateClientPermission(Operation):
    """Update Client Permissions (UpdateClientPermission)

    ## The endpoint is going to be deprecated




    Required permission 'CLIENT:ADMIN [UPDATE]'
    Endpoint migration guide




      * Substitute endpoint: iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [PUT]

    Required Permission(s):
        - CLIENT:ADMIN [UPDATE]

    Properties:
        url: /iam/clients/{clientId}/clientpermissions

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonClientPermissions in body

        client_id: (clientId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        404: Not Found - (Data not found)
    """

    # region fields

    _url: str = "/iam/clients/{clientId}/clientpermissions"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: AccountcommonClientPermissions  # REQUIRED in [body]
    client_id: str  # REQUIRED in [path]

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
        if hasattr(self, "client_id"):
            result["clientId"] = self.client_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: AccountcommonClientPermissions
    ) -> UpdateClientPermission:
        self.body = value
        return self

    def with_client_id(self, value: str) -> UpdateClientPermission:
        self.client_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = AccountcommonClientPermissions()
        if hasattr(self, "client_id") and self.client_id:
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        404: Not Found - (Data not found)

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
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: AccountcommonClientPermissions,
        client_id: str,
    ) -> UpdateClientPermission:
        instance = cls()
        instance.body = body
        instance.client_id = client_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdateClientPermission:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = AccountcommonClientPermissions.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = AccountcommonClientPermissions()
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "clientId": "client_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "clientId": True,
        }

    # endregion static methods
