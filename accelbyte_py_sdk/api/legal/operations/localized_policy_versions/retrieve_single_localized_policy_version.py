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
from ...models import UpdateLocalizedPolicyVersionResponse


class RetrieveSingleLocalizedPolicyVersion(Operation):
    """Retrieve a Localized Version from Country-Specific Policy (retrieveSingleLocalizedPolicyVersion)

    Retrieve a version of a particular country-specific policy.<br>Other detail
    info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL",
    action=2 (READ)</li></ul>


    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        200: OK - UpdateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (2912: errors.net.accelbyte.platform.legal.invalid_policy_version)
    """

    # region fields

    _url: str = "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    localized_policy_version_id: str                                                               # REQUIRED in [path]

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
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "localized_policy_version_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "localized_policy_version_id"):
            result["localizedPolicyVersionId"] = self.localized_policy_version_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "localized_policy_version_id") or self.localized_policy_version_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_localized_policy_version_id(self, value: str) -> RetrieveSingleLocalizedPolicyVersion:
        self.localized_policy_version_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "localized_policy_version_id") and self.localized_policy_version_id:
            result["localizedPolicyVersionId"] = str(self.localized_policy_version_id)
        elif include_empty:
            result["localizedPolicyVersionId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, UpdateLocalizedPolicyVersionResponse], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - UpdateLocalizedPolicyVersionResponse (successful operation)

        400: Bad Request - ErrorEntity (2912: errors.net.accelbyte.platform.legal.invalid_policy_version)
        """
        if code == 200:
            return UpdateLocalizedPolicyVersionResponse.create_from_dict(content), None
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
        localized_policy_version_id: str,
    ) -> RetrieveSingleLocalizedPolicyVersion:
        instance = cls()
        instance.localized_policy_version_id = localized_policy_version_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RetrieveSingleLocalizedPolicyVersion:
        instance = cls()
        if "localizedPolicyVersionId" in dict_ and dict_["localizedPolicyVersionId"] is not None:
            instance.localized_policy_version_id = str(dict_["localizedPolicyVersionId"])
        elif include_empty:
            instance.localized_policy_version_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "localizedPolicyVersionId": "localized_policy_version_id",
        }

    # endregion static methods
