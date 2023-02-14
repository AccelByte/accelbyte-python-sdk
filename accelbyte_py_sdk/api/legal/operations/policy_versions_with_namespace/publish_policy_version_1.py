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


class PublishPolicyVersion1(Operation):
    """Manually Publish a Version from Country-Specific Policy (publishPolicyVersion_1)

    Manually publish a version of a particular country-specific policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [UPDATE]

    Properties:
        url: /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest

        method: PATCH

        tags: ["Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        policy_version_id: (policyVersionId) REQUIRED str in path

        should_notify: (shouldNotify) OPTIONAL bool in query

    Responses:
        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40046: errors.net.accelbyte.platform.legal.default_selection_not_provided | 40030: errors.net.accelbyte.platform.legal.localized_policy_version_not_provided)

        409: Conflict - ErrorEntity (40039: errors.net.accelbyte.platform.legal.localized_policy_version_already_latest | 40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_publish)
    """

    # region fields

    _url: str = "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest"
    _method: str = "PATCH"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    policy_version_id: str  # REQUIRED in [path]
    should_notify: bool  # OPTIONAL in [query]

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

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublishPolicyVersion1:
        self.namespace = value
        return self

    def with_policy_version_id(self, value: str) -> PublishPolicyVersion1:
        self.policy_version_id = value
        return self

    def with_should_notify(self, value: bool) -> PublishPolicyVersion1:
        self.should_notify = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "policy_version_id") and self.policy_version_id:
            result["policyVersionId"] = str(self.policy_version_id)
        elif include_empty:
            result["policyVersionId"] = ""
        if hasattr(self, "should_notify") and self.should_notify:
            result["shouldNotify"] = bool(self.should_notify)
        elif include_empty:
            result["shouldNotify"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - (operation successful)

        400: Bad Request - ErrorEntity (40035: errors.net.accelbyte.platform.legal.invalid_policy_version | 40046: errors.net.accelbyte.platform.legal.default_selection_not_provided | 40030: errors.net.accelbyte.platform.legal.localized_policy_version_not_provided)

        409: Conflict - ErrorEntity (40039: errors.net.accelbyte.platform.legal.localized_policy_version_already_latest | 40043: errors.net.accelbyte.platform.legal.localized_policy_version_already_publish)

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
            return HttpResponse.create(code, "OK"), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        policy_version_id: str,
        should_notify: Optional[bool] = None,
    ) -> PublishPolicyVersion1:
        instance = cls()
        instance.namespace = namespace
        instance.policy_version_id = policy_version_id
        if should_notify is not None:
            instance.should_notify = should_notify
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublishPolicyVersion1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "policyVersionId" in dict_ and dict_["policyVersionId"] is not None:
            instance.policy_version_id = str(dict_["policyVersionId"])
        elif include_empty:
            instance.policy_version_id = ""
        if "shouldNotify" in dict_ and dict_["shouldNotify"] is not None:
            instance.should_notify = bool(dict_["shouldNotify"])
        elif include_empty:
            instance.should_notify = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "policyVersionId": "policy_version_id",
            "shouldNotify": "should_notify",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "policyVersionId": True,
            "shouldNotify": False,
        }

    # endregion static methods
