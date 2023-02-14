# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Social Service (1.33.0)

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


class ADTOObjectForUserStatItemValue(Model):
    """A DTO object for user stat item value (A DTO object for user stat item value)

    Properties:
        profile_id: (profileId) OPTIONAL str

        stat_code: (statCode) OPTIONAL str

        value: (value) OPTIONAL float
    """

    # region fields

    profile_id: str  # OPTIONAL
    stat_code: str  # OPTIONAL
    value: float  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_profile_id(self, value: str) -> ADTOObjectForUserStatItemValue:
        self.profile_id = value
        return self

    def with_stat_code(self, value: str) -> ADTOObjectForUserStatItemValue:
        self.stat_code = value
        return self

    def with_value(self, value: float) -> ADTOObjectForUserStatItemValue:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "profile_id"):
            result["profileId"] = str(self.profile_id)
        elif include_empty:
            result["profileId"] = ""
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "value"):
            result["value"] = float(self.value)
        elif include_empty:
            result["value"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        profile_id: Optional[str] = None,
        stat_code: Optional[str] = None,
        value: Optional[float] = None,
    ) -> ADTOObjectForUserStatItemValue:
        instance = cls()
        if profile_id is not None:
            instance.profile_id = profile_id
        if stat_code is not None:
            instance.stat_code = stat_code
        if value is not None:
            instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ADTOObjectForUserStatItemValue:
        instance = cls()
        if not dict_:
            return instance
        if "profileId" in dict_ and dict_["profileId"] is not None:
            instance.profile_id = str(dict_["profileId"])
        elif include_empty:
            instance.profile_id = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = float(dict_["value"])
        elif include_empty:
            instance.value = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ADTOObjectForUserStatItemValue]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ADTOObjectForUserStatItemValue]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ADTOObjectForUserStatItemValue,
        List[ADTOObjectForUserStatItemValue],
        Dict[Any, ADTOObjectForUserStatItemValue],
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
            "profileId": "profile_id",
            "statCode": "stat_code",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "profileId": False,
            "statCode": False,
            "value": False,
        }

    # endregion static methods
