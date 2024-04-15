# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ModelsCategoryHook(Model):
    """Models category hook (models.CategoryHook)

    Properties:
        driver: (driver) OPTIONAL str

        params: (params) OPTIONAL Dict[str, Any]
    """

    # region fields

    driver: str  # OPTIONAL
    params: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_driver(self, value: str) -> ModelsCategoryHook:
        self.driver = value
        return self

    def with_params(self, value: Dict[str, Any]) -> ModelsCategoryHook:
        self.params = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "driver"):
            result["driver"] = str(self.driver)
        elif include_empty:
            result["driver"] = ""
        if hasattr(self, "params"):
            result["params"] = {str(k0): v0 for k0, v0 in self.params.items()}
        elif include_empty:
            result["params"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        driver: Optional[str] = None,
        params: Optional[Dict[str, Any]] = None,
        **kwargs,
    ) -> ModelsCategoryHook:
        instance = cls()
        if driver is not None:
            instance.driver = driver
        if params is not None:
            instance.params = params
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCategoryHook:
        instance = cls()
        if not dict_:
            return instance
        if "driver" in dict_ and dict_["driver"] is not None:
            instance.driver = str(dict_["driver"])
        elif include_empty:
            instance.driver = ""
        if "params" in dict_ and dict_["params"] is not None:
            instance.params = {str(k0): v0 for k0, v0 in dict_["params"].items()}
        elif include_empty:
            instance.params = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCategoryHook]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCategoryHook]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCategoryHook, List[ModelsCategoryHook], Dict[Any, ModelsCategoryHook]
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
            "driver": "driver",
            "params": "params",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "driver": False,
            "params": False,
        }

    # endregion static methods
