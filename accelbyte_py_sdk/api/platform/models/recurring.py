# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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


class Recurring(Model):
    """Recurring (Recurring)

    Properties:
        cycle: (cycle) REQUIRED str

        fixed_free_days: (fixedFreeDays) REQUIRED int

        fixed_trial_cycles: (fixedTrialCycles) REQUIRED int

        grace_days: (graceDays) REQUIRED int
    """

    # region fields

    cycle: str                                                                                     # REQUIRED
    fixed_free_days: int                                                                           # REQUIRED
    fixed_trial_cycles: int                                                                        # REQUIRED
    grace_days: int                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cycle(self, value: str) -> Recurring:
        self.cycle = value
        return self

    def with_fixed_free_days(self, value: int) -> Recurring:
        self.fixed_free_days = value
        return self

    def with_fixed_trial_cycles(self, value: int) -> Recurring:
        self.fixed_trial_cycles = value
        return self

    def with_grace_days(self, value: int) -> Recurring:
        self.grace_days = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "cycle") or self.cycle is None:
            return False
        if not hasattr(self, "fixed_free_days") or self.fixed_free_days is None:
            return False
        if not hasattr(self, "fixed_trial_cycles") or self.fixed_trial_cycles is None:
            return False
        if not hasattr(self, "grace_days") or self.grace_days is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cycle"):
            result["cycle"] = str(self.cycle)
        elif include_empty:
            result["cycle"] = str()
        if hasattr(self, "fixed_free_days"):
            result["fixedFreeDays"] = int(self.fixed_free_days)
        elif include_empty:
            result["fixedFreeDays"] = int()
        if hasattr(self, "fixed_trial_cycles"):
            result["fixedTrialCycles"] = int(self.fixed_trial_cycles)
        elif include_empty:
            result["fixedTrialCycles"] = int()
        if hasattr(self, "grace_days"):
            result["graceDays"] = int(self.grace_days)
        elif include_empty:
            result["graceDays"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cycle: str,
        fixed_free_days: int,
        fixed_trial_cycles: int,
        grace_days: int,
    ) -> Recurring:
        instance = cls()
        instance.cycle = cycle
        instance.fixed_free_days = fixed_free_days
        instance.fixed_trial_cycles = fixed_trial_cycles
        instance.grace_days = grace_days
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Recurring:
        instance = cls()
        if not dict_:
            return instance
        if "cycle" in dict_ and dict_["cycle"] is not None:
            instance.cycle = str(dict_["cycle"])
        elif include_empty:
            instance.cycle = str()
        if "fixedFreeDays" in dict_ and dict_["fixedFreeDays"] is not None:
            instance.fixed_free_days = int(dict_["fixedFreeDays"])
        elif include_empty:
            instance.fixed_free_days = int()
        if "fixedTrialCycles" in dict_ and dict_["fixedTrialCycles"] is not None:
            instance.fixed_trial_cycles = int(dict_["fixedTrialCycles"])
        elif include_empty:
            instance.fixed_trial_cycles = int()
        if "graceDays" in dict_ and dict_["graceDays"] is not None:
            instance.grace_days = int(dict_["graceDays"])
        elif include_empty:
            instance.grace_days = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, Recurring]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[Recurring]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[Recurring, List[Recurring]]:
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
            "cycle": "cycle",
            "fixedFreeDays": "fixed_free_days",
            "fixedTrialCycles": "fixed_trial_cycles",
            "graceDays": "grace_days",
        }

    # endregion static methods
