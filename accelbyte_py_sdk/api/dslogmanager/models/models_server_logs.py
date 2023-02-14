# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ds Log Manager Service (3.2.0)

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


class ModelsServerLogs(Model):
    """Models server logs (models.ServerLogs)

    Properties:
        std_err_logs: (std_err_logs) REQUIRED str

        std_out_logs: (std_out_logs) REQUIRED str
    """

    # region fields

    std_err_logs: str  # REQUIRED
    std_out_logs: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_std_err_logs(self, value: str) -> ModelsServerLogs:
        self.std_err_logs = value
        return self

    def with_std_out_logs(self, value: str) -> ModelsServerLogs:
        self.std_out_logs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "std_err_logs"):
            result["std_err_logs"] = str(self.std_err_logs)
        elif include_empty:
            result["std_err_logs"] = ""
        if hasattr(self, "std_out_logs"):
            result["std_out_logs"] = str(self.std_out_logs)
        elif include_empty:
            result["std_out_logs"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        std_err_logs: str,
        std_out_logs: str,
    ) -> ModelsServerLogs:
        instance = cls()
        instance.std_err_logs = std_err_logs
        instance.std_out_logs = std_out_logs
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsServerLogs:
        instance = cls()
        if not dict_:
            return instance
        if "std_err_logs" in dict_ and dict_["std_err_logs"] is not None:
            instance.std_err_logs = str(dict_["std_err_logs"])
        elif include_empty:
            instance.std_err_logs = ""
        if "std_out_logs" in dict_ and dict_["std_out_logs"] is not None:
            instance.std_out_logs = str(dict_["std_out_logs"])
        elif include_empty:
            instance.std_out_logs = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsServerLogs]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsServerLogs]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsServerLogs, List[ModelsServerLogs], Dict[Any, ModelsServerLogs]]:
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
            "std_err_logs": "std_err_logs",
            "std_out_logs": "std_out_logs",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "std_err_logs": True,
            "std_out_logs": True,
        }

    # endregion static methods
