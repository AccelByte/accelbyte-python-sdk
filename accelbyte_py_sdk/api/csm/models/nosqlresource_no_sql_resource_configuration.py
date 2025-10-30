# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class NosqlresourceNoSQLResourceConfiguration(Model):
    """Nosqlresource no SQL resource configuration (nosqlresource.NoSQLResourceConfiguration)

    Properties:
        max_dcu: (maxDCU) REQUIRED float

        min_dcu: (minDCU) REQUIRED float

        profile_name: (profileName) OPTIONAL str
    """

    # region fields

    max_dcu: float  # REQUIRED
    min_dcu: float  # REQUIRED
    profile_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_max_dcu(self, value: float) -> NosqlresourceNoSQLResourceConfiguration:
        self.max_dcu = value
        return self

    def with_min_dcu(self, value: float) -> NosqlresourceNoSQLResourceConfiguration:
        self.min_dcu = value
        return self

    def with_profile_name(self, value: str) -> NosqlresourceNoSQLResourceConfiguration:
        self.profile_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_dcu"):
            result["maxDCU"] = float(self.max_dcu)
        elif include_empty:
            result["maxDCU"] = 0.0
        if hasattr(self, "min_dcu"):
            result["minDCU"] = float(self.min_dcu)
        elif include_empty:
            result["minDCU"] = 0.0
        if hasattr(self, "profile_name"):
            result["profileName"] = str(self.profile_name)
        elif include_empty:
            result["profileName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_dcu: float,
        min_dcu: float,
        profile_name: Optional[str] = None,
        **kwargs,
    ) -> NosqlresourceNoSQLResourceConfiguration:
        instance = cls()
        instance.max_dcu = max_dcu
        instance.min_dcu = min_dcu
        if profile_name is not None:
            instance.profile_name = profile_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> NosqlresourceNoSQLResourceConfiguration:
        instance = cls()
        if not dict_:
            return instance
        if "maxDCU" in dict_ and dict_["maxDCU"] is not None:
            instance.max_dcu = float(dict_["maxDCU"])
        elif include_empty:
            instance.max_dcu = 0.0
        if "minDCU" in dict_ and dict_["minDCU"] is not None:
            instance.min_dcu = float(dict_["minDCU"])
        elif include_empty:
            instance.min_dcu = 0.0
        if "profileName" in dict_ and dict_["profileName"] is not None:
            instance.profile_name = str(dict_["profileName"])
        elif include_empty:
            instance.profile_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, NosqlresourceNoSQLResourceConfiguration]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[NosqlresourceNoSQLResourceConfiguration]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        NosqlresourceNoSQLResourceConfiguration,
        List[NosqlresourceNoSQLResourceConfiguration],
        Dict[Any, NosqlresourceNoSQLResourceConfiguration],
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
            "maxDCU": "max_dcu",
            "minDCU": "min_dcu",
            "profileName": "profile_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxDCU": True,
            "minDCU": True,
            "profileName": False,
        }

    # endregion static methods
