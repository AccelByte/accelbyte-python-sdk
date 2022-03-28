# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-legal-service (1.19.0)

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


class PolicyObject(Model):
    """Policy object (PolicyObject)

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

        readable_id: (readableId) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    country_code: str                                                                              # REQUIRED
    id_: str                                                                                       # REQUIRED
    is_default_opted: bool                                                                         # REQUIRED
    is_default_selection: bool                                                                     # REQUIRED
    is_mandatory: bool                                                                             # REQUIRED
    policy_name: str                                                                               # REQUIRED
    should_notify_on_update: bool                                                                  # REQUIRED
    country_group_code: str                                                                        # OPTIONAL
    created_at: str                                                                                # OPTIONAL
    description: str                                                                               # OPTIONAL
    readable_id: str                                                                               # OPTIONAL
    updated_at: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_country_code(self, value: str) -> PolicyObject:
        self.country_code = value
        return self

    def with_id(self, value: str) -> PolicyObject:
        self.id_ = value
        return self

    def with_is_default_opted(self, value: bool) -> PolicyObject:
        self.is_default_opted = value
        return self

    def with_is_default_selection(self, value: bool) -> PolicyObject:
        self.is_default_selection = value
        return self

    def with_is_mandatory(self, value: bool) -> PolicyObject:
        self.is_mandatory = value
        return self

    def with_policy_name(self, value: str) -> PolicyObject:
        self.policy_name = value
        return self

    def with_should_notify_on_update(self, value: bool) -> PolicyObject:
        self.should_notify_on_update = value
        return self

    def with_country_group_code(self, value: str) -> PolicyObject:
        self.country_group_code = value
        return self

    def with_created_at(self, value: str) -> PolicyObject:
        self.created_at = value
        return self

    def with_description(self, value: str) -> PolicyObject:
        self.description = value
        return self

    def with_readable_id(self, value: str) -> PolicyObject:
        self.readable_id = value
        return self

    def with_updated_at(self, value: str) -> PolicyObject:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "country_code") or self.country_code is None:
            return False
        if not hasattr(self, "id_") or self.id_ is None:
            return False
        if not hasattr(self, "is_default_opted") or self.is_default_opted is None:
            return False
        if not hasattr(self, "is_default_selection") or self.is_default_selection is None:
            return False
        if not hasattr(self, "is_mandatory") or self.is_mandatory is None:
            return False
        if not hasattr(self, "policy_name") or self.policy_name is None:
            return False
        if not hasattr(self, "should_notify_on_update") or self.should_notify_on_update is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "country_code"):
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "is_default_opted"):
            result["isDefaultOpted"] = bool(self.is_default_opted)
        elif include_empty:
            result["isDefaultOpted"] = bool()
        if hasattr(self, "is_default_selection"):
            result["isDefaultSelection"] = bool(self.is_default_selection)
        elif include_empty:
            result["isDefaultSelection"] = bool()
        if hasattr(self, "is_mandatory"):
            result["isMandatory"] = bool(self.is_mandatory)
        elif include_empty:
            result["isMandatory"] = bool()
        if hasattr(self, "policy_name"):
            result["policyName"] = str(self.policy_name)
        elif include_empty:
            result["policyName"] = str()
        if hasattr(self, "should_notify_on_update"):
            result["shouldNotifyOnUpdate"] = bool(self.should_notify_on_update)
        elif include_empty:
            result["shouldNotifyOnUpdate"] = bool()
        if hasattr(self, "country_group_code"):
            result["countryGroupCode"] = str(self.country_group_code)
        elif include_empty:
            result["countryGroupCode"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "readable_id"):
            result["readableId"] = str(self.readable_id)
        elif include_empty:
            result["readableId"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
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
        readable_id: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> PolicyObject:
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
        if readable_id is not None:
            instance.readable_id = readable_id
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PolicyObject:
        instance = cls()
        if not dict_:
            return instance
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "isDefaultOpted" in dict_ and dict_["isDefaultOpted"] is not None:
            instance.is_default_opted = bool(dict_["isDefaultOpted"])
        elif include_empty:
            instance.is_default_opted = bool()
        if "isDefaultSelection" in dict_ and dict_["isDefaultSelection"] is not None:
            instance.is_default_selection = bool(dict_["isDefaultSelection"])
        elif include_empty:
            instance.is_default_selection = bool()
        if "isMandatory" in dict_ and dict_["isMandatory"] is not None:
            instance.is_mandatory = bool(dict_["isMandatory"])
        elif include_empty:
            instance.is_mandatory = bool()
        if "policyName" in dict_ and dict_["policyName"] is not None:
            instance.policy_name = str(dict_["policyName"])
        elif include_empty:
            instance.policy_name = str()
        if "shouldNotifyOnUpdate" in dict_ and dict_["shouldNotifyOnUpdate"] is not None:
            instance.should_notify_on_update = bool(dict_["shouldNotifyOnUpdate"])
        elif include_empty:
            instance.should_notify_on_update = bool()
        if "countryGroupCode" in dict_ and dict_["countryGroupCode"] is not None:
            instance.country_group_code = str(dict_["countryGroupCode"])
        elif include_empty:
            instance.country_group_code = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "readableId" in dict_ and dict_["readableId"] is not None:
            instance.readable_id = str(dict_["readableId"])
        elif include_empty:
            instance.readable_id = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PolicyObject]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PolicyObject]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PolicyObject, List[PolicyObject]]:
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
            "readableId": "readable_id",
            "updatedAt": "updated_at",
        }

    # endregion static methods
