# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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

        type_: (type) REQUIRED str

        description: (description) OPTIONAL str

        descriptions: (descriptions) OPTIONAL AccountcommonDescription
    """

    # region fields

    ban: str  # REQUIRED
    type_: str  # REQUIRED
    description: str  # OPTIONAL
    descriptions: AccountcommonDescription  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> AccountcommonBanV3:
        self.ban = value
        return self

    def with_type(self, value: str) -> AccountcommonBanV3:
        self.type_ = value
        return self

    def with_description(self, value: str) -> AccountcommonBanV3:
        self.description = value
        return self

    def with_descriptions(self, value: AccountcommonDescription) -> AccountcommonBanV3:
        self.descriptions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "descriptions"):
            result["descriptions"] = self.descriptions.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["descriptions"] = AccountcommonDescription()
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonBanV3:
        instance = cls()
        if not dict_:
            return instance
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "descriptions" in dict_ and dict_["descriptions"] is not None:
            instance.descriptions = AccountcommonDescription.create_from_dict(
                dict_["descriptions"], include_empty=include_empty
            )
        elif include_empty:
            instance.descriptions = AccountcommonDescription()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonBanV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonBanV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonBanV3, List[AccountcommonBanV3], Dict[Any, AccountcommonBanV3]
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ban": "ban",
            "type": "type_",
            "description": "description",
            "descriptions": "descriptions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ban": True,
            "type": True,
            "description": False,
            "descriptions": False,
        }

    # endregion static methods
