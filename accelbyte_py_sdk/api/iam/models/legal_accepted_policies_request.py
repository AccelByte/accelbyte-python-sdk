# justice-iam-service (4.10.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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

from ....core import Model


class LegalAcceptedPoliciesRequest(Model):
    """Legal accepted policies request (legal.AcceptedPoliciesRequest)

    Properties:
        is_accepted: (isAccepted) REQUIRED bool

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str

        policy_id: (policyId) REQUIRED str

        policy_version_id: (policyVersionId) REQUIRED str
    """

    # region fields

    is_accepted: bool                                                                              # REQUIRED
    localized_policy_version_id: str                                                               # REQUIRED
    policy_id: str                                                                                 # REQUIRED
    policy_version_id: str                                                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_accepted(self, value: bool) -> LegalAcceptedPoliciesRequest:
        self.is_accepted = value
        return self

    def with_localized_policy_version_id(self, value: str) -> LegalAcceptedPoliciesRequest:
        self.localized_policy_version_id = value
        return self

    def with_policy_id(self, value: str) -> LegalAcceptedPoliciesRequest:
        self.policy_id = value
        return self

    def with_policy_version_id(self, value: str) -> LegalAcceptedPoliciesRequest:
        self.policy_version_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_accepted"):
            result["isAccepted"] = bool(self.is_accepted)
        elif include_empty:
            result["isAccepted"] = bool()
        if hasattr(self, "localized_policy_version_id"):
            result["localizedPolicyVersionId"] = str(self.localized_policy_version_id)
        elif include_empty:
            result["localizedPolicyVersionId"] = str()
        if hasattr(self, "policy_id"):
            result["policyId"] = str(self.policy_id)
        elif include_empty:
            result["policyId"] = str()
        if hasattr(self, "policy_version_id"):
            result["policyVersionId"] = str(self.policy_version_id)
        elif include_empty:
            result["policyVersionId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_accepted: bool,
        localized_policy_version_id: str,
        policy_id: str,
        policy_version_id: str,
    ) -> LegalAcceptedPoliciesRequest:
        instance = cls()
        instance.is_accepted = is_accepted
        instance.localized_policy_version_id = localized_policy_version_id
        instance.policy_id = policy_id
        instance.policy_version_id = policy_version_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> LegalAcceptedPoliciesRequest:
        instance = cls()
        if not dict_:
            return instance
        if "isAccepted" in dict_ and dict_["isAccepted"] is not None:
            instance.is_accepted = bool(dict_["isAccepted"])
        elif include_empty:
            instance.is_accepted = bool()
        if "localizedPolicyVersionId" in dict_ and dict_["localizedPolicyVersionId"] is not None:
            instance.localized_policy_version_id = str(dict_["localizedPolicyVersionId"])
        elif include_empty:
            instance.localized_policy_version_id = str()
        if "policyId" in dict_ and dict_["policyId"] is not None:
            instance.policy_id = str(dict_["policyId"])
        elif include_empty:
            instance.policy_id = str()
        if "policyVersionId" in dict_ and dict_["policyVersionId"] is not None:
            instance.policy_version_id = str(dict_["policyVersionId"])
        elif include_empty:
            instance.policy_version_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "isAccepted": "is_accepted",
            "localizedPolicyVersionId": "localized_policy_version_id",
            "policyId": "policy_id",
            "policyVersionId": "policy_version_id",
        }

    # endregion static methods
