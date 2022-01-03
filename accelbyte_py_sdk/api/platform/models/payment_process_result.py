# justice-platform-service (3.40.0)

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


class PaymentProcessResult(Model):
    """Payment process result (PaymentProcessResult)

    Properties:
        pending: (pending) REQUIRED bool

        success: (success) REQUIRED bool

        reason: (reason) OPTIONAL str

        redirect_url: (redirectUrl) OPTIONAL str
    """

    # region fields

    pending: bool                                                                                  # REQUIRED
    success: bool                                                                                  # REQUIRED
    reason: str                                                                                    # OPTIONAL
    redirect_url: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_pending(self, value: bool) -> PaymentProcessResult:
        self.pending = value
        return self

    def with_success(self, value: bool) -> PaymentProcessResult:
        self.success = value
        return self

    def with_reason(self, value: str) -> PaymentProcessResult:
        self.reason = value
        return self

    def with_redirect_url(self, value: str) -> PaymentProcessResult:
        self.redirect_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pending"):
            result["pending"] = bool(self.pending)
        elif include_empty:
            result["pending"] = bool()
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = bool()
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = str()
        if hasattr(self, "redirect_url"):
            result["redirectUrl"] = str(self.redirect_url)
        elif include_empty:
            result["redirectUrl"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        pending: bool,
        success: bool,
        reason: Optional[str] = None,
        redirect_url: Optional[str] = None,
    ) -> PaymentProcessResult:
        instance = cls()
        instance.pending = pending
        instance.success = success
        if reason is not None:
            instance.reason = reason
        if redirect_url is not None:
            instance.redirect_url = redirect_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentProcessResult:
        instance = cls()
        if not dict_:
            return instance
        if "pending" in dict_ and dict_["pending"] is not None:
            instance.pending = bool(dict_["pending"])
        elif include_empty:
            instance.pending = bool()
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = bool()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        if "redirectUrl" in dict_ and dict_["redirectUrl"] is not None:
            instance.redirect_url = str(dict_["redirectUrl"])
        elif include_empty:
            instance.redirect_url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "pending": "pending",
            "success": "success",
            "reason": "reason",
            "redirectUrl": "redirect_url",
        }

    # endregion static methods
