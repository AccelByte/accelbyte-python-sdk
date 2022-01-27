# justice-iam-service (5.0.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelUserCreateFromInvitationRequestV3(Model):
    """Model user create from invitation request V3 (model.UserCreateFromInvitationRequestV3)

    Properties:
        auth_type: (authType) REQUIRED str

        country: (country) REQUIRED str

        date_of_birth: (dateOfBirth) REQUIRED str

        display_name: (displayName) REQUIRED str

        password: (password) REQUIRED str

        accepted_policies: (acceptedPolicies) OPTIONAL List[LegalAcceptedPoliciesRequest]
    """

    # region fields

    auth_type: str                                                                                 # REQUIRED
    country: str                                                                                   # REQUIRED
    date_of_birth: str                                                                             # REQUIRED
    display_name: str                                                                              # REQUIRED
    password: str                                                                                  # REQUIRED
    accepted_policies: List[LegalAcceptedPoliciesRequest]                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(self, value: str) -> ModelUserCreateFromInvitationRequestV3:
        self.auth_type = value
        return self

    def with_country(self, value: str) -> ModelUserCreateFromInvitationRequestV3:
        self.country = value
        return self

    def with_date_of_birth(self, value: str) -> ModelUserCreateFromInvitationRequestV3:
        self.date_of_birth = value
        return self

    def with_display_name(self, value: str) -> ModelUserCreateFromInvitationRequestV3:
        self.display_name = value
        return self

    def with_password(self, value: str) -> ModelUserCreateFromInvitationRequestV3:
        self.password = value
        return self

    def with_accepted_policies(self, value: List[LegalAcceptedPoliciesRequest]) -> ModelUserCreateFromInvitationRequestV3:
        self.accepted_policies = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_type"):
            result["authType"] = str(self.auth_type)
        elif include_empty:
            result["authType"] = str()
        if hasattr(self, "country"):
            result["country"] = str(self.country)
        elif include_empty:
            result["country"] = str()
        if hasattr(self, "date_of_birth"):
            result["dateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["dateOfBirth"] = str()
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = str()
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = str()
        if hasattr(self, "accepted_policies"):
            result["acceptedPolicies"] = [i0.to_dict(include_empty=include_empty) for i0 in self.accepted_policies]
        elif include_empty:
            result["acceptedPolicies"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auth_type: str,
        country: str,
        date_of_birth: str,
        display_name: str,
        password: str,
        accepted_policies: Optional[List[LegalAcceptedPoliciesRequest]] = None,
    ) -> ModelUserCreateFromInvitationRequestV3:
        instance = cls()
        instance.auth_type = auth_type
        instance.country = country
        instance.date_of_birth = date_of_birth
        instance.display_name = display_name
        instance.password = password
        if accepted_policies is not None:
            instance.accepted_policies = accepted_policies
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserCreateFromInvitationRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "authType" in dict_ and dict_["authType"] is not None:
            instance.auth_type = str(dict_["authType"])
        elif include_empty:
            instance.auth_type = str()
        if "country" in dict_ and dict_["country"] is not None:
            instance.country = str(dict_["country"])
        elif include_empty:
            instance.country = str()
        if "dateOfBirth" in dict_ and dict_["dateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["dateOfBirth"])
        elif include_empty:
            instance.date_of_birth = str()
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = str()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = str()
        if "acceptedPolicies" in dict_ and dict_["acceptedPolicies"] is not None:
            instance.accepted_policies = [LegalAcceptedPoliciesRequest.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["acceptedPolicies"]]
        elif include_empty:
            instance.accepted_policies = []
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelUserCreateFromInvitationRequestV3]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelUserCreateFromInvitationRequestV3]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelUserCreateFromInvitationRequestV3, List[ModelUserCreateFromInvitationRequestV3]]:
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
            "country": "country",
            "dateOfBirth": "date_of_birth",
            "displayName": "display_name",
            "password": "password",
            "acceptedPolicies": "accepted_policies",
        }

    # endregion static methods
