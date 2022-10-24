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


class RetrieveUserAcceptedAgreementResponse(Model):
    """Retrieve user accepted agreement response (RetrieveUserAcceptedAgreementResponse)

    Properties:
        id_: (id) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        email: (email) OPTIONAL str

        is_accepted: (isAccepted) OPTIONAL bool

        localized_policy_version: (localizedPolicyVersion) OPTIONAL LocalizedPolicyVersionObject

        namespace: (namespace) OPTIONAL str

        policy_name: (policyName) OPTIONAL str

        policy_type: (policyType) OPTIONAL str

        publisher_user_id: (publisherUserId) OPTIONAL str

        signing_date: (signingDate) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str

        user_id: (userId) OPTIONAL str

        username: (username) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    created_at: str  # OPTIONAL
    display_name: str  # OPTIONAL
    email: str  # OPTIONAL
    is_accepted: bool  # OPTIONAL
    localized_policy_version: LocalizedPolicyVersionObject  # OPTIONAL
    namespace: str  # OPTIONAL
    policy_name: str  # OPTIONAL
    policy_type: str  # OPTIONAL
    publisher_user_id: str  # OPTIONAL
    signing_date: str  # OPTIONAL
    updated_at: str  # OPTIONAL
    user_id: str  # OPTIONAL
    username: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.id_ = value
        return self

    def with_created_at(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.created_at = value
        return self

    def with_display_name(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.display_name = value
        return self

    def with_email(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.email = value
        return self

    def with_is_accepted(self, value: bool) -> RetrieveUserAcceptedAgreementResponse:
        self.is_accepted = value
        return self

    def with_localized_policy_version(
        self, value: LocalizedPolicyVersionObject
    ) -> RetrieveUserAcceptedAgreementResponse:
        self.localized_policy_version = value
        return self

    def with_namespace(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.namespace = value
        return self

    def with_policy_name(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.policy_name = value
        return self

    def with_policy_type(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.policy_type = value
        return self

    def with_publisher_user_id(
        self, value: str
    ) -> RetrieveUserAcceptedAgreementResponse:
        self.publisher_user_id = value
        return self

    def with_signing_date(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.signing_date = value
        return self

    def with_updated_at(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.user_id = value
        return self

    def with_username(self, value: str) -> RetrieveUserAcceptedAgreementResponse:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email"):
            result["email"] = str(self.email)
        elif include_empty:
            result["email"] = ""
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
        if hasattr(self, "policy_name"):
            result["policyName"] = str(self.policy_name)
        elif include_empty:
            result["policyName"] = ""
        if hasattr(self, "policy_type"):
            result["policyType"] = str(self.policy_type)
        elif include_empty:
            result["policyType"] = ""
        if hasattr(self, "publisher_user_id"):
            result["publisherUserId"] = str(self.publisher_user_id)
        elif include_empty:
            result["publisherUserId"] = ""
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
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        created_at: Optional[str] = None,
        display_name: Optional[str] = None,
        email: Optional[str] = None,
        is_accepted: Optional[bool] = None,
        localized_policy_version: Optional[LocalizedPolicyVersionObject] = None,
        namespace: Optional[str] = None,
        policy_name: Optional[str] = None,
        policy_type: Optional[str] = None,
        publisher_user_id: Optional[str] = None,
        signing_date: Optional[str] = None,
        updated_at: Optional[str] = None,
        user_id: Optional[str] = None,
        username: Optional[str] = None,
    ) -> RetrieveUserAcceptedAgreementResponse:
        instance = cls()
        instance.id_ = id_
        if created_at is not None:
            instance.created_at = created_at
        if display_name is not None:
            instance.display_name = display_name
        if email is not None:
            instance.email = email
        if is_accepted is not None:
            instance.is_accepted = is_accepted
        if localized_policy_version is not None:
            instance.localized_policy_version = localized_policy_version
        if namespace is not None:
            instance.namespace = namespace
        if policy_name is not None:
            instance.policy_name = policy_name
        if policy_type is not None:
            instance.policy_type = policy_type
        if publisher_user_id is not None:
            instance.publisher_user_id = publisher_user_id
        if signing_date is not None:
            instance.signing_date = signing_date
        if updated_at is not None:
            instance.updated_at = updated_at
        if user_id is not None:
            instance.user_id = user_id
        if username is not None:
            instance.username = username
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveUserAcceptedAgreementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "email" in dict_ and dict_["email"] is not None:
            instance.email = str(dict_["email"])
        elif include_empty:
            instance.email = ""
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
        if "policyName" in dict_ and dict_["policyName"] is not None:
            instance.policy_name = str(dict_["policyName"])
        elif include_empty:
            instance.policy_name = ""
        if "policyType" in dict_ and dict_["policyType"] is not None:
            instance.policy_type = str(dict_["policyType"])
        elif include_empty:
            instance.policy_type = ""
        if "publisherUserId" in dict_ and dict_["publisherUserId"] is not None:
            instance.publisher_user_id = str(dict_["publisherUserId"])
        elif include_empty:
            instance.publisher_user_id = ""
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
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrieveUserAcceptedAgreementResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrieveUserAcceptedAgreementResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrieveUserAcceptedAgreementResponse,
        List[RetrieveUserAcceptedAgreementResponse],
        Dict[Any, RetrieveUserAcceptedAgreementResponse],
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
            "createdAt": "created_at",
            "displayName": "display_name",
            "email": "email",
            "isAccepted": "is_accepted",
            "localizedPolicyVersion": "localized_policy_version",
            "namespace": "namespace",
            "policyName": "policy_name",
            "policyType": "policy_type",
            "publisherUserId": "publisher_user_id",
            "signingDate": "signing_date",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "createdAt": False,
            "displayName": False,
            "email": False,
            "isAccepted": False,
            "localizedPolicyVersion": False,
            "namespace": False,
            "policyName": False,
            "policyType": False,
            "publisherUserId": False,
            "signingDate": False,
            "updatedAt": False,
            "userId": False,
            "username": False,
        }

    # endregion static methods
