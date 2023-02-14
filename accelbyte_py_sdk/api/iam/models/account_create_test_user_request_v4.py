# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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
from ....core import StrEnum

from ..models.legal_accepted_policies_request import LegalAcceptedPoliciesRequest


class AuthTypeEnum(StrEnum):
    EMAILPASSWD = "EMAILPASSWD"


class AccountCreateTestUserRequestV4(Model):
    """Account create test user request V4 (account.createTestUserRequestV4)

    Properties:
        auth_type: (authType) REQUIRED Union[str, AuthTypeEnum]

        country: (country) REQUIRED str

        date_of_birth: (dateOfBirth) REQUIRED str

        display_name: (displayName) REQUIRED str

        email_address: (emailAddress) REQUIRED str

        password: (password) REQUIRED str

        password_md5_sum: (passwordMD5Sum) REQUIRED str

        username: (username) REQUIRED str

        verified: (verified) REQUIRED bool

        accepted_policies: (acceptedPolicies) OPTIONAL List[LegalAcceptedPoliciesRequest]
    """

    # region fields

    auth_type: Union[str, AuthTypeEnum]  # REQUIRED
    country: str  # REQUIRED
    date_of_birth: str  # REQUIRED
    display_name: str  # REQUIRED
    email_address: str  # REQUIRED
    password: str  # REQUIRED
    password_md5_sum: str  # REQUIRED
    username: str  # REQUIRED
    verified: bool  # REQUIRED
    accepted_policies: List[LegalAcceptedPoliciesRequest]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(
        self, value: Union[str, AuthTypeEnum]
    ) -> AccountCreateTestUserRequestV4:
        self.auth_type = value
        return self

    def with_country(self, value: str) -> AccountCreateTestUserRequestV4:
        self.country = value
        return self

    def with_date_of_birth(self, value: str) -> AccountCreateTestUserRequestV4:
        self.date_of_birth = value
        return self

    def with_display_name(self, value: str) -> AccountCreateTestUserRequestV4:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> AccountCreateTestUserRequestV4:
        self.email_address = value
        return self

    def with_password(self, value: str) -> AccountCreateTestUserRequestV4:
        self.password = value
        return self

    def with_password_md5_sum(self, value: str) -> AccountCreateTestUserRequestV4:
        self.password_md5_sum = value
        return self

    def with_username(self, value: str) -> AccountCreateTestUserRequestV4:
        self.username = value
        return self

    def with_verified(self, value: bool) -> AccountCreateTestUserRequestV4:
        self.verified = value
        return self

    def with_accepted_policies(
        self, value: List[LegalAcceptedPoliciesRequest]
    ) -> AccountCreateTestUserRequestV4:
        self.accepted_policies = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_type"):
            result["authType"] = str(self.auth_type)
        elif include_empty:
            result["authType"] = Union[str, AuthTypeEnum]()
        if hasattr(self, "country"):
            result["country"] = str(self.country)
        elif include_empty:
            result["country"] = ""
        if hasattr(self, "date_of_birth"):
            result["dateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["dateOfBirth"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "password_md5_sum"):
            result["passwordMD5Sum"] = str(self.password_md5_sum)
        elif include_empty:
            result["passwordMD5Sum"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        if hasattr(self, "verified"):
            result["verified"] = bool(self.verified)
        elif include_empty:
            result["verified"] = False
        if hasattr(self, "accepted_policies"):
            result["acceptedPolicies"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.accepted_policies
            ]
        elif include_empty:
            result["acceptedPolicies"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auth_type: Union[str, AuthTypeEnum],
        country: str,
        date_of_birth: str,
        display_name: str,
        email_address: str,
        password: str,
        password_md5_sum: str,
        username: str,
        verified: bool,
        accepted_policies: Optional[List[LegalAcceptedPoliciesRequest]] = None,
    ) -> AccountCreateTestUserRequestV4:
        instance = cls()
        instance.auth_type = auth_type
        instance.country = country
        instance.date_of_birth = date_of_birth
        instance.display_name = display_name
        instance.email_address = email_address
        instance.password = password
        instance.password_md5_sum = password_md5_sum
        instance.username = username
        instance.verified = verified
        if accepted_policies is not None:
            instance.accepted_policies = accepted_policies
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountCreateTestUserRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "authType" in dict_ and dict_["authType"] is not None:
            instance.auth_type = str(dict_["authType"])
        elif include_empty:
            instance.auth_type = Union[str, AuthTypeEnum]()
        if "country" in dict_ and dict_["country"] is not None:
            instance.country = str(dict_["country"])
        elif include_empty:
            instance.country = ""
        if "dateOfBirth" in dict_ and dict_["dateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["dateOfBirth"])
        elif include_empty:
            instance.date_of_birth = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "passwordMD5Sum" in dict_ and dict_["passwordMD5Sum"] is not None:
            instance.password_md5_sum = str(dict_["passwordMD5Sum"])
        elif include_empty:
            instance.password_md5_sum = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        if "verified" in dict_ and dict_["verified"] is not None:
            instance.verified = bool(dict_["verified"])
        elif include_empty:
            instance.verified = False
        if "acceptedPolicies" in dict_ and dict_["acceptedPolicies"] is not None:
            instance.accepted_policies = [
                LegalAcceptedPoliciesRequest.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["acceptedPolicies"]
            ]
        elif include_empty:
            instance.accepted_policies = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountCreateTestUserRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountCreateTestUserRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountCreateTestUserRequestV4,
        List[AccountCreateTestUserRequestV4],
        Dict[Any, AccountCreateTestUserRequestV4],
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
            "authType": "auth_type",
            "country": "country",
            "dateOfBirth": "date_of_birth",
            "displayName": "display_name",
            "emailAddress": "email_address",
            "password": "password",
            "passwordMD5Sum": "password_md5_sum",
            "username": "username",
            "verified": "verified",
            "acceptedPolicies": "accepted_policies",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "authType": True,
            "country": True,
            "dateOfBirth": True,
            "displayName": True,
            "emailAddress": True,
            "password": True,
            "passwordMD5Sum": True,
            "username": True,
            "verified": True,
            "acceptedPolicies": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "authType": ["EMAILPASSWD"],
        }

    # endregion static methods
