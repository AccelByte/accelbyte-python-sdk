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


class AccountcommonBan(Model):
    """Accountcommon ban (accountcommon.Ban)

    Properties:
        ban: (Ban) REQUIRED str

        description: (Description) REQUIRED str
    """

    # region fields

    ban: str                                                                                       # REQUIRED
    description: str                                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> AccountcommonBan:
        self.ban = value
        return self

    def with_description(self, value: str) -> AccountcommonBan:
        self.description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["Ban"] = str(self.ban)
        elif include_empty:
            result["Ban"] = str()
        if hasattr(self, "description"):
            result["Description"] = str(self.description)
        elif include_empty:
            result["Description"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        description: str,
    ) -> AccountcommonBan:
        instance = cls()
        instance.ban = ban
        instance.description = description
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonBan:
        instance = cls()
        if not dict_:
            return instance
        if "Ban" in dict_ and dict_["Ban"] is not None:
            instance.ban = str(dict_["Ban"])
        elif include_empty:
            instance.ban = str()
        if "Description" in dict_ and dict_["Description"] is not None:
            instance.description = str(dict_["Description"])
        elif include_empty:
            instance.description = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Ban": "ban",
            "Description": "description",
        }

    # endregion static methods
