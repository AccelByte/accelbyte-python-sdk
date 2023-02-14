# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.26.0)

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

from ..models.policy_object import PolicyObject


class RetrieveBasePolicyResponse(Model):
    """Retrieve base policy response (RetrieveBasePolicyResponse)

    Properties:
        base_policy_name: (basePolicyName) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        affected_client_ids: (affectedClientIds) OPTIONAL List[str]

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        policies: (policies) OPTIONAL List[PolicyObject]

        policy_type_id: (policyTypeId) OPTIONAL str

        policy_type_name: (policyTypeName) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    base_policy_name: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    affected_client_ids: List[str]  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    policies: List[PolicyObject]  # OPTIONAL
    policy_type_id: str  # OPTIONAL
    policy_type_name: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_base_policy_name(self, value: str) -> RetrieveBasePolicyResponse:
        self.base_policy_name = value
        return self

    def with_id(self, value: str) -> RetrieveBasePolicyResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> RetrieveBasePolicyResponse:
        self.namespace = value
        return self

    def with_affected_client_ids(self, value: List[str]) -> RetrieveBasePolicyResponse:
        self.affected_client_ids = value
        return self

    def with_created_at(self, value: str) -> RetrieveBasePolicyResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RetrieveBasePolicyResponse:
        self.description = value
        return self

    def with_policies(self, value: List[PolicyObject]) -> RetrieveBasePolicyResponse:
        self.policies = value
        return self

    def with_policy_type_id(self, value: str) -> RetrieveBasePolicyResponse:
        self.policy_type_id = value
        return self

    def with_policy_type_name(self, value: str) -> RetrieveBasePolicyResponse:
        self.policy_type_name = value
        return self

    def with_tags(self, value: List[str]) -> RetrieveBasePolicyResponse:
        self.tags = value
        return self

    def with_updated_at(self, value: str) -> RetrieveBasePolicyResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "base_policy_name"):
            result["basePolicyName"] = str(self.base_policy_name)
        elif include_empty:
            result["basePolicyName"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "affected_client_ids"):
            result["affectedClientIds"] = [str(i0) for i0 in self.affected_client_ids]
        elif include_empty:
            result["affectedClientIds"] = []
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "policies"):
            result["policies"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.policies
            ]
        elif include_empty:
            result["policies"] = []
        if hasattr(self, "policy_type_id"):
            result["policyTypeId"] = str(self.policy_type_id)
        elif include_empty:
            result["policyTypeId"] = ""
        if hasattr(self, "policy_type_name"):
            result["policyTypeName"] = str(self.policy_type_name)
        elif include_empty:
            result["policyTypeName"] = ""
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
        base_policy_name: str,
        id_: str,
        namespace: str,
        affected_client_ids: Optional[List[str]] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        policies: Optional[List[PolicyObject]] = None,
        policy_type_id: Optional[str] = None,
        policy_type_name: Optional[str] = None,
        tags: Optional[List[str]] = None,
        updated_at: Optional[str] = None,
    ) -> RetrieveBasePolicyResponse:
        instance = cls()
        instance.base_policy_name = base_policy_name
        instance.id_ = id_
        instance.namespace = namespace
        if affected_client_ids is not None:
            instance.affected_client_ids = affected_client_ids
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if policies is not None:
            instance.policies = policies
        if policy_type_id is not None:
            instance.policy_type_id = policy_type_id
        if policy_type_name is not None:
            instance.policy_type_name = policy_type_name
        if tags is not None:
            instance.tags = tags
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveBasePolicyResponse:
        instance = cls()
        if not dict_:
            return instance
        if "basePolicyName" in dict_ and dict_["basePolicyName"] is not None:
            instance.base_policy_name = str(dict_["basePolicyName"])
        elif include_empty:
            instance.base_policy_name = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "affectedClientIds" in dict_ and dict_["affectedClientIds"] is not None:
            instance.affected_client_ids = [
                str(i0) for i0 in dict_["affectedClientIds"]
            ]
        elif include_empty:
            instance.affected_client_ids = []
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "policies" in dict_ and dict_["policies"] is not None:
            instance.policies = [
                PolicyObject.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["policies"]
            ]
        elif include_empty:
            instance.policies = []
        if "policyTypeId" in dict_ and dict_["policyTypeId"] is not None:
            instance.policy_type_id = str(dict_["policyTypeId"])
        elif include_empty:
            instance.policy_type_id = ""
        if "policyTypeName" in dict_ and dict_["policyTypeName"] is not None:
            instance.policy_type_name = str(dict_["policyTypeName"])
        elif include_empty:
            instance.policy_type_name = ""
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
    ) -> Dict[str, RetrieveBasePolicyResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrieveBasePolicyResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrieveBasePolicyResponse,
        List[RetrieveBasePolicyResponse],
        Dict[Any, RetrieveBasePolicyResponse],
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
            "basePolicyName": "base_policy_name",
            "id": "id_",
            "namespace": "namespace",
            "affectedClientIds": "affected_client_ids",
            "createdAt": "created_at",
            "description": "description",
            "policies": "policies",
            "policyTypeId": "policy_type_id",
            "policyTypeName": "policy_type_name",
            "tags": "tags",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "basePolicyName": True,
            "id": True,
            "namespace": True,
            "affectedClientIds": False,
            "createdAt": False,
            "description": False,
            "policies": False,
            "policyTypeId": False,
            "policyTypeName": False,
            "tags": False,
            "updatedAt": False,
        }

    # endregion static methods
