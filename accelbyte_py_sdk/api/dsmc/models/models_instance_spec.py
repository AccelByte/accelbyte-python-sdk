# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

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


class ModelsInstanceSpec(Model):
    """Models instance spec (models.InstanceSpec)

    Properties:
        cpu: (cpu) REQUIRED int

        mem: (mem) REQUIRED int
    """

    # region fields

    cpu: int  # REQUIRED
    mem: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cpu(self, value: int) -> ModelsInstanceSpec:
        self.cpu = value
        return self

    def with_mem(self, value: int) -> ModelsInstanceSpec:
        self.mem = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cpu"):
            result["cpu"] = int(self.cpu)
        elif include_empty:
            result["cpu"] = 0
        if hasattr(self, "mem"):
            result["mem"] = int(self.mem)
        elif include_empty:
            result["mem"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cpu: int,
        mem: int,
    ) -> ModelsInstanceSpec:
        instance = cls()
        instance.cpu = cpu
        instance.mem = mem
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsInstanceSpec:
        instance = cls()
        if not dict_:
            return instance
        if "cpu" in dict_ and dict_["cpu"] is not None:
            instance.cpu = int(dict_["cpu"])
        elif include_empty:
            instance.cpu = 0
        if "mem" in dict_ and dict_["mem"] is not None:
            instance.mem = int(dict_["mem"])
        elif include_empty:
            instance.mem = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsInstanceSpec]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsInstanceSpec]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsInstanceSpec, List[ModelsInstanceSpec], Dict[Any, ModelsInstanceSpec]
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
            "cpu": "cpu",
            "mem": "mem",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cpu": True,
            "mem": True,
        }

    # endregion static methods
