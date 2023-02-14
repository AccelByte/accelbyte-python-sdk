# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.20.2)

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

from ..models.models_party_member import ModelsPartyMember


class ModelsMatchingParty(Model):
    """Models matching party (models.MatchingParty)

    Properties:
        first_ticket_created_at: (first_ticket_created_at) REQUIRED int

        party_attributes: (party_attributes) REQUIRED Dict[str, Any]

        party_id: (party_id) REQUIRED str

        party_members: (party_members) REQUIRED List[ModelsPartyMember]

        ticket_created_at: (ticket_created_at) REQUIRED int

        ticket_id: (ticket_id) REQUIRED str
    """

    # region fields

    first_ticket_created_at: int  # REQUIRED
    party_attributes: Dict[str, Any]  # REQUIRED
    party_id: str  # REQUIRED
    party_members: List[ModelsPartyMember]  # REQUIRED
    ticket_created_at: int  # REQUIRED
    ticket_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_first_ticket_created_at(self, value: int) -> ModelsMatchingParty:
        self.first_ticket_created_at = value
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

    def with_ticket_created_at(self, value: int) -> ModelsMatchingParty:
        self.ticket_created_at = value
        return self

    def with_ticket_id(self, value: str) -> ModelsMatchingParty:
        self.ticket_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "first_ticket_created_at"):
            result["first_ticket_created_at"] = int(self.first_ticket_created_at)
        elif include_empty:
            result["first_ticket_created_at"] = 0
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
        if hasattr(self, "ticket_created_at"):
            result["ticket_created_at"] = int(self.ticket_created_at)
        elif include_empty:
            result["ticket_created_at"] = 0
        if hasattr(self, "ticket_id"):
            result["ticket_id"] = str(self.ticket_id)
        elif include_empty:
            result["ticket_id"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        first_ticket_created_at: int,
        party_attributes: Dict[str, Any],
        party_id: str,
        party_members: List[ModelsPartyMember],
        ticket_created_at: int,
        ticket_id: str,
    ) -> ModelsMatchingParty:
        instance = cls()
        instance.first_ticket_created_at = first_ticket_created_at
        instance.party_attributes = party_attributes
        instance.party_id = party_id
        instance.party_members = party_members
        instance.ticket_created_at = ticket_created_at
        instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMatchingParty:
        instance = cls()
        if not dict_:
            return instance
        if (
            "first_ticket_created_at" in dict_
            and dict_["first_ticket_created_at"] is not None
        ):
            instance.first_ticket_created_at = int(dict_["first_ticket_created_at"])
        elif include_empty:
            instance.first_ticket_created_at = 0
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
        if "ticket_created_at" in dict_ and dict_["ticket_created_at"] is not None:
            instance.ticket_created_at = int(dict_["ticket_created_at"])
        elif include_empty:
            instance.ticket_created_at = 0
        if "ticket_id" in dict_ and dict_["ticket_id"] is not None:
            instance.ticket_id = str(dict_["ticket_id"])
        elif include_empty:
            instance.ticket_id = ""
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
            "first_ticket_created_at": "first_ticket_created_at",
            "party_attributes": "party_attributes",
            "party_id": "party_id",
            "party_members": "party_members",
            "ticket_created_at": "ticket_created_at",
            "ticket_id": "ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "first_ticket_created_at": True,
            "party_attributes": True,
            "party_id": True,
            "party_members": True,
            "ticket_created_at": True,
            "ticket_id": True,
        }

    # endregion static methods
