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


class StatImportInfo(Model):
    """Stat import info (StatImportInfo)

    Properties:
        failed_configs: (failedConfigs) REQUIRED List[str]

        ignored_configs: (ignoredConfigs) REQUIRED List[str]

        new_configs: (newConfigs) REQUIRED List[str]

        replaced_configs: (replacedConfigs) REQUIRED List[str]
    """

    # region fields

    failed_configs: List[str]  # REQUIRED
    ignored_configs: List[str]  # REQUIRED
    new_configs: List[str]  # REQUIRED
    replaced_configs: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_failed_configs(self, value: List[str]) -> StatImportInfo:
        self.failed_configs = value
        return self

    def with_ignored_configs(self, value: List[str]) -> StatImportInfo:
        self.ignored_configs = value
        return self

    def with_new_configs(self, value: List[str]) -> StatImportInfo:
        self.new_configs = value
        return self

    def with_replaced_configs(self, value: List[str]) -> StatImportInfo:
        self.replaced_configs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "failed_configs"):
            result["failedConfigs"] = [str(i0) for i0 in self.failed_configs]
        elif include_empty:
            result["failedConfigs"] = []
        if hasattr(self, "ignored_configs"):
            result["ignoredConfigs"] = [str(i0) for i0 in self.ignored_configs]
        elif include_empty:
            result["ignoredConfigs"] = []
        if hasattr(self, "new_configs"):
            result["newConfigs"] = [str(i0) for i0 in self.new_configs]
        elif include_empty:
            result["newConfigs"] = []
        if hasattr(self, "replaced_configs"):
            result["replacedConfigs"] = [str(i0) for i0 in self.replaced_configs]
        elif include_empty:
            result["replacedConfigs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        failed_configs: List[str],
        ignored_configs: List[str],
        new_configs: List[str],
        replaced_configs: List[str],
    ) -> StatImportInfo:
        instance = cls()
        instance.failed_configs = failed_configs
        instance.ignored_configs = ignored_configs
        instance.new_configs = new_configs
        instance.replaced_configs = replaced_configs
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> StatImportInfo:
        instance = cls()
        if not dict_:
            return instance
        if "failedConfigs" in dict_ and dict_["failedConfigs"] is not None:
            instance.failed_configs = [str(i0) for i0 in dict_["failedConfigs"]]
        elif include_empty:
            instance.failed_configs = []
        if "ignoredConfigs" in dict_ and dict_["ignoredConfigs"] is not None:
            instance.ignored_configs = [str(i0) for i0 in dict_["ignoredConfigs"]]
        elif include_empty:
            instance.ignored_configs = []
        if "newConfigs" in dict_ and dict_["newConfigs"] is not None:
            instance.new_configs = [str(i0) for i0 in dict_["newConfigs"]]
        elif include_empty:
            instance.new_configs = []
        if "replacedConfigs" in dict_ and dict_["replacedConfigs"] is not None:
            instance.replaced_configs = [str(i0) for i0 in dict_["replacedConfigs"]]
        elif include_empty:
            instance.replaced_configs = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StatImportInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatImportInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatImportInfo, List[StatImportInfo], Dict[Any, StatImportInfo]]:
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
            "failedConfigs": "failed_configs",
            "ignoredConfigs": "ignored_configs",
            "newConfigs": "new_configs",
            "replacedConfigs": "replaced_configs",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "failedConfigs": True,
            "ignoredConfigs": True,
            "newConfigs": True,
            "replacedConfigs": True,
        }

    # endregion static methods
