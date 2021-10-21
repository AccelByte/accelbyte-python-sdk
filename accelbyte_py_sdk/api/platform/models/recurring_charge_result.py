# Auto-generated at 2021-10-21T08:52:30.867377+08:00
# from: Justice platform Service (3.34.0)

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


class RecurringChargeResult(Model):
    """Recurring charge result (RecurringChargeResult)

    Properties:
        triggered: (triggered) REQUIRED bool

        code: (code) OPTIONAL str

        detail: (detail) OPTIONAL str
    """

    # region fields

    triggered: bool                                                                                # REQUIRED
    code: str                                                                                      # OPTIONAL
    detail: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_triggered(self, value: bool) -> RecurringChargeResult:
        self.triggered = value
        return self

    def with_code(self, value: str) -> RecurringChargeResult:
        self.code = value
        return self

    def with_detail(self, value: str) -> RecurringChargeResult:
        self.detail = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "triggered") and self.triggered:
            result["triggered"] = bool(self.triggered)
        elif include_empty:
            result["triggered"] = bool()
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "detail") and self.detail:
            result["detail"] = str(self.detail)
        elif include_empty:
            result["detail"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        triggered: bool,
        code: Optional[str] = None,
        detail: Optional[str] = None,
    ) -> RecurringChargeResult:
        instance = cls()
        instance.triggered = triggered
        if code is not None:
            instance.code = code
        if detail is not None:
            instance.detail = detail
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RecurringChargeResult:
        instance = cls()
        if not dict_:
            return instance
        if "triggered" in dict_ and dict_["triggered"] is not None:
            instance.triggered = bool(dict_["triggered"])
        elif include_empty:
            instance.triggered = bool()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "detail" in dict_ and dict_["detail"] is not None:
            instance.detail = str(dict_["detail"])
        elif include_empty:
            instance.detail = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "triggered": "triggered",
            "code": "code",
            "detail": "detail",
        }

    # endregion static methods
