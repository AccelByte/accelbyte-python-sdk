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

from ..models.legal_accepted_policies_request import LegalAcceptedPoliciesRequest


class ModelUserCreateRequestV3(Model):
    """Model user create request V3 (model.UserCreateRequestV3)

    Properties:
        auth_type: (authType) REQUIRED str

        code: (code) REQUIRED str

        country: (country) REQUIRED str

        display_name: (displayName) REQUIRED str

        email_address: (emailAddress) REQUIRED str

        password: (password) REQUIRED str

        reach_minimum_age: (reachMinimumAge) REQUIRED bool

        accepted_policies: (acceptedPolicies) OPTIONAL List[LegalAcceptedPoliciesRequest]

        date_of_birth: (dateOfBirth) OPTIONAL str

        password_md5_sum: (PasswordMD5Sum) OPTIONAL str
    """

    # region fields

    auth_type: str  # REQUIRED
    code: str  # REQUIRED
    country: str  # REQUIRED
    display_name: str  # REQUIRED
    email_address: str  # REQUIRED
    password: str  # REQUIRED
    reach_minimum_age: bool  # REQUIRED
    accepted_policies: List[LegalAcceptedPoliciesRequest]  # OPTIONAL
    date_of_birth: str  # OPTIONAL
    password_md5_sum: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(self, value: str) -> ModelUserCreateRequestV3:
        self.auth_type = value
        return self

    def with_code(self, value: str) -> ModelUserCreateRequestV3:
        self.code = value
        return self

    def with_country(self, value: str) -> ModelUserCreateRequestV3:
        self.country = value
        return self

    def with_display_name(self, value: str) -> ModelUserCreateRequestV3:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> ModelUserCreateRequestV3:
        self.email_address = value
        return self

    def with_password(self, value: str) -> ModelUserCreateRequestV3:
        self.password = value
        return self

    def with_reach_minimum_age(self, value: bool) -> ModelUserCreateRequestV3:
        self.reach_minimum_age = value
        return self

    def with_accepted_policies(
        self, value: List[LegalAcceptedPoliciesRequest]
    ) -> ModelUserCreateRequestV3:
        self.accepted_policies = value
        return self

    def with_date_of_birth(self, value: str) -> ModelUserCreateRequestV3:
        self.date_of_birth = value
        return self

    def with_password_md5_sum(self, value: str) -> ModelUserCreateRequestV3:
        self.password_md5_sum = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_type"):
            result["authType"] = str(self.auth_type)
        elif include_empty:
            result["authType"] = ""
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "country"):
            result["country"] = str(self.country)
        elif include_empty:
            result["country"] = ""
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
        if hasattr(self, "reach_minimum_age"):
            result["reachMinimumAge"] = bool(self.reach_minimum_age)
        elif include_empty:
            result["reachMinimumAge"] = False
        if hasattr(self, "accepted_policies"):
            result["acceptedPolicies"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.accepted_policies
            ]
        elif include_empty:
            result["acceptedPolicies"] = []
        if hasattr(self, "date_of_birth"):
            result["dateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["dateOfBirth"] = ""
        if hasattr(self, "password_md5_sum"):
            result["PasswordMD5Sum"] = str(self.password_md5_sum)
        elif include_empty:
            result["PasswordMD5Sum"] = ""
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
        reach_minimum_age: bool,
        accepted_policies: Optional[List[LegalAcceptedPoliciesRequest]] = None,
        date_of_birth: Optional[str] = None,
        password_md5_sum: Optional[str] = None,
    ) -> ModelUserCreateRequestV3:
        instance = cls()
        instance.auth_type = auth_type
        instance.code = code
        instance.country = country
        instance.display_name = display_name
        instance.email_address = email_address
        instance.password = password
        instance.reach_minimum_age = reach_minimum_age
        if accepted_policies is not None:
            instance.accepted_policies = accepted_policies
        if date_of_birth is not None:
            instance.date_of_birth = date_of_birth
        if password_md5_sum is not None:
            instance.password_md5_sum = password_md5_sum
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserCreateRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "authType" in dict_ and dict_["authType"] is not None:
            instance.auth_type = str(dict_["authType"])
        elif include_empty:
            instance.auth_type = ""
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "country" in dict_ and dict_["country"] is not None:
            instance.country = str(dict_["country"])
        elif include_empty:
            instance.country = ""
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
        if "reachMinimumAge" in dict_ and dict_["reachMinimumAge"] is not None:
            instance.reach_minimum_age = bool(dict_["reachMinimumAge"])
        elif include_empty:
            instance.reach_minimum_age = False
        if "acceptedPolicies" in dict_ and dict_["acceptedPolicies"] is not None:
            instance.accepted_policies = [
                LegalAcceptedPoliciesRequest.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["acceptedPolicies"]
            ]
        elif include_empty:
            instance.accepted_policies = []
        if "dateOfBirth" in dict_ and dict_["dateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["dateOfBirth"])
        elif include_empty:
            instance.date_of_birth = ""
        if "PasswordMD5Sum" in dict_ and dict_["PasswordMD5Sum"] is not None:
            instance.password_md5_sum = str(dict_["PasswordMD5Sum"])
        elif include_empty:
            instance.password_md5_sum = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserCreateRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserCreateRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserCreateRequestV3,
        List[ModelUserCreateRequestV3],
        Dict[Any, ModelUserCreateRequestV3],
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
            "code": "code",
            "country": "country",
            "displayName": "display_name",
            "emailAddress": "email_address",
            "password": "password",
            "reachMinimumAge": "reach_minimum_age",
            "acceptedPolicies": "accepted_policies",
            "dateOfBirth": "date_of_birth",
            "PasswordMD5Sum": "password_md5_sum",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "authType": True,
            "code": True,
            "country": True,
            "displayName": True,
            "emailAddress": True,
            "password": True,
            "reachMinimumAge": True,
            "acceptedPolicies": False,
            "dateOfBirth": False,
            "PasswordMD5Sum": False,
        }

    # endregion static methods
