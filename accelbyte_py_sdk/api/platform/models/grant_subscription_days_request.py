# justice-platform-service (3.34.0)

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


class GrantSubscriptionDaysRequest(Model):
    """Grant subscription days request (GrantSubscriptionDaysRequest)

    Properties:
        grant_days: (grantDays) REQUIRED int

        reason: (reason) OPTIONAL str
    """

    # region fields

    grant_days: int                                                                                # REQUIRED
    reason: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_grant_days(self, value: int) -> GrantSubscriptionDaysRequest:
        self.grant_days = value
        return self

    def with_reason(self, value: str) -> GrantSubscriptionDaysRequest:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "grant_days") and self.grant_days:
            result["grantDays"] = int(self.grant_days)
        elif include_empty:
            result["grantDays"] = int()
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
        grant_days: int,
        reason: Optional[str] = None,
    ) -> GrantSubscriptionDaysRequest:
        instance = cls()
        instance.grant_days = grant_days
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GrantSubscriptionDaysRequest:
        instance = cls()
        if not dict_:
            return instance
        if "grantDays" in dict_ and dict_["grantDays"] is not None:
            instance.grant_days = int(dict_["grantDays"])
        elif include_empty:
            instance.grant_days = int()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "grantDays": "grant_days",
            "reason": "reason",
        }

    # endregion static methods