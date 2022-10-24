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

from ..models.policy_version_object import PolicyVersionObject


class RetrievePolicyResponse(Model):
    """Retrieve policy response (RetrievePolicyResponse)

    Properties:
        country_code: (countryCode) REQUIRED str

        id_: (id) REQUIRED str

        is_default_opted: (isDefaultOpted) REQUIRED bool

        is_default_selection: (isDefaultSelection) REQUIRED bool

        is_mandatory: (isMandatory) REQUIRED bool

        policy_name: (policyName) REQUIRED str

        should_notify_on_update: (shouldNotifyOnUpdate) REQUIRED bool

        country_group_code: (countryGroupCode) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        policy_versions: (policyVersions) OPTIONAL List[PolicyVersionObject]

        readable_id: (readableId) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    country_code: str  # REQUIRED
    id_: str  # REQUIRED
    is_default_opted: bool  # REQUIRED
    is_default_selection: bool  # REQUIRED
    is_mandatory: bool  # REQUIRED
    policy_name: str  # REQUIRED
    should_notify_on_update: bool  # REQUIRED
    country_group_code: str  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    policy_versions: List[PolicyVersionObject]  # OPTIONAL
    readable_id: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_country_code(self, value: str) -> RetrievePolicyResponse:
        self.country_code = value
        return self

    def with_id(self, value: str) -> RetrievePolicyResponse:
        self.id_ = value
        return self

    def with_is_default_opted(self, value: bool) -> RetrievePolicyResponse:
        self.is_default_opted = value
        return self

    def with_is_default_selection(self, value: bool) -> RetrievePolicyResponse:
        self.is_default_selection = value
        return self

    def with_is_mandatory(self, value: bool) -> RetrievePolicyResponse:
        self.is_mandatory = value
        return self

    def with_policy_name(self, value: str) -> RetrievePolicyResponse:
        self.policy_name = value
        return self

    def with_should_notify_on_update(self, value: bool) -> RetrievePolicyResponse:
        self.should_notify_on_update = value
        return self

    def with_country_group_code(self, value: str) -> RetrievePolicyResponse:
        self.country_group_code = value
        return self

    def with_created_at(self, value: str) -> RetrievePolicyResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RetrievePolicyResponse:
        self.description = value
        return self

    def with_policy_versions(
        self, value: List[PolicyVersionObject]
    ) -> RetrievePolicyResponse:
        self.policy_versions = value
        return self

    def with_readable_id(self, value: str) -> RetrievePolicyResponse:
        self.readable_id = value
        return self

    def with_updated_at(self, value: str) -> RetrievePolicyResponse:
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
        if hasattr(self, "is_default_opted"):
            result["isDefaultOpted"] = bool(self.is_default_opted)
        elif include_empty:
            result["isDefaultOpted"] = False
        if hasattr(self, "is_default_selection"):
            result["isDefaultSelection"] = bool(self.is_default_selection)
        elif include_empty:
            result["isDefaultSelection"] = False
        if hasattr(self, "is_mandatory"):
            result["isMandatory"] = bool(self.is_mandatory)
        elif include_empty:
            result["isMandatory"] = False
        if hasattr(self, "policy_name"):
            result["policyName"] = str(self.policy_name)
        elif include_empty:
            result["policyName"] = ""
        if hasattr(self, "should_notify_on_update"):
            result["shouldNotifyOnUpdate"] = bool(self.should_notify_on_update)
        elif include_empty:
            result["shouldNotifyOnUpdate"] = False
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
        if hasattr(self, "readable_id"):
            result["readableId"] = str(self.readable_id)
        elif include_empty:
            result["readableId"] = ""
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
        is_default_opted: bool,
        is_default_selection: bool,
        is_mandatory: bool,
        policy_name: str,
        should_notify_on_update: bool,
        country_group_code: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        policy_versions: Optional[List[PolicyVersionObject]] = None,
        readable_id: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> RetrievePolicyResponse:
        instance = cls()
        instance.country_code = country_code
        instance.id_ = id_
        instance.is_default_opted = is_default_opted
        instance.is_default_selection = is_default_selection
        instance.is_mandatory = is_mandatory
        instance.policy_name = policy_name
        instance.should_notify_on_update = should_notify_on_update
        if country_group_code is not None:
            instance.country_group_code = country_group_code
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if policy_versions is not None:
            instance.policy_versions = policy_versions
        if readable_id is not None:
            instance.readable_id = readable_id
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrievePolicyResponse:
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
        if "isDefaultOpted" in dict_ and dict_["isDefaultOpted"] is not None:
            instance.is_default_opted = bool(dict_["isDefaultOpted"])
        elif include_empty:
            instance.is_default_opted = False
        if "isDefaultSelection" in dict_ and dict_["isDefaultSelection"] is not None:
            instance.is_default_selection = bool(dict_["isDefaultSelection"])
        elif include_empty:
            instance.is_default_selection = False
        if "isMandatory" in dict_ and dict_["isMandatory"] is not None:
            instance.is_mandatory = bool(dict_["isMandatory"])
        elif include_empty:
            instance.is_mandatory = False
        if "policyName" in dict_ and dict_["policyName"] is not None:
            instance.policy_name = str(dict_["policyName"])
        elif include_empty:
            instance.policy_name = ""
        if (
            "shouldNotifyOnUpdate" in dict_
            and dict_["shouldNotifyOnUpdate"] is not None
        ):
            instance.should_notify_on_update = bool(dict_["shouldNotifyOnUpdate"])
        elif include_empty:
            instance.should_notify_on_update = False
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
                PolicyVersionObject.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["policyVersions"]
            ]
        elif include_empty:
            instance.policy_versions = []
        if "readableId" in dict_ and dict_["readableId"] is not None:
            instance.readable_id = str(dict_["readableId"])
        elif include_empty:
            instance.readable_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrievePolicyResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrievePolicyResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrievePolicyResponse,
        List[RetrievePolicyResponse],
        Dict[Any, RetrievePolicyResponse],
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
            "isDefaultOpted": "is_default_opted",
            "isDefaultSelection": "is_default_selection",
            "isMandatory": "is_mandatory",
            "policyName": "policy_name",
            "shouldNotifyOnUpdate": "should_notify_on_update",
            "countryGroupCode": "country_group_code",
            "createdAt": "created_at",
            "description": "description",
            "policyVersions": "policy_versions",
            "readableId": "readable_id",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "countryCode": True,
            "id": True,
            "isDefaultOpted": True,
            "isDefaultSelection": True,
            "isMandatory": True,
            "policyName": True,
            "shouldNotifyOnUpdate": True,
            "countryGroupCode": False,
            "createdAt": False,
            "description": False,
            "policyVersions": False,
            "readableId": False,
            "updatedAt": False,
        }

    # endregion static methods
