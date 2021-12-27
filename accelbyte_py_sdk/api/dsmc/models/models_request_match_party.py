# justice-dsm-controller-service (2.10.0)

# template file: justice_py_sdk_codegen/__main__.py

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

from ..models.models_request_match_member import ModelsRequestMatchMember


class ModelsRequestMatchParty(Model):
    """Models request match party (models.RequestMatchParty)

    Properties:
        party_attributes: (party_attributes) REQUIRED Dict[str, Any]

        party_id: (party_id) REQUIRED str

        party_members: (party_members) REQUIRED List[ModelsRequestMatchMember]
    """

    # region fields

    party_attributes: Dict[str, Any]                                                               # REQUIRED
    party_id: str                                                                                  # REQUIRED
    party_members: List[ModelsRequestMatchMember]                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_party_attributes(self, value: Dict[str, Any]) -> ModelsRequestMatchParty:
        self.party_attributes = value
        return self

    def with_party_id(self, value: str) -> ModelsRequestMatchParty:
        self.party_id = value
        return self

    def with_party_members(self, value: List[ModelsRequestMatchMember]) -> ModelsRequestMatchParty:
        self.party_members = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        party_attributes: Dict[str, Any],
        party_id: str,
        party_members: List[ModelsRequestMatchMember],
    ) -> ModelsRequestMatchParty:
        instance = cls()
        instance.party_attributes = party_attributes
        instance.party_id = party_id
        instance.party_members = party_members
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsRequestMatchParty:
        instance = cls()
        if not dict_:
            return instance
        if "party_attributes" in dict_ and dict_["party_attributes"] is not None:
            instance.party_attributes = {str(k0): v0 for k0, v0 in dict_["party_attributes"].items()}
        elif include_empty:
            instance.party_attributes = {}
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = str()
        if "party_members" in dict_ and dict_["party_members"] is not None:
            instance.party_members = [ModelsRequestMatchMember.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["party_members"]]
        elif include_empty:
            instance.party_members = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "party_attributes": "party_attributes",
            "party_id": "party_id",
            "party_members": "party_members",
        }

    # endregion static methods
