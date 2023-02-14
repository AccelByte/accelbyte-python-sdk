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

# AccelByte Cloud Iam Service (5.27.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelUserInvitationV3
from ...models import RestErrorResponse


class GetAdminInvitationV3(Operation):
    """Get User Invitation (GetAdminInvitationV3)

    Endpoint to validate user invitation. When not found, it could also means the invitation has expired.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserInvitationV3 (OK)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    invitation_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]

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
        if hasattr(self, "invitation_id"):
            result["invitationId"] = self.invitation_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_invitation_id(self, value: str) -> GetAdminInvitationV3:
        self.invitation_id = value
        return self

    def with_namespace(self, value: str) -> GetAdminInvitationV3:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "invitation_id") and self.invitation_id:
            result["invitationId"] = str(self.invitation_id)
        elif include_empty:
            result["invitationId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelUserInvitationV3], Union[None, HttpResponse, RestErrorResponse]
    ]:
        """Parse the given response.

        200: OK - ModelUserInvitationV3 (OK)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

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
            return ModelUserInvitationV3.create_from_dict(content), None
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        invitation_id: str,
        namespace: str,
    ) -> GetAdminInvitationV3:
        instance = cls()
        instance.invitation_id = invitation_id
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetAdminInvitationV3:
        instance = cls()
        if "invitationId" in dict_ and dict_["invitationId"] is not None:
            instance.invitation_id = str(dict_["invitationId"])
        elif include_empty:
            instance.invitation_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "invitationId": "invitation_id",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "invitationId": True,
            "namespace": True,
        }

    # endregion static methods
