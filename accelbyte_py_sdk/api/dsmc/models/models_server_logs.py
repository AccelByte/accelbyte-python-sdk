# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: justice_py_sdk_codegen/__main__.py

# justice-dsm-controller-service (3.4.0)

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
        logs: (logs) REQUIRED str
    """

    # region fields

    logs: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_logs(self, value: str) -> ModelsServerLogs:
        self.logs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "logs"):
            result["logs"] = str(self.logs)
        elif include_empty:
            result["logs"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        logs: str,
    ) -> ModelsServerLogs:
        instance = cls()
        instance.logs = logs
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsServerLogs:
        instance = cls()
        if not dict_:
            return instance
        if "logs" in dict_ and dict_["logs"] is not None:
            instance.logs = str(dict_["logs"])
        elif include_empty:
            instance.logs = ""
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
            "logs": "logs",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "logs": True,
        }

    # endregion static methods
