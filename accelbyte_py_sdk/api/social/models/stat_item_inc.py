# Auto-generated at 2021-10-14T22:17:14.163963+08:00
# from: Justice Social Service (1.17.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class StatItemInc(Model):
    """Stat item inc (StatItemInc)

    Properties:
        inc: (inc) OPTIONAL float
    """

    # region fields

    inc: float                                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_inc(self, value: float) -> StatItemInc:
        self.inc = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "inc") and self.inc:
            result["inc"] = float(self.inc)
        elif include_empty:
            result["inc"] = float()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        inc: Optional[float] = None,
    ) -> StatItemInc:
        instance = cls()
        if inc is not None:
            instance.inc = inc
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatItemInc:
        instance = cls()
        if not dict_:
            return instance
        if "inc" in dict_ and dict_["inc"] is not None:
            instance.inc = float(dict_["inc"])
        elif include_empty:
            instance.inc = float()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "inc": "inc",
        }

    # endregion static methods
