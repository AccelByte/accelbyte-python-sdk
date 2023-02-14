# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class OwnershipToken(Model):
    """Ownership token (OwnershipToken)

    Properties:
        ownership_token: (ownershipToken) OPTIONAL str
    """

    # region fields

    ownership_token: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ownership_token(self, value: str) -> OwnershipToken:
        self.ownership_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ownership_token"):
            result["ownershipToken"] = str(self.ownership_token)
        elif include_empty:
            result["ownershipToken"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ownership_token: Optional[str] = None,
    ) -> OwnershipToken:
        instance = cls()
        if ownership_token is not None:
            instance.ownership_token = ownership_token
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OwnershipToken:
        instance = cls()
        if not dict_:
            return instance
        if "ownershipToken" in dict_ and dict_["ownershipToken"] is not None:
            instance.ownership_token = str(dict_["ownershipToken"])
        elif include_empty:
            instance.ownership_token = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OwnershipToken]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OwnershipToken]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[OwnershipToken, List[OwnershipToken], Dict[Any, OwnershipToken]]:
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
            "ownershipToken": "ownership_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ownershipToken": False,
        }

    # endregion static methods
