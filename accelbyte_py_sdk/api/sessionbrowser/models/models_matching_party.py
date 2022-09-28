# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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

from ..models.models_match_attributes import ModelsMatchAttributes
from ..models.models_party_member import ModelsPartyMember


class ModelsMatchingParty(Model):
    """Models matching party (models.MatchingParty)

    Properties:
        match_attributes: (match_attributes) REQUIRED ModelsMatchAttributes

        party_attributes: (party_attributes) REQUIRED Dict[str, Any]

        party_id: (party_id) REQUIRED str

        party_members: (party_members) REQUIRED List[ModelsPartyMember]
    """

    # region fields

    match_attributes: ModelsMatchAttributes  # REQUIRED
    party_attributes: Dict[str, Any]  # REQUIRED
    party_id: str  # REQUIRED
    party_members: List[ModelsPartyMember]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_match_attributes(
        self, value: ModelsMatchAttributes
    ) -> ModelsMatchingParty:
        self.match_attributes = value
        return self

    def with_party_attributes(self, value: Dict[str, Any]) -> ModelsMatchingParty:
        self.party_attributes = value
        return self

    def with_party_id(self, value: str) -> ModelsMatchingParty:
        self.party_id = value
        return self

    def with_party_members(self, value: List[ModelsPartyMember]) -> ModelsMatchingParty:
        self.party_members = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match_attributes"):
            result["match_attributes"] = self.match_attributes.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["match_attributes"] = ModelsMatchAttributes()
        if hasattr(self, "party_attributes"):
            result["party_attributes"] = {
                str(k0): v0 for k0, v0 in self.party_attributes.items()
            }
        elif include_empty:
            result["party_attributes"] = {}
        if hasattr(self, "party_id"):
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = ""
        if hasattr(self, "party_members"):
            result["party_members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.party_members
            ]
        elif include_empty:
            result["party_members"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match_attributes: ModelsMatchAttributes,
        party_attributes: Dict[str, Any],
        party_id: str,
        party_members: List[ModelsPartyMember],
    ) -> ModelsMatchingParty:
        instance = cls()
        instance.match_attributes = match_attributes
        instance.party_attributes = party_attributes
        instance.party_id = party_id
        instance.party_members = party_members
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMatchingParty:
        instance = cls()
        if not dict_:
            return instance
        if "match_attributes" in dict_ and dict_["match_attributes"] is not None:
            instance.match_attributes = ModelsMatchAttributes.create_from_dict(
                dict_["match_attributes"], include_empty=include_empty
            )
        elif include_empty:
            instance.match_attributes = ModelsMatchAttributes()
        if "party_attributes" in dict_ and dict_["party_attributes"] is not None:
            instance.party_attributes = {
                str(k0): v0 for k0, v0 in dict_["party_attributes"].items()
            }
        elif include_empty:
            instance.party_attributes = {}
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = ""
        if "party_members" in dict_ and dict_["party_members"] is not None:
            instance.party_members = [
                ModelsPartyMember.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["party_members"]
            ]
        elif include_empty:
            instance.party_members = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMatchingParty]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMatchingParty]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMatchingParty, List[ModelsMatchingParty], Dict[Any, ModelsMatchingParty]
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
            "match_attributes": "match_attributes",
            "party_attributes": "party_attributes",
            "party_id": "party_id",
            "party_members": "party_members",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "match_attributes": True,
            "party_attributes": True,
            "party_id": True,
            "party_members": True,
        }

    # endregion static methods
