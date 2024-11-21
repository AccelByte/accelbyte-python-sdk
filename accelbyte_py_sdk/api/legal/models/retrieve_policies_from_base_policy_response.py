# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Legal Service

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

from ..models.policy_version_object import PolicyVersionObject


class RetrievePoliciesFromBasePolicyResponse(Model):
    """Retrieve policies from base policy response (RetrievePoliciesFromBasePolicyResponse)

    Properties:
        country_code: (countryCode) REQUIRED str

        id_: (id) REQUIRED str

        policy_name: (policyName) REQUIRED str

        active_version: (activeVersion) OPTIONAL str

        countries: (countries) OPTIONAL List[str]

        country_group_name: (countryGroupName) OPTIONAL str

        country_type: (countryType) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        is_active: (isActive) OPTIONAL List[str]

        last_published: (lastPublished) OPTIONAL str

        policy_versions: (policyVersions) OPTIONAL List[PolicyVersionObject]

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    country_code: str  # REQUIRED
    id_: str  # REQUIRED
    policy_name: str  # REQUIRED
    active_version: str  # OPTIONAL
    countries: List[str]  # OPTIONAL
    country_group_name: str  # OPTIONAL
    country_type: str  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    is_active: List[str]  # OPTIONAL
    last_published: str  # OPTIONAL
    policy_versions: List[PolicyVersionObject]  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_country_code(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.country_code = value
        return self

    def with_id(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.id_ = value
        return self

    def with_policy_name(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.policy_name = value
        return self

    def with_active_version(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.active_version = value
        return self

    def with_countries(
        self, value: List[str]
    ) -> RetrievePoliciesFromBasePolicyResponse:
        self.countries = value
        return self

    def with_country_group_name(
        self, value: str
    ) -> RetrievePoliciesFromBasePolicyResponse:
        self.country_group_name = value
        return self

    def with_country_type(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.country_type = value
        return self

    def with_created_at(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.description = value
        return self

    def with_is_active(
        self, value: List[str]
    ) -> RetrievePoliciesFromBasePolicyResponse:
        self.is_active = value
        return self

    def with_last_published(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.last_published = value
        return self

    def with_policy_versions(
        self, value: List[PolicyVersionObject]
    ) -> RetrievePoliciesFromBasePolicyResponse:
        self.policy_versions = value
        return self

    def with_updated_at(self, value: str) -> RetrievePoliciesFromBasePolicyResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "country_code"):
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "policy_name"):
            result["policyName"] = str(self.policy_name)
        elif include_empty:
            result["policyName"] = ""
        if hasattr(self, "active_version"):
            result["activeVersion"] = str(self.active_version)
        elif include_empty:
            result["activeVersion"] = ""
        if hasattr(self, "countries"):
            result["countries"] = [str(i0) for i0 in self.countries]
        elif include_empty:
            result["countries"] = []
        if hasattr(self, "country_group_name"):
            result["countryGroupName"] = str(self.country_group_name)
        elif include_empty:
            result["countryGroupName"] = ""
        if hasattr(self, "country_type"):
            result["countryType"] = str(self.country_type)
        elif include_empty:
            result["countryType"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "is_active"):
            result["isActive"] = [str(i0) for i0 in self.is_active]
        elif include_empty:
            result["isActive"] = []
        if hasattr(self, "last_published"):
            result["lastPublished"] = str(self.last_published)
        elif include_empty:
            result["lastPublished"] = ""
        if hasattr(self, "policy_versions"):
            result["policyVersions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.policy_versions
            ]
        elif include_empty:
            result["policyVersions"] = []
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        country_code: str,
        id_: str,
        policy_name: str,
        active_version: Optional[str] = None,
        countries: Optional[List[str]] = None,
        country_group_name: Optional[str] = None,
        country_type: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        is_active: Optional[List[str]] = None,
        last_published: Optional[str] = None,
        policy_versions: Optional[List[PolicyVersionObject]] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> RetrievePoliciesFromBasePolicyResponse:
        instance = cls()
        instance.country_code = country_code
        instance.id_ = id_
        instance.policy_name = policy_name
        if active_version is not None:
            instance.active_version = active_version
        if countries is not None:
            instance.countries = countries
        if country_group_name is not None:
            instance.country_group_name = country_group_name
        if country_type is not None:
            instance.country_type = country_type
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if is_active is not None:
            instance.is_active = is_active
        if last_published is not None:
            instance.last_published = last_published
        if policy_versions is not None:
            instance.policy_versions = policy_versions
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrievePoliciesFromBasePolicyResponse:
        instance = cls()
        if not dict_:
            return instance
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "policyName" in dict_ and dict_["policyName"] is not None:
            instance.policy_name = str(dict_["policyName"])
        elif include_empty:
            instance.policy_name = ""
        if "activeVersion" in dict_ and dict_["activeVersion"] is not None:
            instance.active_version = str(dict_["activeVersion"])
        elif include_empty:
            instance.active_version = ""
        if "countries" in dict_ and dict_["countries"] is not None:
            instance.countries = [str(i0) for i0 in dict_["countries"]]
        elif include_empty:
            instance.countries = []
        if "countryGroupName" in dict_ and dict_["countryGroupName"] is not None:
            instance.country_group_name = str(dict_["countryGroupName"])
        elif include_empty:
            instance.country_group_name = ""
        if "countryType" in dict_ and dict_["countryType"] is not None:
            instance.country_type = str(dict_["countryType"])
        elif include_empty:
            instance.country_type = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = [str(i0) for i0 in dict_["isActive"]]
        elif include_empty:
            instance.is_active = []
        if "lastPublished" in dict_ and dict_["lastPublished"] is not None:
            instance.last_published = str(dict_["lastPublished"])
        elif include_empty:
            instance.last_published = ""
        if "policyVersions" in dict_ and dict_["policyVersions"] is not None:
            instance.policy_versions = [
                PolicyVersionObject.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["policyVersions"]
            ]
        elif include_empty:
            instance.policy_versions = []
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrievePoliciesFromBasePolicyResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrievePoliciesFromBasePolicyResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrievePoliciesFromBasePolicyResponse,
        List[RetrievePoliciesFromBasePolicyResponse],
        Dict[Any, RetrievePoliciesFromBasePolicyResponse],
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
            "id": "id_",
            "policyName": "policy_name",
            "activeVersion": "active_version",
            "countries": "countries",
            "countryGroupName": "country_group_name",
            "countryType": "country_type",
            "createdAt": "created_at",
            "description": "description",
            "isActive": "is_active",
            "lastPublished": "last_published",
            "policyVersions": "policy_versions",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "countryCode": True,
            "id": True,
            "policyName": True,
            "activeVersion": False,
            "countries": False,
            "countryGroupName": False,
            "countryType": False,
            "createdAt": False,
            "description": False,
            "isActive": False,
            "lastPublished": False,
            "policyVersions": False,
            "updatedAt": False,
        }

    # endregion static methods
