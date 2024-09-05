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


class UpdateBasePolicyResponse(Model):
    """Update base policy response (UpdateBasePolicyResponse)

    Properties:
        id_: (id) REQUIRED str

        affected_client_ids: (affectedClientIds) OPTIONAL List[str]

        affected_countries: (affectedCountries) OPTIONAL List[str]

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        global_policy_name: (globalPolicyName) OPTIONAL str

        is_hidden: (isHidden) OPTIONAL bool

        is_hidden_public: (isHiddenPublic) OPTIONAL bool

        namespace: (namespace) OPTIONAL str

        policy_id: (policyId) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        type_id: (typeId) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    affected_client_ids: List[str]  # OPTIONAL
    affected_countries: List[str]  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    global_policy_name: str  # OPTIONAL
    is_hidden: bool  # OPTIONAL
    is_hidden_public: bool  # OPTIONAL
    namespace: str  # OPTIONAL
    policy_id: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    type_id: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> UpdateBasePolicyResponse:
        self.id_ = value
        return self

    def with_affected_client_ids(self, value: List[str]) -> UpdateBasePolicyResponse:
        self.affected_client_ids = value
        return self

    def with_affected_countries(self, value: List[str]) -> UpdateBasePolicyResponse:
        self.affected_countries = value
        return self

    def with_created_at(self, value: str) -> UpdateBasePolicyResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> UpdateBasePolicyResponse:
        self.description = value
        return self

    def with_global_policy_name(self, value: str) -> UpdateBasePolicyResponse:
        self.global_policy_name = value
        return self

    def with_is_hidden(self, value: bool) -> UpdateBasePolicyResponse:
        self.is_hidden = value
        return self

    def with_is_hidden_public(self, value: bool) -> UpdateBasePolicyResponse:
        self.is_hidden_public = value
        return self

    def with_namespace(self, value: str) -> UpdateBasePolicyResponse:
        self.namespace = value
        return self

    def with_policy_id(self, value: str) -> UpdateBasePolicyResponse:
        self.policy_id = value
        return self

    def with_tags(self, value: List[str]) -> UpdateBasePolicyResponse:
        self.tags = value
        return self

    def with_type_id(self, value: str) -> UpdateBasePolicyResponse:
        self.type_id = value
        return self

    def with_updated_at(self, value: str) -> UpdateBasePolicyResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "affected_client_ids"):
            result["affectedClientIds"] = [str(i0) for i0 in self.affected_client_ids]
        elif include_empty:
            result["affectedClientIds"] = []
        if hasattr(self, "affected_countries"):
            result["affectedCountries"] = [str(i0) for i0 in self.affected_countries]
        elif include_empty:
            result["affectedCountries"] = []
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "global_policy_name"):
            result["globalPolicyName"] = str(self.global_policy_name)
        elif include_empty:
            result["globalPolicyName"] = ""
        if hasattr(self, "is_hidden"):
            result["isHidden"] = bool(self.is_hidden)
        elif include_empty:
            result["isHidden"] = False
        if hasattr(self, "is_hidden_public"):
            result["isHiddenPublic"] = bool(self.is_hidden_public)
        elif include_empty:
            result["isHiddenPublic"] = False
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "policy_id"):
            result["policyId"] = str(self.policy_id)
        elif include_empty:
            result["policyId"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_id"):
            result["typeId"] = str(self.type_id)
        elif include_empty:
            result["typeId"] = ""
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
        id_: str,
        affected_client_ids: Optional[List[str]] = None,
        affected_countries: Optional[List[str]] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        global_policy_name: Optional[str] = None,
        is_hidden: Optional[bool] = None,
        is_hidden_public: Optional[bool] = None,
        namespace: Optional[str] = None,
        policy_id: Optional[str] = None,
        tags: Optional[List[str]] = None,
        type_id: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> UpdateBasePolicyResponse:
        instance = cls()
        instance.id_ = id_
        if affected_client_ids is not None:
            instance.affected_client_ids = affected_client_ids
        if affected_countries is not None:
            instance.affected_countries = affected_countries
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if global_policy_name is not None:
            instance.global_policy_name = global_policy_name
        if is_hidden is not None:
            instance.is_hidden = is_hidden
        if is_hidden_public is not None:
            instance.is_hidden_public = is_hidden_public
        if namespace is not None:
            instance.namespace = namespace
        if policy_id is not None:
            instance.policy_id = policy_id
        if tags is not None:
            instance.tags = tags
        if type_id is not None:
            instance.type_id = type_id
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdateBasePolicyResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "affectedClientIds" in dict_ and dict_["affectedClientIds"] is not None:
            instance.affected_client_ids = [
                str(i0) for i0 in dict_["affectedClientIds"]
            ]
        elif include_empty:
            instance.affected_client_ids = []
        if "affectedCountries" in dict_ and dict_["affectedCountries"] is not None:
            instance.affected_countries = [str(i0) for i0 in dict_["affectedCountries"]]
        elif include_empty:
            instance.affected_countries = []
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "globalPolicyName" in dict_ and dict_["globalPolicyName"] is not None:
            instance.global_policy_name = str(dict_["globalPolicyName"])
        elif include_empty:
            instance.global_policy_name = ""
        if "isHidden" in dict_ and dict_["isHidden"] is not None:
            instance.is_hidden = bool(dict_["isHidden"])
        elif include_empty:
            instance.is_hidden = False
        if "isHiddenPublic" in dict_ and dict_["isHiddenPublic"] is not None:
            instance.is_hidden_public = bool(dict_["isHiddenPublic"])
        elif include_empty:
            instance.is_hidden_public = False
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "policyId" in dict_ and dict_["policyId"] is not None:
            instance.policy_id = str(dict_["policyId"])
        elif include_empty:
            instance.policy_id = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "typeId" in dict_ and dict_["typeId"] is not None:
            instance.type_id = str(dict_["typeId"])
        elif include_empty:
            instance.type_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UpdateBasePolicyResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UpdateBasePolicyResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UpdateBasePolicyResponse,
        List[UpdateBasePolicyResponse],
        Dict[Any, UpdateBasePolicyResponse],
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
            "id": "id_",
            "affectedClientIds": "affected_client_ids",
            "affectedCountries": "affected_countries",
            "createdAt": "created_at",
            "description": "description",
            "globalPolicyName": "global_policy_name",
            "isHidden": "is_hidden",
            "isHiddenPublic": "is_hidden_public",
            "namespace": "namespace",
            "policyId": "policy_id",
            "tags": "tags",
            "typeId": "type_id",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "affectedClientIds": False,
            "affectedCountries": False,
            "createdAt": False,
            "description": False,
            "globalPolicyName": False,
            "isHidden": False,
            "isHiddenPublic": False,
            "namespace": False,
            "policyId": False,
            "tags": False,
            "typeId": False,
            "updatedAt": False,
        }

    # endregion static methods
