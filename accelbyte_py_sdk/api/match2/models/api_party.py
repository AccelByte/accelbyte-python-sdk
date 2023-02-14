# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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


class ApiParty(Model):
    """Api party (api.Party)

    Properties:
        party_id: (partyID) OPTIONAL str

        user_i_ds: (userIDs) OPTIONAL List[str]
    """

    # region fields

    party_id: str  # OPTIONAL
    user_i_ds: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_party_id(self, value: str) -> ApiParty:
        self.party_id = value
        return self

    def with_user_i_ds(self, value: List[str]) -> ApiParty:
        self.user_i_ds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "party_id"):
            result["partyID"] = str(self.party_id)
        elif include_empty:
            result["partyID"] = ""
        if hasattr(self, "user_i_ds"):
            result["userIDs"] = [str(i0) for i0 in self.user_i_ds]
        elif include_empty:
            result["userIDs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        party_id: Optional[str] = None,
        user_i_ds: Optional[List[str]] = None,
    ) -> ApiParty:
        instance = cls()
        if party_id is not None:
            instance.party_id = party_id
        if user_i_ds is not None:
            instance.user_i_ds = user_i_ds
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ApiParty:
        instance = cls()
        if not dict_:
            return instance
        if "partyID" in dict_ and dict_["partyID"] is not None:
            instance.party_id = str(dict_["partyID"])
        elif include_empty:
            instance.party_id = ""
        if "userIDs" in dict_ and dict_["userIDs"] is not None:
            instance.user_i_ds = [str(i0) for i0 in dict_["userIDs"]]
        elif include_empty:
            instance.user_i_ds = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiParty]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiParty]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiParty, List[ApiParty], Dict[Any, ApiParty]]:
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
            "partyID": "party_id",
            "userIDs": "user_i_ds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "partyID": False,
            "userIDs": False,
        }

    # endregion static methods
