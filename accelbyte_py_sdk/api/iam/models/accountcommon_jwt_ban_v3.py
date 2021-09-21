# Auto-generated at 2021-09-21T14:10:34.711304+08:00
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


class AccountcommonJWTBanV3(Model):
    """Accountcommon JWT ban V3

    Properties:
        ban: (ban) REQUIRED str

        end_date: (endDate) REQUIRED str
    """

    # region fields

    ban: str                                                                                       # REQUIRED
    end_date: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> AccountcommonJWTBanV3:
        self.ban = value
        return self

    def with_end_date(self, value: str) -> AccountcommonJWTBanV3:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "ban") and self.ban:
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        end_date: str,
    ) -> AccountcommonJWTBanV3:
        instance = cls()
        instance.ban = ban
        instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonJWTBanV3:
        instance = cls()
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ban": "ban",
            "endDate": "end_date",
        }

    # endregion static methods
