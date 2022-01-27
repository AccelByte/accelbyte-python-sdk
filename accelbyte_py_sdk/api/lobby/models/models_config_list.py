# justice-lobby-server (staging)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.models_config import ModelsConfig


class ModelsConfigList(Model):
    """Models config list (models.ConfigList)

    Properties:
        configs: (configs) REQUIRED List[ModelsConfig]
    """

    # region fields

    configs: List[ModelsConfig]                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_configs(self, value: List[ModelsConfig]) -> ModelsConfigList:
        self.configs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "configs"):
            result["configs"] = [i0.to_dict(include_empty=include_empty) for i0 in self.configs]
        elif include_empty:
            result["configs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        configs: List[ModelsConfig],
    ) -> ModelsConfigList:
        instance = cls()
        instance.configs = configs
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsConfigList:
        instance = cls()
        if not dict_:
            return instance
        if "configs" in dict_ and dict_["configs"] is not None:
            instance.configs = [ModelsConfig.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["configs"]]
        elif include_empty:
            instance.configs = []
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsConfigList]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsConfigList]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsConfigList, List[ModelsConfigList]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "configs": "configs",
        }

    # endregion static methods
