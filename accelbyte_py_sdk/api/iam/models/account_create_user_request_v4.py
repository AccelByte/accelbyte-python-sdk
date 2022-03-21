# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model

from ..models.legal_accepted_policies_request import LegalAcceptedPoliciesRequest


class AccountCreateUserRequestV4(Model):
    """Account create user request V4 (account.createUserRequestV4)

    Properties:
        auth_type: (authType) REQUIRED str

        code: (code) REQUIRED str

        country: (country) REQUIRED str

        display_name: (displayName) REQUIRED str

        email_address: (emailAddress) REQUIRED str

        password: (password) REQUIRED str

        password_md5_sum: (passwordMD5Sum) REQUIRED str

        reach_minimum_age: (reachMinimumAge) REQUIRED bool

        username: (username) REQUIRED str

        accepted_policies: (acceptedPolicies) OPTIONAL List[LegalAcceptedPoliciesRequest]

        date_of_birth: (dateOfBirth) OPTIONAL str
    """

    # region fields

    auth_type: str                                                                                 # REQUIRED
    code: str                                                                                      # REQUIRED
    country: str                                                                                   # REQUIRED
    display_name: str                                                                              # REQUIRED
    email_address: str                                                                             # REQUIRED
    password: str                                                                                  # REQUIRED
    password_md5_sum: str                                                                          # REQUIRED
    reach_minimum_age: bool                                                                        # REQUIRED
    username: str                                                                                  # REQUIRED
    accepted_policies: List[LegalAcceptedPoliciesRequest]                                          # OPTIONAL
    date_of_birth: str                                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(self, value: str) -> AccountCreateUserRequestV4:
        self.auth_type = value
        return self

    def with_code(self, value: str) -> AccountCreateUserRequestV4:
        self.code = value
        return self

    def with_country(self, value: str) -> AccountCreateUserRequestV4:
        self.country = value
        return self

    def with_display_name(self, value: str) -> AccountCreateUserRequestV4:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> AccountCreateUserRequestV4:
        self.email_address = value
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

    def with_username(self, value: str) -> AccountCreateUserRequestV4:
        self.username = value
        return self

    def with_accepted_policies(self, value: List[LegalAcceptedPoliciesRequest]) -> AccountCreateUserRequestV4:
        self.accepted_policies = value
        return self

    def with_date_of_birth(self, value: str) -> AccountCreateUserRequestV4:
        self.date_of_birth = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "auth_type") or self.auth_type is None:
            return False
        if not hasattr(self, "code") or self.code is None:
            return False
        if not hasattr(self, "country") or self.country is None:
            return False
        if not hasattr(self, "display_name") or self.display_name is None:
            return False
        if not hasattr(self, "email_address") or self.email_address is None:
            return False
        if not hasattr(self, "password") or self.password is None:
            return False
        if not hasattr(self, "password_md5_sum") or self.password_md5_sum is None:
            return False
        if not hasattr(self, "reach_minimum_age") or self.reach_minimum_age is None:
            return False
        if not hasattr(self, "username") or self.username is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_type"):
            result["authType"] = str(self.auth_type)
        elif include_empty:
            result["authType"] = str()
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "country"):
            result["country"] = str(self.country)
        elif include_empty:
            result["country"] = str()
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = str()
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = str()
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = str()
        if hasattr(self, "password_md5_sum"):
            result["passwordMD5Sum"] = str(self.password_md5_sum)
        elif include_empty:
            result["passwordMD5Sum"] = str()
        if hasattr(self, "reach_minimum_age"):
            result["reachMinimumAge"] = bool(self.reach_minimum_age)
        elif include_empty:
            result["reachMinimumAge"] = bool()
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = str()
        if hasattr(self, "accepted_policies"):
            result["acceptedPolicies"] = [i0.to_dict(include_empty=include_empty) for i0 in self.accepted_policies]
        elif include_empty:
            result["acceptedPolicies"] = []
        if hasattr(self, "date_of_birth"):
            result["dateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["dateOfBirth"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auth_type: str,
        code: str,
        country: str,
        display_name: str,
        email_address: str,
        password: str,
        password_md5_sum: str,
        reach_minimum_age: bool,
        username: str,
        accepted_policies: Optional[List[LegalAcceptedPoliciesRequest]] = None,
        date_of_birth: Optional[str] = None,
    ) -> AccountCreateUserRequestV4:
        instance = cls()
        instance.auth_type = auth_type
        instance.code = code
        instance.country = country
        instance.display_name = display_name
        instance.email_address = email_address
        instance.password = password
        instance.password_md5_sum = password_md5_sum
        instance.reach_minimum_age = reach_minimum_age
        instance.username = username
        if accepted_policies is not None:
            instance.accepted_policies = accepted_policies
        if date_of_birth is not None:
            instance.date_of_birth = date_of_birth
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountCreateUserRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "authType" in dict_ and dict_["authType"] is not None:
            instance.auth_type = str(dict_["authType"])
        elif include_empty:
            instance.auth_type = str()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "country" in dict_ and dict_["country"] is not None:
            instance.country = str(dict_["country"])
        elif include_empty:
            instance.country = str()
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = str()
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = str()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = str()
        if "passwordMD5Sum" in dict_ and dict_["passwordMD5Sum"] is not None:
            instance.password_md5_sum = str(dict_["passwordMD5Sum"])
        elif include_empty:
            instance.password_md5_sum = str()
        if "reachMinimumAge" in dict_ and dict_["reachMinimumAge"] is not None:
            instance.reach_minimum_age = bool(dict_["reachMinimumAge"])
        elif include_empty:
            instance.reach_minimum_age = bool()
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = str()
        if "acceptedPolicies" in dict_ and dict_["acceptedPolicies"] is not None:
            instance.accepted_policies = [LegalAcceptedPoliciesRequest.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["acceptedPolicies"]]
        elif include_empty:
            instance.accepted_policies = []
        if "dateOfBirth" in dict_ and dict_["dateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["dateOfBirth"])
        elif include_empty:
            instance.date_of_birth = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, AccountCreateUserRequestV4]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[AccountCreateUserRequestV4]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[AccountCreateUserRequestV4, List[AccountCreateUserRequestV4]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "authType": "auth_type",
            "code": "code",
            "country": "country",
            "displayName": "display_name",
            "emailAddress": "email_address",
            "password": "password",
            "passwordMD5Sum": "password_md5_sum",
            "reachMinimumAge": "reach_minimum_age",
            "username": "username",
            "acceptedPolicies": "accepted_policies",
            "dateOfBirth": "date_of_birth",
        }

    # endregion static methods
