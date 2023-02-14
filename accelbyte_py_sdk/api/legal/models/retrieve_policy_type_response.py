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


class RetrievePolicyTypeResponse(Model):
    """Retrieve policy type response (RetrievePolicyTypeResponse)

    Properties:
        id_: (id) REQUIRED str

        is_need_document: (isNeedDocument) REQUIRED bool

        policy_type_name: (policyTypeName) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    is_need_document: bool  # REQUIRED
    policy_type_name: str  # REQUIRED
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> RetrievePolicyTypeResponse:
        self.id_ = value
        return self

    def with_is_need_document(self, value: bool) -> RetrievePolicyTypeResponse:
        self.is_need_document = value
        return self

    def with_policy_type_name(self, value: str) -> RetrievePolicyTypeResponse:
        self.policy_type_name = value
        return self

    def with_created_at(self, value: str) -> RetrievePolicyTypeResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RetrievePolicyTypeResponse:
        self.description = value
        return self

    def with_updated_at(self, value: str) -> RetrievePolicyTypeResponse:
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
        if hasattr(self, "is_need_document"):
            result["isNeedDocument"] = bool(self.is_need_document)
        elif include_empty:
            result["isNeedDocument"] = False
        if hasattr(self, "policy_type_name"):
            result["policyTypeName"] = str(self.policy_type_name)
        elif include_empty:
            result["policyTypeName"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        is_need_document: bool,
        policy_type_name: str,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> RetrievePolicyTypeResponse:
        instance = cls()
        instance.id_ = id_
        instance.is_need_document = is_need_document
        instance.policy_type_name = policy_type_name
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrievePolicyTypeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isNeedDocument" in dict_ and dict_["isNeedDocument"] is not None:
            instance.is_need_document = bool(dict_["isNeedDocument"])
        elif include_empty:
            instance.is_need_document = False
        if "policyTypeName" in dict_ and dict_["policyTypeName"] is not None:
            instance.policy_type_name = str(dict_["policyTypeName"])
        elif include_empty:
            instance.policy_type_name = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrievePolicyTypeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrievePolicyTypeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrievePolicyTypeResponse,
        List[RetrievePolicyTypeResponse],
        Dict[Any, RetrievePolicyTypeResponse],
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
            "isNeedDocument": "is_need_document",
            "policyTypeName": "policy_type_name",
            "createdAt": "created_at",
            "description": "description",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "isNeedDocument": True,
            "policyTypeName": True,
            "createdAt": False,
            "description": False,
            "updatedAt": False,
        }

    # endregion static methods
