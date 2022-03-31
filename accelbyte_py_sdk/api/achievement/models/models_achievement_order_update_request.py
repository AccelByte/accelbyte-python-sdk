# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-achievement-service ()

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelsAchievementOrderUpdateRequest(Model):
    """Models achievement order update request (models.AchievementOrderUpdateRequest)

    Properties:
        target_order: (targetOrder) REQUIRED int
    """

    # region fields

    target_order: int                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_target_order(self, value: int) -> ModelsAchievementOrderUpdateRequest:
        self.target_order = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "target_order") or self.target_order is None:
            return False
        # enum checks
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "target_order"):
            result["targetOrder"] = int(self.target_order)
        elif include_empty:
            result["targetOrder"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        target_order: int,
    ) -> ModelsAchievementOrderUpdateRequest:
        instance = cls()
        instance.target_order = target_order
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAchievementOrderUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "targetOrder" in dict_ and dict_["targetOrder"] is not None:
            instance.target_order = int(dict_["targetOrder"])
        elif include_empty:
            instance.target_order = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsAchievementOrderUpdateRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsAchievementOrderUpdateRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsAchievementOrderUpdateRequest, List[ModelsAchievementOrderUpdateRequest]]:
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
            "targetOrder": "target_order",
        }

    # endregion static methods
