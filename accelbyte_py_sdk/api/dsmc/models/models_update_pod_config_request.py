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


class ModelsUpdatePodConfigRequest(Model):
    """Models update pod config request (models.UpdatePodConfigRequest)

    Properties:
        cpu_limit: (cpu_limit) REQUIRED int

        mem_limit: (mem_limit) REQUIRED int

        name: (name) REQUIRED str

        params: (params) REQUIRED str
    """

    # region fields

    cpu_limit: int  # REQUIRED
    mem_limit: int  # REQUIRED
    name: str  # REQUIRED
    params: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cpu_limit(self, value: int) -> ModelsUpdatePodConfigRequest:
        self.cpu_limit = value
        return self

    def with_mem_limit(self, value: int) -> ModelsUpdatePodConfigRequest:
        self.mem_limit = value
        return self

    def with_name(self, value: str) -> ModelsUpdatePodConfigRequest:
        self.name = value
        return self

    def with_params(self, value: str) -> ModelsUpdatePodConfigRequest:
        self.params = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cpu_limit"):
            result["cpu_limit"] = int(self.cpu_limit)
        elif include_empty:
            result["cpu_limit"] = 0
        if hasattr(self, "mem_limit"):
            result["mem_limit"] = int(self.mem_limit)
        elif include_empty:
            result["mem_limit"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "params"):
            result["params"] = str(self.params)
        elif include_empty:
            result["params"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cpu_limit: int,
        mem_limit: int,
        name: str,
        params: str,
    ) -> ModelsUpdatePodConfigRequest:
        instance = cls()
        instance.cpu_limit = cpu_limit
        instance.mem_limit = mem_limit
        instance.name = name
        instance.params = params
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdatePodConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "cpu_limit" in dict_ and dict_["cpu_limit"] is not None:
            instance.cpu_limit = int(dict_["cpu_limit"])
        elif include_empty:
            instance.cpu_limit = 0
        if "mem_limit" in dict_ and dict_["mem_limit"] is not None:
            instance.mem_limit = int(dict_["mem_limit"])
        elif include_empty:
            instance.mem_limit = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "params" in dict_ and dict_["params"] is not None:
            instance.params = str(dict_["params"])
        elif include_empty:
            instance.params = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdatePodConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdatePodConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdatePodConfigRequest,
        List[ModelsUpdatePodConfigRequest],
        Dict[Any, ModelsUpdatePodConfigRequest],
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
            "cpu_limit": "cpu_limit",
            "mem_limit": "mem_limit",
            "name": "name",
            "params": "params",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cpu_limit": True,
            "mem_limit": True,
            "name": True,
            "params": True,
        }

    # endregion static methods
