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


class SqlresourceSQLResourceConfiguration(Model):
    """Sqlresource SQL resource configuration (sqlresource.SQLResourceConfiguration)

    Properties:
        max_acu: (maxACU) REQUIRED float

        min_acu: (minACU) REQUIRED float

        multi_az: (multiAZ) REQUIRED bool

        profile_name: (profileName) OPTIONAL str
    """

    # region fields

    max_acu: float  # REQUIRED
    min_acu: float  # REQUIRED
    multi_az: bool  # REQUIRED
    profile_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_max_acu(self, value: float) -> SqlresourceSQLResourceConfiguration:
        self.max_acu = value
        return self

    def with_min_acu(self, value: float) -> SqlresourceSQLResourceConfiguration:
        self.min_acu = value
        return self

    def with_multi_az(self, value: bool) -> SqlresourceSQLResourceConfiguration:
        self.multi_az = value
        return self

    def with_profile_name(self, value: str) -> SqlresourceSQLResourceConfiguration:
        self.profile_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_acu"):
            result["maxACU"] = float(self.max_acu)
        elif include_empty:
            result["maxACU"] = 0.0
        if hasattr(self, "min_acu"):
            result["minACU"] = float(self.min_acu)
        elif include_empty:
            result["minACU"] = 0.0
        if hasattr(self, "multi_az"):
            result["multiAZ"] = bool(self.multi_az)
        elif include_empty:
            result["multiAZ"] = False
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
        max_acu: float,
        min_acu: float,
        multi_az: bool,
        profile_name: Optional[str] = None,
        **kwargs,
    ) -> SqlresourceSQLResourceConfiguration:
        instance = cls()
        instance.max_acu = max_acu
        instance.min_acu = min_acu
        instance.multi_az = multi_az
        if profile_name is not None:
            instance.profile_name = profile_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SqlresourceSQLResourceConfiguration:
        instance = cls()
        if not dict_:
            return instance
        if "maxACU" in dict_ and dict_["maxACU"] is not None:
            instance.max_acu = float(dict_["maxACU"])
        elif include_empty:
            instance.max_acu = 0.0
        if "minACU" in dict_ and dict_["minACU"] is not None:
            instance.min_acu = float(dict_["minACU"])
        elif include_empty:
            instance.min_acu = 0.0
        if "multiAZ" in dict_ and dict_["multiAZ"] is not None:
            instance.multi_az = bool(dict_["multiAZ"])
        elif include_empty:
            instance.multi_az = False
        if "profileName" in dict_ and dict_["profileName"] is not None:
            instance.profile_name = str(dict_["profileName"])
        elif include_empty:
            instance.profile_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SqlresourceSQLResourceConfiguration]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SqlresourceSQLResourceConfiguration]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SqlresourceSQLResourceConfiguration,
        List[SqlresourceSQLResourceConfiguration],
        Dict[Any, SqlresourceSQLResourceConfiguration],
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
            "maxACU": "max_acu",
            "minACU": "min_acu",
            "multiAZ": "multi_az",
            "profileName": "profile_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxACU": True,
            "minACU": True,
            "multiAZ": True,
            "profileName": False,
        }

    # endregion static methods
