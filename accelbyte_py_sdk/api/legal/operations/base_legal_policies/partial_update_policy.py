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
from ...models import UpdateBasePolicyRequest
from ...models import UpdateBasePolicyResponse


class PartialUpdatePolicy(Operation):
    """Update Base Legal Policy (partialUpdatePolicy)

    Update an existing base policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UpdateBasePolicyRequest in body

        base_policy_id: (basePolicyId) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy | 40038: errors.net.accelbyte.platform.legal.invalid_affected_client_id)

        404: Not Found - ErrorEntity (40030: errors.net.accelbyte.platform.legal.policy_type_not_exist)
    """

    # region fields

    _url: str = "/agreement/admin/base-policies/{basePolicyId}"
    _method: str = "PATCH"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: UpdateBasePolicyRequest  # OPTIONAL in [body]
    base_policy_id: str  # REQUIRED in [path]

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
        if hasattr(self, "base_policy_id"):
            result["basePolicyId"] = self.base_policy_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: UpdateBasePolicyRequest) -> PartialUpdatePolicy:
        self.body = value
        return self

    def with_base_policy_id(self, value: str) -> PartialUpdatePolicy:
        self.base_policy_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = UpdateBasePolicyRequest()
        if hasattr(self, "base_policy_id") and self.base_policy_id:
            result["basePolicyId"] = str(self.base_policy_id)
        elif include_empty:
            result["basePolicyId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, UpdateBasePolicyResponse], Union[None, ErrorEntity, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy | 40038: errors.net.accelbyte.platform.legal.invalid_affected_client_id)

        404: Not Found - ErrorEntity (40030: errors.net.accelbyte.platform.legal.policy_type_not_exist)

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
            return UpdateBasePolicyResponse.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
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
        body: Optional[UpdateBasePolicyRequest] = None,
    ) -> PartialUpdatePolicy:
        instance = cls()
        instance.base_policy_id = base_policy_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PartialUpdatePolicy:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = UpdateBasePolicyRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = UpdateBasePolicyRequest()
        if "basePolicyId" in dict_ and dict_["basePolicyId"] is not None:
            instance.base_policy_id = str(dict_["basePolicyId"])
        elif include_empty:
            instance.base_policy_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "basePolicyId": "base_policy_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "basePolicyId": True,
        }

    # endregion static methods
