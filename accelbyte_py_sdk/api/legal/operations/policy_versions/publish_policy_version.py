# justice-legal-service (1.15.0)

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


class PublishPolicyVersion(Operation):
    """Manually Publish a Version from Country-Specific Policy (publishPolicyVersion)

    Manually publish a version of a particular country-specific policy.<br>Other
    detail info: <ul><li><i>Required permission</i>:
    resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)</li></ul>


    Properties:
        url: /agreement/admin/policies/versions/{policyVersionId}/latest

        method: PATCH

        tags: ["Policy Versions"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        policy_version_id: (policyVersionId) REQUIRED str in path

        should_notify: (shouldNotify) OPTIONAL bool in query

    Responses:
        200: OK - (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)
    """

    # region fields

    _url: str = "/agreement/admin/policies/versions/{policyVersionId}/latest"
    _method: str = "PATCH"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    policy_version_id: str                                                                         # REQUIRED in [path]
    should_notify: bool                                                                            # OPTIONAL in [query]

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
            "policy_version_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "policy_version_id"):
            result["policyVersionId"] = self.policy_version_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "should_notify"):
            result["shouldNotify"] = self.should_notify
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "policy_version_id") or self.policy_version_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_policy_version_id(self, value: str) -> PublishPolicyVersion:
        self.policy_version_id = value
        return self

    def with_should_notify(self, value: bool) -> PublishPolicyVersion:
        self.should_notify = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "policy_version_id") and self.policy_version_id:
            result["policyVersionId"] = str(self.policy_version_id)
        elif include_empty:
            result["policyVersionId"] = str()
        if hasattr(self, "should_notify") and self.should_notify:
            result["shouldNotify"] = bool(self.should_notify)
        elif include_empty:
            result["shouldNotify"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - (successful operation)

        400: Bad Request - ErrorEntity (40033: errors.net.accelbyte.platform.legal.invalid_policy_version)
        """
        if code == 200:
            return HttpResponse.create(code, "OK"), None
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
        policy_version_id: str,
        should_notify: Optional[bool] = None,
    ) -> PublishPolicyVersion:
        instance = cls()
        instance.policy_version_id = policy_version_id
        if should_notify is not None:
            instance.should_notify = should_notify
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublishPolicyVersion:
        instance = cls()
        if "policyVersionId" in dict_ and dict_["policyVersionId"] is not None:
            instance.policy_version_id = str(dict_["policyVersionId"])
        elif include_empty:
            instance.policy_version_id = str()
        if "shouldNotify" in dict_ and dict_["shouldNotify"] is not None:
            instance.should_notify = bool(dict_["shouldNotify"])
        elif include_empty:
            instance.should_notify = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "policyVersionId": "policy_version_id",
            "shouldNotify": "should_notify",
        }

    # endregion static methods
