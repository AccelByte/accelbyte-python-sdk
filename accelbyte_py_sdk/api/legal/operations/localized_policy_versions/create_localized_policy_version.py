# justice-legal-service (1.15.0)

# template file: justice_py_sdk_codegen/__main__.py

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

from ...models import CreateLocalizedPolicyVersionRequest
from ...models import CreateLocalizedPolicyVersionResponse
from ...models import ErrorEntity


class CreateLocalizedPolicyVersion(Operation):
    """Create a Localized Version from Country-Specific Policy (createLocalizedPolicyVersion)

    Create a version of a particular country-specific policy.<br>Other detail
    info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL",
    action=1 (CREATE)</li></ul>


    Properties:
        url: /agreement/admin/localized-policy-versions/versions/{policyVersionId}

        method: POST

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        body: (body) OPTIONAL CreateLocalizedPolicyVersionRequest in body

        policy_version_id: (policyVersionId) REQUIRED str in path

    Responses:
        201: Created - CreateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)

        409: Conflict - ErrorEntity (40044: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
    """

    # region fields

    _url: str = "/agreement/admin/localized-policy-versions/versions/{policyVersionId}"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: CreateLocalizedPolicyVersionRequest                                                      # OPTIONAL in [body]
    policy_version_id: str                                                                         # REQUIRED in [path]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "policy_version_id",
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
        if hasattr(self, "policy_version_id"):
            result["policyVersionId"] = self.policy_version_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "policy_version_id") or self.policy_version_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: CreateLocalizedPolicyVersionRequest) -> CreateLocalizedPolicyVersion:
        self.body = value
        return self

    def with_policy_version_id(self, value: str) -> CreateLocalizedPolicyVersion:
        self.policy_version_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = CreateLocalizedPolicyVersionRequest()
        if hasattr(self, "policy_version_id") and self.policy_version_id:
            result["policyVersionId"] = str(self.policy_version_id)
        elif include_empty:
            result["policyVersionId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, CreateLocalizedPolicyVersionResponse], Union[None, ErrorEntity]]:
        """Parse the given response.

        201: Created - CreateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)

        409: Conflict - ErrorEntity (40044: errors.net.accelbyte.platform.legal.localized_policy_version_already_exist)
        """
        if code == 201:
            return CreateLocalizedPolicyVersionResponse.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
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
        policy_version_id: str,
        body: Optional[CreateLocalizedPolicyVersionRequest] = None,
    ) -> CreateLocalizedPolicyVersion:
        instance = cls()
        instance.policy_version_id = policy_version_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreateLocalizedPolicyVersion:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = CreateLocalizedPolicyVersionRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = CreateLocalizedPolicyVersionRequest()
        if "policyVersionId" in dict_ and dict_["policyVersionId"] is not None:
            instance.policy_version_id = str(dict_["policyVersionId"])
        elif include_empty:
            instance.policy_version_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "policyVersionId": "policy_version_id",
        }

    # endregion static methods
