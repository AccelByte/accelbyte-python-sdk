# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Dsm Controller Service

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


class ModelsDeleteZombieRequest(Model):
    """Models delete zombie request (models.DeleteZombieRequest)

    Properties:
        job_count: (JobCount) REQUIRED int

        region: (Region) REQUIRED str

        timeout_second: (TimeoutSecond) REQUIRED int

        zombie_count: (ZombieCount) REQUIRED int
    """

    # region fields

    job_count: int  # REQUIRED
    region: str  # REQUIRED
    timeout_second: int  # REQUIRED
    zombie_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_job_count(self, value: int) -> ModelsDeleteZombieRequest:
        self.job_count = value
        return self

    def with_region(self, value: str) -> ModelsDeleteZombieRequest:
        self.region = value
        return self

    def with_timeout_second(self, value: int) -> ModelsDeleteZombieRequest:
        self.timeout_second = value
        return self

    def with_zombie_count(self, value: int) -> ModelsDeleteZombieRequest:
        self.zombie_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "job_count"):
            result["JobCount"] = int(self.job_count)
        elif include_empty:
            result["JobCount"] = 0
        if hasattr(self, "region"):
            result["Region"] = str(self.region)
        elif include_empty:
            result["Region"] = ""
        if hasattr(self, "timeout_second"):
            result["TimeoutSecond"] = int(self.timeout_second)
        elif include_empty:
            result["TimeoutSecond"] = 0
        if hasattr(self, "zombie_count"):
            result["ZombieCount"] = int(self.zombie_count)
        elif include_empty:
            result["ZombieCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        job_count: int,
        region: str,
        timeout_second: int,
        zombie_count: int,
        **kwargs,
    ) -> ModelsDeleteZombieRequest:
        instance = cls()
        instance.job_count = job_count
        instance.region = region
        instance.timeout_second = timeout_second
        instance.zombie_count = zombie_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDeleteZombieRequest:
        instance = cls()
        if not dict_:
            return instance
        if "JobCount" in dict_ and dict_["JobCount"] is not None:
            instance.job_count = int(dict_["JobCount"])
        elif include_empty:
            instance.job_count = 0
        if "Region" in dict_ and dict_["Region"] is not None:
            instance.region = str(dict_["Region"])
        elif include_empty:
            instance.region = ""
        if "TimeoutSecond" in dict_ and dict_["TimeoutSecond"] is not None:
            instance.timeout_second = int(dict_["TimeoutSecond"])
        elif include_empty:
            instance.timeout_second = 0
        if "ZombieCount" in dict_ and dict_["ZombieCount"] is not None:
            instance.zombie_count = int(dict_["ZombieCount"])
        elif include_empty:
            instance.zombie_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDeleteZombieRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDeleteZombieRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDeleteZombieRequest,
        List[ModelsDeleteZombieRequest],
        Dict[Any, ModelsDeleteZombieRequest],
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
            "JobCount": "job_count",
            "Region": "region",
            "TimeoutSecond": "timeout_second",
            "ZombieCount": "zombie_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "JobCount": True,
            "Region": True,
            "TimeoutSecond": True,
            "ZombieCount": True,
        }

    # endregion static methods
