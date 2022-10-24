# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class AccountCreateUserRequestV4(Model):
    """Account create user request V4 (account.createUserRequestV4)

    Properties:
        auth_type: (authType) REQUIRED Union[str, AuthTypeEnum]

        country: (country) REQUIRED str

        email_address: (emailAddress) REQUIRED str

        username: (username) REQUIRED str

        accepted_policies: (acceptedPolicies) OPTIONAL List[LegalAcceptedPoliciesRequest]

        code: (code) OPTIONAL str

        date_of_birth: (dateOfBirth) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        password: (password) OPTIONAL str

        password_md5_sum: (passwordMD5Sum) OPTIONAL str

        reach_minimum_age: (reachMinimumAge) OPTIONAL bool
    """

    # region fields

    auth_type: Union[str, AuthTypeEnum]  # REQUIRED
    country: str  # REQUIRED
    email_address: str  # REQUIRED
    username: str  # REQUIRED
    accepted_policies: List[LegalAcceptedPoliciesRequest]  # OPTIONAL
    code: str  # OPTIONAL
    date_of_birth: str  # OPTIONAL
    display_name: str  # OPTIONAL
    password: str  # OPTIONAL
    password_md5_sum: str  # OPTIONAL
    reach_minimum_age: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(
        self, value: Union[str, AuthTypeEnum]
    ) -> AccountCreateUserRequestV4:
        self.auth_type = value
        return self

    def with_country(self, value: str) -> AccountCreateUserRequestV4:
        self.country = value
        return self

    def with_email_address(self, value: str) -> AccountCreateUserRequestV4:
        self.email_address = value
        return self

    def with_username(self, value: str) -> AccountCreateUserRequestV4:
        self.username = value
        return self

    def with_accepted_policies(
        self, value: List[LegalAcceptedPoliciesRequest]
    ) -> AccountCreateUserRequestV4:
        self.accepted_policies = value
        return self

    def with_code(self, value: str) -> AccountCreateUserRequestV4:
        self.code = value
        return self

    def with_date_of_birth(self, value: str) -> AccountCreateUserRequestV4:
        self.date_of_birth = value
        return self

    def with_display_name(self, value: str) -> AccountCreateUserRequestV4:
        self.display_name = value
        return self

    def with_password(self, value: str) -> AccountCreateUserRequestV4:
        self.password = value
        return self

    def with_password_md5_sum(self, value: str) -> AccountCreateUserRequestV4:
        self.password_md5_sum = value
        return self

    def with_reach_minimum_age(self, value: bool) -> AccountCreateUserRequestV4:
        self.reach_minimum_age = value
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
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        if hasattr(self, "accepted_policies"):
            result["acceptedPolicies"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.accepted_policies
            ]
        elif include_empty:
            result["acceptedPolicies"] = []
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "date_of_birth"):
            result["dateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["dateOfBirth"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "password_md5_sum"):
            result["passwordMD5Sum"] = str(self.password_md5_sum)
        elif include_empty:
            result["passwordMD5Sum"] = ""
        if hasattr(self, "reach_minimum_age"):
            result["reachMinimumAge"] = bool(self.reach_minimum_age)
        elif include_empty:
            result["reachMinimumAge"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auth_type: Union[str, AuthTypeEnum],
        country: str,
        email_address: str,
        username: str,
        accepted_policies: Optional[List[LegalAcceptedPoliciesRequest]] = None,
        code: Optional[str] = None,
        date_of_birth: Optional[str] = None,
        display_name: Optional[str] = None,
        password: Optional[str] = None,
        password_md5_sum: Optional[str] = None,
        reach_minimum_age: Optional[bool] = None,
    ) -> AccountCreateUserRequestV4:
        instance = cls()
        instance.auth_type = auth_type
        instance.country = country
        instance.email_address = email_address
        instance.username = username
        if accepted_policies is not None:
            instance.accepted_policies = accepted_policies
        if code is not None:
            instance.code = code
        if date_of_birth is not None:
            instance.date_of_birth = date_of_birth
        if display_name is not None:
            instance.display_name = display_name
        if password is not None:
            instance.password = password
        if password_md5_sum is not None:
            instance.password_md5_sum = password_md5_sum
        if reach_minimum_age is not None:
            instance.reach_minimum_age = reach_minimum_age
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountCreateUserRequestV4:
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
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        if "acceptedPolicies" in dict_ and dict_["acceptedPolicies"] is not None:
            instance.accepted_policies = [
                LegalAcceptedPoliciesRequest.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["acceptedPolicies"]
            ]
        elif include_empty:
            instance.accepted_policies = []
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "dateOfBirth" in dict_ and dict_["dateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["dateOfBirth"])
        elif include_empty:
            instance.date_of_birth = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "passwordMD5Sum" in dict_ and dict_["passwordMD5Sum"] is not None:
            instance.password_md5_sum = str(dict_["passwordMD5Sum"])
        elif include_empty:
            instance.password_md5_sum = ""
        if "reachMinimumAge" in dict_ and dict_["reachMinimumAge"] is not None:
            instance.reach_minimum_age = bool(dict_["reachMinimumAge"])
        elif include_empty:
            instance.reach_minimum_age = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountCreateUserRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountCreateUserRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountCreateUserRequestV4,
        List[AccountCreateUserRequestV4],
        Dict[Any, AccountCreateUserRequestV4],
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
            "emailAddress": "email_address",
            "username": "username",
            "acceptedPolicies": "accepted_policies",
            "code": "code",
            "dateOfBirth": "date_of_birth",
            "displayName": "display_name",
            "password": "password",
            "passwordMD5Sum": "password_md5_sum",
            "reachMinimumAge": "reach_minimum_age",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "authType": True,
            "country": True,
            "emailAddress": True,
            "username": True,
            "acceptedPolicies": False,
            "code": False,
            "dateOfBirth": False,
            "displayName": False,
            "password": False,
            "passwordMD5Sum": False,
            "reachMinimumAge": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "authType": ["EMAILPASSWD"],
        }

    # endregion static methods
