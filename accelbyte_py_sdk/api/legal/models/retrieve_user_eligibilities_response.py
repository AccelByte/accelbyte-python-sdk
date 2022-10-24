# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.24.1)

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

from ..models.policy_version_with_localized_version_object import (
    PolicyVersionWithLocalizedVersionObject,
)


class RetrieveUserEligibilitiesResponse(Model):
    """Retrieve user eligibilities response (RetrieveUserEligibilitiesResponse)

    Properties:
        country_code: (countryCode) REQUIRED str

        is_accepted: (isAccepted) REQUIRED bool

        is_mandatory: (isMandatory) REQUIRED bool

        namespace: (namespace) REQUIRED str

        policy_id: (policyId) REQUIRED str

        policy_name: (policyName) REQUIRED str

        policy_type: (policyType) REQUIRED str

        base_urls: (baseUrls) OPTIONAL List[str]

        country_group_code: (countryGroupCode) OPTIONAL str

        description: (description) OPTIONAL str

        policy_versions: (policyVersions) OPTIONAL List[PolicyVersionWithLocalizedVersionObject]

        readable_id: (readableId) OPTIONAL str
    """

    # region fields

    country_code: str  # REQUIRED
    is_accepted: bool  # REQUIRED
    is_mandatory: bool  # REQUIRED
    namespace: str  # REQUIRED
    policy_id: str  # REQUIRED
    policy_name: str  # REQUIRED
    policy_type: str  # REQUIRED
    base_urls: List[str]  # OPTIONAL
    country_group_code: str  # OPTIONAL
    description: str  # OPTIONAL
    policy_versions: List[PolicyVersionWithLocalizedVersionObject]  # OPTIONAL
    readable_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_country_code(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.country_code = value
        return self

    def with_is_accepted(self, value: bool) -> RetrieveUserEligibilitiesResponse:
        self.is_accepted = value
        return self

    def with_is_mandatory(self, value: bool) -> RetrieveUserEligibilitiesResponse:
        self.is_mandatory = value
        return self

    def with_namespace(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.namespace = value
        return self

    def with_policy_id(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.policy_id = value
        return self

    def with_policy_name(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.policy_name = value
        return self

    def with_policy_type(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.policy_type = value
        return self

    def with_base_urls(self, value: List[str]) -> RetrieveUserEligibilitiesResponse:
        self.base_urls = value
        return self

    def with_country_group_code(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.country_group_code = value
        return self

    def with_description(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.description = value
        return self

    def with_policy_versions(
        self, value: List[PolicyVersionWithLocalizedVersionObject]
    ) -> RetrieveUserEligibilitiesResponse:
        self.policy_versions = value
        return self

    def with_readable_id(self, value: str) -> RetrieveUserEligibilitiesResponse:
        self.readable_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "country_code"):
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        if hasattr(self, "is_accepted"):
            result["isAccepted"] = bool(self.is_accepted)
        elif include_empty:
            result["isAccepted"] = False
        if hasattr(self, "is_mandatory"):
            result["isMandatory"] = bool(self.is_mandatory)
        elif include_empty:
            result["isMandatory"] = False
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "policy_id"):
            result["policyId"] = str(self.policy_id)
        elif include_empty:
            result["policyId"] = ""
        if hasattr(self, "policy_name"):
            result["policyName"] = str(self.policy_name)
        elif include_empty:
            result["policyName"] = ""
        if hasattr(self, "policy_type"):
            result["policyType"] = str(self.policy_type)
        elif include_empty:
            result["policyType"] = ""
        if hasattr(self, "base_urls"):
            result["baseUrls"] = [str(i0) for i0 in self.base_urls]
        elif include_empty:
            result["baseUrls"] = []
        if hasattr(self, "country_group_code"):
            result["countryGroupCode"] = str(self.country_group_code)
        elif include_empty:
            result["countryGroupCode"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "policy_versions"):
            result["policyVersions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.policy_versions
            ]
        elif include_empty:
            result["policyVersions"] = []
        if hasattr(self, "readable_id"):
            result["readableId"] = str(self.readable_id)
        elif include_empty:
            result["readableId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        country_code: str,
        is_accepted: bool,
        is_mandatory: bool,
        namespace: str,
        policy_id: str,
        policy_name: str,
        policy_type: str,
        base_urls: Optional[List[str]] = None,
        country_group_code: Optional[str] = None,
        description: Optional[str] = None,
        policy_versions: Optional[List[PolicyVersionWithLocalizedVersionObject]] = None,
        readable_id: Optional[str] = None,
    ) -> RetrieveUserEligibilitiesResponse:
        instance = cls()
        instance.country_code = country_code
        instance.is_accepted = is_accepted
        instance.is_mandatory = is_mandatory
        instance.namespace = namespace
        instance.policy_id = policy_id
        instance.policy_name = policy_name
        instance.policy_type = policy_type
        if base_urls is not None:
            instance.base_urls = base_urls
        if country_group_code is not None:
            instance.country_group_code = country_group_code
        if description is not None:
            instance.description = description
        if policy_versions is not None:
            instance.policy_versions = policy_versions
        if readable_id is not None:
            instance.readable_id = readable_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveUserEligibilitiesResponse:
        instance = cls()
        if not dict_:
            return instance
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        if "isAccepted" in dict_ and dict_["isAccepted"] is not None:
            instance.is_accepted = bool(dict_["isAccepted"])
        elif include_empty:
            instance.is_accepted = False
        if "isMandatory" in dict_ and dict_["isMandatory"] is not None:
            instance.is_mandatory = bool(dict_["isMandatory"])
        elif include_empty:
            instance.is_mandatory = False
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "policyId" in dict_ and dict_["policyId"] is not None:
            instance.policy_id = str(dict_["policyId"])
        elif include_empty:
            instance.policy_id = ""
        if "policyName" in dict_ and dict_["policyName"] is not None:
            instance.policy_name = str(dict_["policyName"])
        elif include_empty:
            instance.policy_name = ""
        if "policyType" in dict_ and dict_["policyType"] is not None:
            instance.policy_type = str(dict_["policyType"])
        elif include_empty:
            instance.policy_type = ""
        if "baseUrls" in dict_ and dict_["baseUrls"] is not None:
            instance.base_urls = [str(i0) for i0 in dict_["baseUrls"]]
        elif include_empty:
            instance.base_urls = []
        if "countryGroupCode" in dict_ and dict_["countryGroupCode"] is not None:
            instance.country_group_code = str(dict_["countryGroupCode"])
        elif include_empty:
            instance.country_group_code = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "policyVersions" in dict_ and dict_["policyVersions"] is not None:
            instance.policy_versions = [
                PolicyVersionWithLocalizedVersionObject.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["policyVersions"]
            ]
        elif include_empty:
            instance.policy_versions = []
        if "readableId" in dict_ and dict_["readableId"] is not None:
            instance.readable_id = str(dict_["readableId"])
        elif include_empty:
            instance.readable_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrieveUserEligibilitiesResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrieveUserEligibilitiesResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrieveUserEligibilitiesResponse,
        List[RetrieveUserEligibilitiesResponse],
        Dict[Any, RetrieveUserEligibilitiesResponse],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "countryCode": "country_code",
            "isAccepted": "is_accepted",
            "isMandatory": "is_mandatory",
            "namespace": "namespace",
            "policyId": "policy_id",
            "policyName": "policy_name",
            "policyType": "policy_type",
            "baseUrls": "base_urls",
            "countryGroupCode": "country_group_code",
            "description": "description",
            "policyVersions": "policy_versions",
            "readableId": "readable_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "countryCode": True,
            "isAccepted": True,
            "isMandatory": True,
            "namespace": True,
            "policyId": True,
            "policyName": True,
            "policyType": True,
            "baseUrls": False,
            "countryGroupCode": False,
            "description": False,
            "policyVersions": False,
            "readableId": False,
        }

    # endregion static methods
