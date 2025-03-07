# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..models.apimodels_party_history import ApimodelsPartyHistory
from ..models.models_party import ModelsParty


class ApimodelsPartyDetail(Model):
    """Apimodels party detail (apimodels.PartyDetail)

    Properties:
        created_at: (created_at) REQUIRED str

        histories: (histories) REQUIRED List[ApimodelsPartyHistory]

        joinability: (joinability) REQUIRED str

        last_data: (last_data) REQUIRED ModelsParty

        leader_id: (leader_id) REQUIRED str

        namespace: (namespace) REQUIRED str

        party_session_id: (partySessionID) REQUIRED str

        session_template: (session_template) REQUIRED str

        updated_at: (updated_at) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    histories: List[ApimodelsPartyHistory]  # REQUIRED
    joinability: str  # REQUIRED
    last_data: ModelsParty  # REQUIRED
    leader_id: str  # REQUIRED
    namespace: str  # REQUIRED
    party_session_id: str  # REQUIRED
    session_template: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsPartyDetail:
        self.created_at = value
        return self

    def with_histories(
        self, value: List[ApimodelsPartyHistory]
    ) -> ApimodelsPartyDetail:
        self.histories = value
        return self

    def with_joinability(self, value: str) -> ApimodelsPartyDetail:
        self.joinability = value
        return self

    def with_last_data(self, value: ModelsParty) -> ApimodelsPartyDetail:
        self.last_data = value
        return self

    def with_leader_id(self, value: str) -> ApimodelsPartyDetail:
        self.leader_id = value
        return self

    def with_namespace(self, value: str) -> ApimodelsPartyDetail:
        self.namespace = value
        return self

    def with_party_session_id(self, value: str) -> ApimodelsPartyDetail:
        self.party_session_id = value
        return self

    def with_session_template(self, value: str) -> ApimodelsPartyDetail:
        self.session_template = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsPartyDetail:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "histories"):
            result["histories"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.histories
            ]
        elif include_empty:
            result["histories"] = []
        if hasattr(self, "joinability"):
            result["joinability"] = str(self.joinability)
        elif include_empty:
            result["joinability"] = ""
        if hasattr(self, "last_data"):
            result["last_data"] = self.last_data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["last_data"] = ModelsParty()
        if hasattr(self, "leader_id"):
            result["leader_id"] = str(self.leader_id)
        elif include_empty:
            result["leader_id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "party_session_id"):
            result["partySessionID"] = str(self.party_session_id)
        elif include_empty:
            result["partySessionID"] = ""
        if hasattr(self, "session_template"):
            result["session_template"] = str(self.session_template)
        elif include_empty:
            result["session_template"] = ""
        if hasattr(self, "updated_at"):
            result["updated_at"] = str(self.updated_at)
        elif include_empty:
            result["updated_at"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        histories: List[ApimodelsPartyHistory],
        joinability: str,
        last_data: ModelsParty,
        leader_id: str,
        namespace: str,
        party_session_id: str,
        session_template: str,
        updated_at: str,
        **kwargs,
    ) -> ApimodelsPartyDetail:
        instance = cls()
        instance.created_at = created_at
        instance.histories = histories
        instance.joinability = joinability
        instance.last_data = last_data
        instance.leader_id = leader_id
        instance.namespace = namespace
        instance.party_session_id = party_session_id
        instance.session_template = session_template
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsPartyDetail:
        instance = cls()
        if not dict_:
            return instance
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "histories" in dict_ and dict_["histories"] is not None:
            instance.histories = [
                ApimodelsPartyHistory.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["histories"]
            ]
        elif include_empty:
            instance.histories = []
        if "joinability" in dict_ and dict_["joinability"] is not None:
            instance.joinability = str(dict_["joinability"])
        elif include_empty:
            instance.joinability = ""
        if "last_data" in dict_ and dict_["last_data"] is not None:
            instance.last_data = ModelsParty.create_from_dict(
                dict_["last_data"], include_empty=include_empty
            )
        elif include_empty:
            instance.last_data = ModelsParty()
        if "leader_id" in dict_ and dict_["leader_id"] is not None:
            instance.leader_id = str(dict_["leader_id"])
        elif include_empty:
            instance.leader_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "partySessionID" in dict_ and dict_["partySessionID"] is not None:
            instance.party_session_id = str(dict_["partySessionID"])
        elif include_empty:
            instance.party_session_id = ""
        if "session_template" in dict_ and dict_["session_template"] is not None:
            instance.session_template = str(dict_["session_template"])
        elif include_empty:
            instance.session_template = ""
        if "updated_at" in dict_ and dict_["updated_at"] is not None:
            instance.updated_at = str(dict_["updated_at"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsPartyDetail]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsPartyDetail]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsPartyDetail,
        List[ApimodelsPartyDetail],
        Dict[Any, ApimodelsPartyDetail],
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
            "created_at": "created_at",
            "histories": "histories",
            "joinability": "joinability",
            "last_data": "last_data",
            "leader_id": "leader_id",
            "namespace": "namespace",
            "partySessionID": "party_session_id",
            "session_template": "session_template",
            "updated_at": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "created_at": True,
            "histories": True,
            "joinability": True,
            "last_data": True,
            "leader_id": True,
            "namespace": True,
            "partySessionID": True,
            "session_template": True,
            "updated_at": True,
        }

    # endregion static methods
