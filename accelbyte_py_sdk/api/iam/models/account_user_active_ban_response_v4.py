# justice-iam-service (4.7.0)

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


class AccountUserActiveBanResponseV4(Model):
    """Account user active ban response V4 (account.UserActiveBanResponseV4)

    Properties:
        ban: (ban) REQUIRED str

        ban_id: (banId) REQUIRED str

        end_date: (endDate) REQUIRED str
    """

    # region fields

    ban: str                                                                                       # REQUIRED
    ban_id: str                                                                                    # REQUIRED
    end_date: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> AccountUserActiveBanResponseV4:
        self.ban = value
        return self

    def with_ban_id(self, value: str) -> AccountUserActiveBanResponseV4:
        self.ban_id = value
        return self

    def with_end_date(self, value: str) -> AccountUserActiveBanResponseV4:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = str()
        if hasattr(self, "ban_id"):
            result["banId"] = str(self.ban_id)
        elif include_empty:
            result["banId"] = str()
        if hasattr(self, "end_date"):
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
        ban_id: str,
        end_date: str,
    ) -> AccountUserActiveBanResponseV4:
        instance = cls()
        instance.ban = ban
        instance.ban_id = ban_id
        instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountUserActiveBanResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = str()
        if "banId" in dict_ and dict_["banId"] is not None:
            instance.ban_id = str(dict_["banId"])
        elif include_empty:
            instance.ban_id = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ban": "ban",
            "banId": "ban_id",
            "endDate": "end_date",
        }

    # endregion static methods
