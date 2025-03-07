# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class EnvEnum(StrEnum):
    LIVE = "LIVE"
    SANDBOX = "SANDBOX"


class ResetJobRequest(Model):
    """Reset job request (ResetJobRequest)

    Properties:
        env: (env) OPTIONAL Union[str, EnvEnum]

        last_time: (lastTime) OPTIONAL str
    """

    # region fields

    env: Union[str, EnvEnum]  # OPTIONAL
    last_time: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_env(self, value: Union[str, EnvEnum]) -> ResetJobRequest:
        self.env = value
        return self

    def with_last_time(self, value: str) -> ResetJobRequest:
        self.last_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "env"):
            result["env"] = str(self.env)
        elif include_empty:
            result["env"] = Union[str, EnvEnum]()
        if hasattr(self, "last_time"):
            result["lastTime"] = str(self.last_time)
        elif include_empty:
            result["lastTime"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        env: Optional[Union[str, EnvEnum]] = None,
        last_time: Optional[str] = None,
        **kwargs,
    ) -> ResetJobRequest:
        instance = cls()
        if env is not None:
            instance.env = env
        if last_time is not None:
            instance.last_time = last_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ResetJobRequest:
        instance = cls()
        if not dict_:
            return instance
        if "env" in dict_ and dict_["env"] is not None:
            instance.env = str(dict_["env"])
        elif include_empty:
            instance.env = Union[str, EnvEnum]()
        if "lastTime" in dict_ and dict_["lastTime"] is not None:
            instance.last_time = str(dict_["lastTime"])
        elif include_empty:
            instance.last_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ResetJobRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ResetJobRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ResetJobRequest, List[ResetJobRequest], Dict[Any, ResetJobRequest]]:
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
            "env": "env",
            "lastTime": "last_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "env": False,
            "lastTime": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "env": ["LIVE", "SANDBOX"],
        }

    # endregion static methods
