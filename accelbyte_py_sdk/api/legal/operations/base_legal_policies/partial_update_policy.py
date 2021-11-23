# justice-legal-service (1.14.0)

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
from ...models import UpdateBasePolicyRequest
from ...models import UpdateBasePolicyResponse


class PartialUpdatePolicy(Operation):
    """Update Base Legal Policy (partialUpdatePolicy)

    Update an existing base policy.<br>Other detail info: <ul><li><i>Required
    permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=4
    (UPDATE)</li></ul>


    Properties:
        url: /agreement/admin/base-policies/{basePolicyId}

        method: PATCH

        tags: ["Base Legal Policies"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL UpdateBasePolicyRequest in body

        base_policy_id: (basePolicyId) REQUIRED str in path

    Responses:
        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
    """

    # region fields

    _url: str = "/agreement/admin/base-policies/{basePolicyId}"
    _method: str = "PATCH"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: UpdateBasePolicyRequest                                                                  # OPTIONAL in [body]
    base_policy_id: str                                                                            # REQUIRED in [path]

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
            url = url.replace(f"{{{k}}}", str(v))
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "base_policy_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "base_policy_id"):
            result["basePolicyId"] = self.base_policy_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "base_policy_id") or self.base_policy_id is None:
            return False
        return True

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
            result["basePolicyId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, UpdateBasePolicyResponse], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - UpdateBasePolicyResponse (successful operation)

        400: Bad Request - ErrorEntity (40032: errors.net.accelbyte.platform.legal.invalid_base_policy)
        """
        if code == 200:
            return UpdateBasePolicyResponse.create_from_dict(content), None
        if code == 400:
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
        base_policy_id: str,
        body: Optional[UpdateBasePolicyRequest] = None,
    ) -> PartialUpdatePolicy:
        instance = cls()
        instance.base_policy_id = base_policy_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PartialUpdatePolicy:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = UpdateBasePolicyRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = UpdateBasePolicyRequest()
        if "basePolicyId" in dict_ and dict_["basePolicyId"] is not None:
            instance.base_policy_id = str(dict_["basePolicyId"])
        elif include_empty:
            instance.base_policy_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "basePolicyId": "base_policy_id",
        }

    # endregion static methods