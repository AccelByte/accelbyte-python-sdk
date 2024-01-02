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

# AccelByte Gaming Services Group Service (2.18.3)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsRemoveRoleFromMemberRequestV1
from ...models import ResponseErrorResponse


class DeleteMemberRolePublicV2(Operation):
    """Remove role from group member (deleteMemberRolePublicV2)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]"




    This endpoint is used to remove role from group member




    Action Code: 73204

    Properties:
        url: /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members

        method: DELETE

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRemoveRoleFromMemberRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        422: Unprocessable Entity - ResponseErrorResponse (73444: member must have role)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members"
    _method: str = "DELETE"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsRemoveRoleFromMemberRequestV1  # REQUIRED in [body]
    group_id: str  # REQUIRED in [path]
    member_role_id: str  # REQUIRED in [path]
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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "group_id"):
            result["groupId"] = self.group_id
        if hasattr(self, "member_role_id"):
            result["memberRoleId"] = self.member_role_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelsRemoveRoleFromMemberRequestV1
    ) -> DeleteMemberRolePublicV2:
        self.body = value
        return self

    def with_group_id(self, value: str) -> DeleteMemberRolePublicV2:
        self.group_id = value
        return self

    def with_member_role_id(self, value: str) -> DeleteMemberRolePublicV2:
        self.member_role_id = value
        return self

    def with_namespace(self, value: str) -> DeleteMemberRolePublicV2:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsRemoveRoleFromMemberRequestV1()
        if hasattr(self, "group_id") and self.group_id:
            result["groupId"] = str(self.group_id)
        elif include_empty:
            result["groupId"] = ""
        if hasattr(self, "member_role_id") and self.member_role_id:
            result["memberRoleId"] = str(self.member_role_id)
        elif include_empty:
            result["memberRoleId"] = ""
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
    ) -> Tuple[None, Union[None, HttpResponse, ResponseErrorResponse]]:
        """Parse the given response.

        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        422: Unprocessable Entity - ResponseErrorResponse (73444: member must have role)

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

        if code == 204:
            return None, None
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 422:
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
        body: ModelsRemoveRoleFromMemberRequestV1,
        group_id: str,
        member_role_id: str,
        namespace: str,
        **kwargs,
    ) -> DeleteMemberRolePublicV2:
        instance = cls()
        instance.body = body
        instance.group_id = group_id
        instance.member_role_id = member_role_id
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DeleteMemberRolePublicV2:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsRemoveRoleFromMemberRequestV1.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsRemoveRoleFromMemberRequestV1()
        if "groupId" in dict_ and dict_["groupId"] is not None:
            instance.group_id = str(dict_["groupId"])
        elif include_empty:
            instance.group_id = ""
        if "memberRoleId" in dict_ and dict_["memberRoleId"] is not None:
            instance.member_role_id = str(dict_["memberRoleId"])
        elif include_empty:
            instance.member_role_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "groupId": "group_id",
            "memberRoleId": "member_role_id",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "groupId": True,
            "memberRoleId": True,
            "namespace": True,
        }

    # endregion static methods
