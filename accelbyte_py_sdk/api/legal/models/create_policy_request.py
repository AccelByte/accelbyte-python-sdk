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
from ....core import StrEnum


class CountryTypeEnum(StrEnum):
    COUNTRY = "COUNTRY"
    COUNTRY_GROUP = "COUNTRY_GROUP"


class CreatePolicyRequest(Model):
    """Create policy request (CreatePolicyRequest)

    Properties:
        countries: (countries) OPTIONAL List[str]

        country_code: (countryCode) OPTIONAL str

        country_group_name: (countryGroupName) OPTIONAL str

        country_type: (countryType) OPTIONAL Union[str, CountryTypeEnum]

        description: (description) OPTIONAL str

        is_default_selection: (isDefaultSelection) OPTIONAL bool

        is_mandatory: (isMandatory) OPTIONAL bool

        policy_name: (policyName) OPTIONAL str

        should_notify_on_update: (shouldNotifyOnUpdate) OPTIONAL bool
    """

    # region fields

    countries: List[str]  # OPTIONAL
    country_code: str  # OPTIONAL
    country_group_name: str  # OPTIONAL
    country_type: Union[str, CountryTypeEnum]  # OPTIONAL
    description: str  # OPTIONAL
    is_default_selection: bool  # OPTIONAL
    is_mandatory: bool  # OPTIONAL
    policy_name: str  # OPTIONAL
    should_notify_on_update: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_countries(self, value: List[str]) -> CreatePolicyRequest:
        self.countries = value
        return self

    def with_country_code(self, value: str) -> CreatePolicyRequest:
        self.country_code = value
        return self

    def with_country_group_name(self, value: str) -> CreatePolicyRequest:
        self.country_group_name = value
        return self

    def with_country_type(
        self, value: Union[str, CountryTypeEnum]
    ) -> CreatePolicyRequest:
        self.country_type = value
        return self

    def with_description(self, value: str) -> CreatePolicyRequest:
        self.description = value
        return self

    def with_is_default_selection(self, value: bool) -> CreatePolicyRequest:
        self.is_default_selection = value
        return self

    def with_is_mandatory(self, value: bool) -> CreatePolicyRequest:
        self.is_mandatory = value
        return self

    def with_policy_name(self, value: str) -> CreatePolicyRequest:
        self.policy_name = value
        return self

    def with_should_notify_on_update(self, value: bool) -> CreatePolicyRequest:
        self.should_notify_on_update = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "countries"):
            result["countries"] = [str(i0) for i0 in self.countries]
        elif include_empty:
            result["countries"] = []
        if hasattr(self, "country_code"):
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        if hasattr(self, "country_group_name"):
            result["countryGroupName"] = str(self.country_group_name)
        elif include_empty:
            result["countryGroupName"] = ""
        if hasattr(self, "country_type"):
            result["countryType"] = str(self.country_type)
        elif include_empty:
            result["countryType"] = Union[str, CountryTypeEnum]()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        countries: Optional[List[str]] = None,
        country_code: Optional[str] = None,
        country_group_name: Optional[str] = None,
        country_type: Optional[Union[str, CountryTypeEnum]] = None,
        description: Optional[str] = None,
        is_default_selection: Optional[bool] = None,
        is_mandatory: Optional[bool] = None,
        policy_name: Optional[str] = None,
        should_notify_on_update: Optional[bool] = None,
        **kwargs,
    ) -> CreatePolicyRequest:
        instance = cls()
        if countries is not None:
            instance.countries = countries
        if country_code is not None:
            instance.country_code = country_code
        if country_group_name is not None:
            instance.country_group_name = country_group_name
        if country_type is not None:
            instance.country_type = country_type
        if description is not None:
            instance.description = description
        if is_default_selection is not None:
            instance.is_default_selection = is_default_selection
        if is_mandatory is not None:
            instance.is_mandatory = is_mandatory
        if policy_name is not None:
            instance.policy_name = policy_name
        if should_notify_on_update is not None:
            instance.should_notify_on_update = should_notify_on_update
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreatePolicyRequest:
        instance = cls()
        if not dict_:
            return instance
        if "countries" in dict_ and dict_["countries"] is not None:
            instance.countries = [str(i0) for i0 in dict_["countries"]]
        elif include_empty:
            instance.countries = []
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        if "countryGroupName" in dict_ and dict_["countryGroupName"] is not None:
            instance.country_group_name = str(dict_["countryGroupName"])
        elif include_empty:
            instance.country_group_name = ""
        if "countryType" in dict_ and dict_["countryType"] is not None:
            instance.country_type = str(dict_["countryType"])
        elif include_empty:
            instance.country_type = Union[str, CountryTypeEnum]()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CreatePolicyRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CreatePolicyRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CreatePolicyRequest, List[CreatePolicyRequest], Dict[Any, CreatePolicyRequest]
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
            "countries": "countries",
            "countryCode": "country_code",
            "countryGroupName": "country_group_name",
            "countryType": "country_type",
            "description": "description",
            "isDefaultSelection": "is_default_selection",
            "isMandatory": "is_mandatory",
            "policyName": "policy_name",
            "shouldNotifyOnUpdate": "should_notify_on_update",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "countries": False,
            "countryCode": False,
            "countryGroupName": False,
            "countryType": False,
            "description": False,
            "isDefaultSelection": False,
            "isMandatory": False,
            "policyName": False,
            "shouldNotifyOnUpdate": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "countryType": ["COUNTRY", "COUNTRY_GROUP"],
        }

    # endregion static methods
