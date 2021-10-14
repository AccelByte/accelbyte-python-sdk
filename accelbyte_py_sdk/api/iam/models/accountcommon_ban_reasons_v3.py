# Auto-generated at 2021-10-14T22:17:10.792100+08:00
# from: Justice Iam Service (4.1.0)

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

from ..models.accountcommon_ban_reason_v3 import AccountcommonBanReasonV3


class AccountcommonBanReasonsV3(Model):
    """Accountcommon ban reasons V3 (accountcommon.BanReasonsV3)

    Properties:
        reasons: (reasons) REQUIRED List[AccountcommonBanReasonV3]
    """

    # region fields

    reasons: List[AccountcommonBanReasonV3]                                                        # REQUIRED

    # endregion fields

    # region with_x methods

    def with_reasons(self, value: List[AccountcommonBanReasonV3]) -> AccountcommonBanReasonsV3:
        self.reasons = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "reasons") and self.reasons:
            result["reasons"] = [i0.to_dict(include_empty=include_empty) for i0 in self.reasons]
        elif include_empty:
            result["reasons"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        reasons: List[AccountcommonBanReasonV3],
    ) -> AccountcommonBanReasonsV3:
        instance = cls()
        instance.reasons = reasons
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonBanReasonsV3:
        instance = cls()
        if not dict_:
            return instance
        if "reasons" in dict_ and dict_["reasons"] is not None:
            instance.reasons = [AccountcommonBanReasonV3.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["reasons"]]
        elif include_empty:
            instance.reasons = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "reasons": "reasons",
        }

    # endregion static methods
