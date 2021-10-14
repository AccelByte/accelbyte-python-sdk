# Auto-generated at 2021-10-14T22:17:10.792957+08:00
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

from ..models.accountcommon_description import AccountcommonDescription


class AccountcommonBanV3(Model):
    """Accountcommon ban V3 (accountcommon.BanV3)

    Properties:
        ban: (ban) REQUIRED str

        description: (description) OPTIONAL str

        descriptions: (descriptions) OPTIONAL AccountcommonDescription

        type_: (type) REQUIRED str
    """

    # region fields

    ban: str                                                                                       # REQUIRED
    description: str                                                                               # OPTIONAL
    descriptions: AccountcommonDescription                                                         # OPTIONAL
    type_: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> AccountcommonBanV3:
        self.ban = value
        return self

    def with_description(self, value: str) -> AccountcommonBanV3:
        self.description = value
        return self

    def with_descriptions(self, value: AccountcommonDescription) -> AccountcommonBanV3:
        self.descriptions = value
        return self

    def with_type(self, value: str) -> AccountcommonBanV3:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban") and self.ban:
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "descriptions") and self.descriptions:
            result["descriptions"] = self.descriptions.to_dict(include_empty=include_empty)
        elif include_empty:
            result["descriptions"] = AccountcommonDescription()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        type_: str,
        description: Optional[str] = None,
        descriptions: Optional[AccountcommonDescription] = None,
    ) -> AccountcommonBanV3:
        instance = cls()
        instance.ban = ban
        instance.type_ = type_
        if description is not None:
            instance.description = description
        if descriptions is not None:
            instance.descriptions = descriptions
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonBanV3:
        instance = cls()
        if not dict_:
            return instance
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "descriptions" in dict_ and dict_["descriptions"] is not None:
            instance.descriptions = AccountcommonDescription.create_from_dict(dict_["descriptions"], include_empty=include_empty)
        elif include_empty:
            instance.descriptions = AccountcommonDescription()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ban": "ban",
            "description": "description",
            "descriptions": "descriptions",
            "type": "type_",
        }

    # endregion static methods
