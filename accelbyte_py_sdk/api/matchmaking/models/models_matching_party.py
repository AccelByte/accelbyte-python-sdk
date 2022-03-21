# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# Justice Matchmaking Service (2.14.0)

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
import re
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
    """

    # region fields

    first_ticket_created_at: int                                                                   # REQUIRED
    party_attributes: Dict[str, Any]                                                               # REQUIRED
    party_id: str                                                                                  # REQUIRED
    party_members: List[ModelsPartyMember]                                                         # REQUIRED

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

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "first_ticket_created_at") or self.first_ticket_created_at is None:
            return False
        if not hasattr(self, "party_attributes") or self.party_attributes is None:
            return False
        if not hasattr(self, "party_id") or self.party_id is None:
            return False
        if not hasattr(self, "party_members") or self.party_members is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "first_ticket_created_at"):
            result["first_ticket_created_at"] = int(self.first_ticket_created_at)
        elif include_empty:
            result["first_ticket_created_at"] = int()
        if hasattr(self, "party_attributes"):
            result["party_attributes"] = {str(k0): v0 for k0, v0 in self.party_attributes.items()}
        elif include_empty:
            result["party_attributes"] = {}
        if hasattr(self, "party_id"):
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = str()
        if hasattr(self, "party_members"):
            result["party_members"] = [i0.to_dict(include_empty=include_empty) for i0 in self.party_members]
        elif include_empty:
            result["party_members"] = []
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
    ) -> ModelsMatchingParty:
        instance = cls()
        instance.first_ticket_created_at = first_ticket_created_at
        instance.party_attributes = party_attributes
        instance.party_id = party_id
        instance.party_members = party_members
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsMatchingParty:
        instance = cls()
        if not dict_:
            return instance
        if "first_ticket_created_at" in dict_ and dict_["first_ticket_created_at"] is not None:
            instance.first_ticket_created_at = int(dict_["first_ticket_created_at"])
        elif include_empty:
            instance.first_ticket_created_at = int()
        if "party_attributes" in dict_ and dict_["party_attributes"] is not None:
            instance.party_attributes = {str(k0): v0 for k0, v0 in dict_["party_attributes"].items()}
        elif include_empty:
            instance.party_attributes = {}
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = str()
        if "party_members" in dict_ and dict_["party_members"] is not None:
            instance.party_members = [ModelsPartyMember.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["party_members"]]
        elif include_empty:
            instance.party_members = []
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsMatchingParty]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsMatchingParty]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsMatchingParty, List[ModelsMatchingParty]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "first_ticket_created_at": "first_ticket_created_at",
            "party_attributes": "party_attributes",
            "party_id": "party_id",
            "party_members": "party_members",
        }

    # endregion static methods
