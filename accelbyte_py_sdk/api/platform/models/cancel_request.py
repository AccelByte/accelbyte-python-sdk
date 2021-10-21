# Auto-generated at 2021-10-21T08:52:30.874632+08:00
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


class CancelRequest(Model):
    """Cancel request (CancelRequest)

    Properties:
        immediate: (immediate) OPTIONAL bool

        reason: (reason) OPTIONAL str
    """

    # region fields

    immediate: bool                                                                                # OPTIONAL
    reason: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_immediate(self, value: bool) -> CancelRequest:
        self.immediate = value
        return self

    def with_reason(self, value: str) -> CancelRequest:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "immediate") and self.immediate:
            result["immediate"] = bool(self.immediate)
        elif include_empty:
            result["immediate"] = bool()
        if hasattr(self, "reason") and self.reason:
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        immediate: Optional[bool] = None,
        reason: Optional[str] = None,
    ) -> CancelRequest:
        instance = cls()
        if immediate is not None:
            instance.immediate = immediate
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CancelRequest:
        instance = cls()
        if not dict_:
            return instance
        if "immediate" in dict_ and dict_["immediate"] is not None:
            instance.immediate = bool(dict_["immediate"])
        elif include_empty:
            instance.immediate = bool()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "immediate": "immediate",
            "reason": "reason",
        }

    # endregion static methods
