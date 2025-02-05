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

from ..models.simple_policy_version_with_localized_version_object import (
    SimplePolicyVersionWithLocalizedVersionObject,
)


class RetrieveSimplePolicyPublicResponseV2(Model):
    """Retrieve simple policy public response V2 (RetrieveSimplePolicyPublicResponseV2)

    Properties:
        base_policy_id: (basePolicyId) REQUIRED str

        country_code: (countryCode) REQUIRED str

        id_: (id) REQUIRED str

        is_default_selection: (isDefaultSelection) REQUIRED bool

        is_mandatory: (isMandatory) REQUIRED bool

        namespace: (namespace) REQUIRED str

        policy_name: (policyName) REQUIRED str

        policy_type: (policyType) REQUIRED str

        country_group_code: (countryGroupCode) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        policy_versions: (policyVersions) OPTIONAL List[SimplePolicyVersionWithLocalizedVersionObject]

        tags: (tags) OPTIONAL List[str]

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    base_policy_id: str  # REQUIRED
    country_code: str  # REQUIRED
    id_: str  # REQUIRED
    is_default_selection: bool  # REQUIRED
    is_mandatory: bool  # REQUIRED
    namespace: str  # REQUIRED
    policy_name: str  # REQUIRED
    policy_type: str  # REQUIRED
    country_group_code: str  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    policy_versions: List[SimplePolicyVersionWithLocalizedVersionObject]  # OPTIONAL
    tags: List[str]  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_base_policy_id(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.base_policy_id = value
        return self

    def with_country_code(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.country_code = value
        return self

    def with_id(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.id_ = value
        return self

    def with_is_default_selection(
        self, value: bool
    ) -> RetrieveSimplePolicyPublicResponseV2:
        self.is_default_selection = value
        return self

    def with_is_mandatory(self, value: bool) -> RetrieveSimplePolicyPublicResponseV2:
        self.is_mandatory = value
        return self

    def with_namespace(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.namespace = value
        return self

    def with_policy_name(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.policy_name = value
        return self

    def with_policy_type(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.policy_type = value
        return self

    def with_country_group_code(
        self, value: str
    ) -> RetrieveSimplePolicyPublicResponseV2:
        self.country_group_code = value
        return self

    def with_created_at(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.description = value
        return self

    def with_policy_versions(
        self, value: List[SimplePolicyVersionWithLocalizedVersionObject]
    ) -> RetrieveSimplePolicyPublicResponseV2:
        self.policy_versions = value
        return self

    def with_tags(self, value: List[str]) -> RetrieveSimplePolicyPublicResponseV2:
        self.tags = value
        return self

    def with_updated_at(self, value: str) -> RetrieveSimplePolicyPublicResponseV2:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "base_policy_id"):
            result["basePolicyId"] = str(self.base_policy_id)
        elif include_empty:
            result["basePolicyId"] = ""
        if hasattr(self, "country_code"):
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "is_default_selection"):
            result["isDefaultSelection"] = bool(self.is_default_selection)
        elif include_empty:
            result["isDefaultSelection"] = False
        if hasattr(self, "is_mandatory"):
            result["isMandatory"] = bool(self.is_mandatory)
        elif include_empty:
            result["isMandatory"] = False
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "policy_name"):
            result["policyName"] = str(self.policy_name)
        elif include_empty:
            result["policyName"] = ""
        if hasattr(self, "policy_type"):
            result["policyType"] = str(self.policy_type)
        elif include_empty:
            result["policyType"] = ""
        if hasattr(self, "country_group_code"):
            result["countryGroupCode"] = str(self.country_group_code)
        elif include_empty:
            result["countryGroupCode"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
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
        base_policy_id: str,
        country_code: str,
        id_: str,
        is_default_selection: bool,
        is_mandatory: bool,
        namespace: str,
        policy_name: str,
        policy_type: str,
        country_group_code: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        policy_versions: Optional[
            List[SimplePolicyVersionWithLocalizedVersionObject]
        ] = None,
        tags: Optional[List[str]] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> RetrieveSimplePolicyPublicResponseV2:
        instance = cls()
        instance.base_policy_id = base_policy_id
        instance.country_code = country_code
        instance.id_ = id_
        instance.is_default_selection = is_default_selection
        instance.is_mandatory = is_mandatory
        instance.namespace = namespace
        instance.policy_name = policy_name
        instance.policy_type = policy_type
        if country_group_code is not None:
            instance.country_group_code = country_group_code
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if policy_versions is not None:
            instance.policy_versions = policy_versions
        if tags is not None:
            instance.tags = tags
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveSimplePolicyPublicResponseV2:
        instance = cls()
        if not dict_:
            return instance
        if "basePolicyId" in dict_ and dict_["basePolicyId"] is not None:
            instance.base_policy_id = str(dict_["basePolicyId"])
        elif include_empty:
            instance.base_policy_id = ""
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isDefaultSelection" in dict_ and dict_["isDefaultSelection"] is not None:
            instance.is_default_selection = bool(dict_["isDefaultSelection"])
        elif include_empty:
            instance.is_default_selection = False
        if "isMandatory" in dict_ and dict_["isMandatory"] is not None:
            instance.is_mandatory = bool(dict_["isMandatory"])
        elif include_empty:
            instance.is_mandatory = False
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "policyName" in dict_ and dict_["policyName"] is not None:
            instance.policy_name = str(dict_["policyName"])
        elif include_empty:
            instance.policy_name = ""
        if "policyType" in dict_ and dict_["policyType"] is not None:
            instance.policy_type = str(dict_["policyType"])
        elif include_empty:
            instance.policy_type = ""
        if "countryGroupCode" in dict_ and dict_["countryGroupCode"] is not None:
            instance.country_group_code = str(dict_["countryGroupCode"])
        elif include_empty:
            instance.country_group_code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "policyVersions" in dict_ and dict_["policyVersions"] is not None:
            instance.policy_versions = [
                SimplePolicyVersionWithLocalizedVersionObject.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["policyVersions"]
            ]
        elif include_empty:
            instance.policy_versions = []
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrieveSimplePolicyPublicResponseV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrieveSimplePolicyPublicResponseV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrieveSimplePolicyPublicResponseV2,
        List[RetrieveSimplePolicyPublicResponseV2],
        Dict[Any, RetrieveSimplePolicyPublicResponseV2],
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
            "basePolicyId": "base_policy_id",
            "countryCode": "country_code",
            "id": "id_",
            "isDefaultSelection": "is_default_selection",
            "isMandatory": "is_mandatory",
            "namespace": "namespace",
            "policyName": "policy_name",
            "policyType": "policy_type",
            "countryGroupCode": "country_group_code",
            "createdAt": "created_at",
            "description": "description",
            "policyVersions": "policy_versions",
            "tags": "tags",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "basePolicyId": True,
            "countryCode": True,
            "id": True,
            "isDefaultSelection": True,
            "isMandatory": True,
            "namespace": True,
            "policyName": True,
            "policyType": True,
            "countryGroupCode": False,
            "createdAt": False,
            "description": False,
            "policyVersions": False,
            "tags": False,
            "updatedAt": False,
        }

    # endregion static methods
