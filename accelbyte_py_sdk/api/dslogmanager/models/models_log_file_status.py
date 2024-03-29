# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ds Log Manager Service

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


class ModelsLogFileStatus(Model):
    """Models log file status (models.LogFileStatus)

    Properties:
        log_existence: (log_existence) REQUIRED bool
    """

    # region fields

    log_existence: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_log_existence(self, value: bool) -> ModelsLogFileStatus:
        self.log_existence = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "log_existence"):
            result["log_existence"] = bool(self.log_existence)
        elif include_empty:
            result["log_existence"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, log_existence: bool, **kwargs) -> ModelsLogFileStatus:
        instance = cls()
        instance.log_existence = log_existence
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsLogFileStatus:
        instance = cls()
        if not dict_:
            return instance
        if "log_existence" in dict_ and dict_["log_existence"] is not None:
            instance.log_existence = bool(dict_["log_existence"])
        elif include_empty:
            instance.log_existence = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsLogFileStatus]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsLogFileStatus]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsLogFileStatus, List[ModelsLogFileStatus], Dict[Any, ModelsLogFileStatus]
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
            "log_existence": "log_existence",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "log_existence": True,
        }

    # endregion static methods
