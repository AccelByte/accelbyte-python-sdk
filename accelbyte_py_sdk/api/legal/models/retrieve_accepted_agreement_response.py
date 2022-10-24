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

from ..models.localized_policy_version_object import LocalizedPolicyVersionObject


class RetrieveAcceptedAgreementResponse(Model):
    """Retrieve accepted agreement response (RetrieveAcceptedAgreementResponse)

    Properties:
        id_: (id) REQUIRED str

        country_code: (countryCode) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        display_version: (displayVersion) OPTIONAL str

        is_accepted: (isAccepted) OPTIONAL bool

        localized_policy_version: (localizedPolicyVersion) OPTIONAL LocalizedPolicyVersionObject

        namespace: (namespace) OPTIONAL str

        policy_id: (policyId) OPTIONAL str

        policy_name: (policyName) OPTIONAL str

        policy_type: (policyType) OPTIONAL str

        signing_date: (signingDate) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    country_code: str  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    display_version: str  # OPTIONAL
    is_accepted: bool  # OPTIONAL
    localized_policy_version: LocalizedPolicyVersionObject  # OPTIONAL
    namespace: str  # OPTIONAL
    policy_id: str  # OPTIONAL
    policy_name: str  # OPTIONAL
    policy_type: str  # OPTIONAL
    signing_date: str  # OPTIONAL
    updated_at: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.id_ = value
        return self

    def with_country_code(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.country_code = value
        return self

    def with_created_at(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.description = value
        return self

    def with_display_version(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.display_version = value
        return self

    def with_is_accepted(self, value: bool) -> RetrieveAcceptedAgreementResponse:
        self.is_accepted = value
        return self

    def with_localized_policy_version(
        self, value: LocalizedPolicyVersionObject
    ) -> RetrieveAcceptedAgreementResponse:
        self.localized_policy_version = value
        return self

    def with_namespace(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.namespace = value
        return self

    def with_policy_id(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.policy_id = value
        return self

    def with_policy_name(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.policy_name = value
        return self

    def with_policy_type(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.policy_type = value
        return self

    def with_signing_date(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.signing_date = value
        return self

    def with_updated_at(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> RetrieveAcceptedAgreementResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "country_code"):
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "display_version"):
            result["displayVersion"] = str(self.display_version)
        elif include_empty:
            result["displayVersion"] = ""
        if hasattr(self, "is_accepted"):
            result["isAccepted"] = bool(self.is_accepted)
        elif include_empty:
            result["isAccepted"] = False
        if hasattr(self, "localized_policy_version"):
            result["localizedPolicyVersion"] = self.localized_policy_version.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["localizedPolicyVersion"] = LocalizedPolicyVersionObject()
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
        if hasattr(self, "signing_date"):
            result["signingDate"] = str(self.signing_date)
        elif include_empty:
            result["signingDate"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        country_code: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        display_version: Optional[str] = None,
        is_accepted: Optional[bool] = None,
        localized_policy_version: Optional[LocalizedPolicyVersionObject] = None,
        namespace: Optional[str] = None,
        policy_id: Optional[str] = None,
        policy_name: Optional[str] = None,
        policy_type: Optional[str] = None,
        signing_date: Optional[str] = None,
        updated_at: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> RetrieveAcceptedAgreementResponse:
        instance = cls()
        instance.id_ = id_
        if country_code is not None:
            instance.country_code = country_code
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if display_version is not None:
            instance.display_version = display_version
        if is_accepted is not None:
            instance.is_accepted = is_accepted
        if localized_policy_version is not None:
            instance.localized_policy_version = localized_policy_version
        if namespace is not None:
            instance.namespace = namespace
        if policy_id is not None:
            instance.policy_id = policy_id
        if policy_name is not None:
            instance.policy_name = policy_name
        if policy_type is not None:
            instance.policy_type = policy_type
        if signing_date is not None:
            instance.signing_date = signing_date
        if updated_at is not None:
            instance.updated_at = updated_at
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveAcceptedAgreementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "displayVersion" in dict_ and dict_["displayVersion"] is not None:
            instance.display_version = str(dict_["displayVersion"])
        elif include_empty:
            instance.display_version = ""
        if "isAccepted" in dict_ and dict_["isAccepted"] is not None:
            instance.is_accepted = bool(dict_["isAccepted"])
        elif include_empty:
            instance.is_accepted = False
        if (
            "localizedPolicyVersion" in dict_
            and dict_["localizedPolicyVersion"] is not None
        ):
            instance.localized_policy_version = (
                LocalizedPolicyVersionObject.create_from_dict(
                    dict_["localizedPolicyVersion"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.localized_policy_version = LocalizedPolicyVersionObject()
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
        if "signingDate" in dict_ and dict_["signingDate"] is not None:
            instance.signing_date = str(dict_["signingDate"])
        elif include_empty:
            instance.signing_date = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrieveAcceptedAgreementResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrieveAcceptedAgreementResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrieveAcceptedAgreementResponse,
        List[RetrieveAcceptedAgreementResponse],
        Dict[Any, RetrieveAcceptedAgreementResponse],
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
            "countryCode": "country_code",
            "createdAt": "created_at",
            "description": "description",
            "displayVersion": "display_version",
            "isAccepted": "is_accepted",
            "localizedPolicyVersion": "localized_policy_version",
            "namespace": "namespace",
            "policyId": "policy_id",
            "policyName": "policy_name",
            "policyType": "policy_type",
            "signingDate": "signing_date",
            "updatedAt": "updated_at",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "countryCode": False,
            "createdAt": False,
            "description": False,
            "displayVersion": False,
            "isAccepted": False,
            "localizedPolicyVersion": False,
            "namespace": False,
            "policyId": False,
            "policyName": False,
            "policyType": False,
            "signingDate": False,
            "updatedAt": False,
            "userId": False,
        }

    # endregion static methods
