# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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
from ..models.models_region import ModelsRegion


class ModelsMockTicket(Model):
    """Models mock ticket (models.MockTicket)

    Properties:
        additional_criteria: (additional_criteria) REQUIRED Dict[str, Any]

        channel: (channel) REQUIRED str

        created_at: (created_at) REQUIRED int

        first_ticket_created_at: (first_ticket_created_at) REQUIRED int

        is_mock: (is_mock) REQUIRED str

        is_sampled: (is_sampled) REQUIRED bool

        latency_map: (latency_map) REQUIRED Dict[str, int]

        namespace: (namespace) REQUIRED str

        party_attributes: (party_attributes) REQUIRED Dict[str, Any]

        party_id: (party_id) REQUIRED str

        party_leader_id: (party_leader_id) REQUIRED str

        party_members: (party_members) REQUIRED List[ModelsPartyMember]

        priority: (priority) REQUIRED int

        sampling_properties: (sampling_properties) REQUIRED List[List[str]]

        sorted_latency: (sorted_latency) REQUIRED List[ModelsRegion]

        status: (status) REQUIRED str

        ticket_id: (ticket_id) REQUIRED str

        ticket_ids: (ticket_ids) REQUIRED List[str]
    """

    # region fields

    additional_criteria: Dict[str, Any]  # REQUIRED
    channel: str  # REQUIRED
    created_at: int  # REQUIRED
    first_ticket_created_at: int  # REQUIRED
    is_mock: str  # REQUIRED
    is_sampled: bool  # REQUIRED
    latency_map: Dict[str, int]  # REQUIRED
    namespace: str  # REQUIRED
    party_attributes: Dict[str, Any]  # REQUIRED
    party_id: str  # REQUIRED
    party_leader_id: str  # REQUIRED
    party_members: List[ModelsPartyMember]  # REQUIRED
    priority: int  # REQUIRED
    sampling_properties: List[List[str]]  # REQUIRED
    sorted_latency: List[ModelsRegion]  # REQUIRED
    status: str  # REQUIRED
    ticket_id: str  # REQUIRED
    ticket_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_additional_criteria(self, value: Dict[str, Any]) -> ModelsMockTicket:
        self.additional_criteria = value
        return self

    def with_channel(self, value: str) -> ModelsMockTicket:
        self.channel = value
        return self

    def with_created_at(self, value: int) -> ModelsMockTicket:
        self.created_at = value
        return self

    def with_first_ticket_created_at(self, value: int) -> ModelsMockTicket:
        self.first_ticket_created_at = value
        return self

    def with_is_mock(self, value: str) -> ModelsMockTicket:
        self.is_mock = value
        return self

    def with_is_sampled(self, value: bool) -> ModelsMockTicket:
        self.is_sampled = value
        return self

    def with_latency_map(self, value: Dict[str, int]) -> ModelsMockTicket:
        self.latency_map = value
        return self

    def with_namespace(self, value: str) -> ModelsMockTicket:
        self.namespace = value
        return self

    def with_party_attributes(self, value: Dict[str, Any]) -> ModelsMockTicket:
        self.party_attributes = value
        return self

    def with_party_id(self, value: str) -> ModelsMockTicket:
        self.party_id = value
        return self

    def with_party_leader_id(self, value: str) -> ModelsMockTicket:
        self.party_leader_id = value
        return self

    def with_party_members(self, value: List[ModelsPartyMember]) -> ModelsMockTicket:
        self.party_members = value
        return self

    def with_priority(self, value: int) -> ModelsMockTicket:
        self.priority = value
        return self

    def with_sampling_properties(self, value: List[List[str]]) -> ModelsMockTicket:
        self.sampling_properties = value
        return self

    def with_sorted_latency(self, value: List[ModelsRegion]) -> ModelsMockTicket:
        self.sorted_latency = value
        return self

    def with_status(self, value: str) -> ModelsMockTicket:
        self.status = value
        return self

    def with_ticket_id(self, value: str) -> ModelsMockTicket:
        self.ticket_id = value
        return self

    def with_ticket_ids(self, value: List[str]) -> ModelsMockTicket:
        self.ticket_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additional_criteria"):
            result["additional_criteria"] = {
                str(k0): v0 for k0, v0 in self.additional_criteria.items()
            }
        elif include_empty:
            result["additional_criteria"] = {}
        if hasattr(self, "channel"):
            result["channel"] = str(self.channel)
        elif include_empty:
            result["channel"] = ""
        if hasattr(self, "created_at"):
            result["created_at"] = int(self.created_at)
        elif include_empty:
            result["created_at"] = 0
        if hasattr(self, "first_ticket_created_at"):
            result["first_ticket_created_at"] = int(self.first_ticket_created_at)
        elif include_empty:
            result["first_ticket_created_at"] = 0
        if hasattr(self, "is_mock"):
            result["is_mock"] = str(self.is_mock)
        elif include_empty:
            result["is_mock"] = ""
        if hasattr(self, "is_sampled"):
            result["is_sampled"] = bool(self.is_sampled)
        elif include_empty:
            result["is_sampled"] = False
        if hasattr(self, "latency_map"):
            result["latency_map"] = {
                str(k0): int(v0) for k0, v0 in self.latency_map.items()
            }
        elif include_empty:
            result["latency_map"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "party_leader_id"):
            result["party_leader_id"] = str(self.party_leader_id)
        elif include_empty:
            result["party_leader_id"] = ""
        if hasattr(self, "party_members"):
            result["party_members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.party_members
            ]
        elif include_empty:
            result["party_members"] = []
        if hasattr(self, "priority"):
            result["priority"] = int(self.priority)
        elif include_empty:
            result["priority"] = 0
        if hasattr(self, "sampling_properties"):
            result["sampling_properties"] = [
                [str(i1) for i1 in i0] for i0 in self.sampling_properties
            ]
        elif include_empty:
            result["sampling_properties"] = []
        if hasattr(self, "sorted_latency"):
            result["sorted_latency"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.sorted_latency
            ]
        elif include_empty:
            result["sorted_latency"] = []
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "ticket_id"):
            result["ticket_id"] = str(self.ticket_id)
        elif include_empty:
            result["ticket_id"] = ""
        if hasattr(self, "ticket_ids"):
            result["ticket_ids"] = [str(i0) for i0 in self.ticket_ids]
        elif include_empty:
            result["ticket_ids"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        additional_criteria: Dict[str, Any],
        channel: str,
        created_at: int,
        first_ticket_created_at: int,
        is_mock: str,
        is_sampled: bool,
        latency_map: Dict[str, int],
        namespace: str,
        party_attributes: Dict[str, Any],
        party_id: str,
        party_leader_id: str,
        party_members: List[ModelsPartyMember],
        priority: int,
        sampling_properties: List[List[str]],
        sorted_latency: List[ModelsRegion],
        status: str,
        ticket_id: str,
        ticket_ids: List[str],
        **kwargs,
    ) -> ModelsMockTicket:
        instance = cls()
        instance.additional_criteria = additional_criteria
        instance.channel = channel
        instance.created_at = created_at
        instance.first_ticket_created_at = first_ticket_created_at
        instance.is_mock = is_mock
        instance.is_sampled = is_sampled
        instance.latency_map = latency_map
        instance.namespace = namespace
        instance.party_attributes = party_attributes
        instance.party_id = party_id
        instance.party_leader_id = party_leader_id
        instance.party_members = party_members
        instance.priority = priority
        instance.sampling_properties = sampling_properties
        instance.sorted_latency = sorted_latency
        instance.status = status
        instance.ticket_id = ticket_id
        instance.ticket_ids = ticket_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMockTicket:
        instance = cls()
        if not dict_:
            return instance
        if "additional_criteria" in dict_ and dict_["additional_criteria"] is not None:
            instance.additional_criteria = {
                str(k0): v0 for k0, v0 in dict_["additional_criteria"].items()
            }
        elif include_empty:
            instance.additional_criteria = {}
        if "channel" in dict_ and dict_["channel"] is not None:
            instance.channel = str(dict_["channel"])
        elif include_empty:
            instance.channel = ""
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = int(dict_["created_at"])
        elif include_empty:
            instance.created_at = 0
        if (
            "first_ticket_created_at" in dict_
            and dict_["first_ticket_created_at"] is not None
        ):
            instance.first_ticket_created_at = int(dict_["first_ticket_created_at"])
        elif include_empty:
            instance.first_ticket_created_at = 0
        if "is_mock" in dict_ and dict_["is_mock"] is not None:
            instance.is_mock = str(dict_["is_mock"])
        elif include_empty:
            instance.is_mock = ""
        if "is_sampled" in dict_ and dict_["is_sampled"] is not None:
            instance.is_sampled = bool(dict_["is_sampled"])
        elif include_empty:
            instance.is_sampled = False
        if "latency_map" in dict_ and dict_["latency_map"] is not None:
            instance.latency_map = {
                str(k0): int(v0) for k0, v0 in dict_["latency_map"].items()
            }
        elif include_empty:
            instance.latency_map = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "party_leader_id" in dict_ and dict_["party_leader_id"] is not None:
            instance.party_leader_id = str(dict_["party_leader_id"])
        elif include_empty:
            instance.party_leader_id = ""
        if "party_members" in dict_ and dict_["party_members"] is not None:
            instance.party_members = [
                ModelsPartyMember.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["party_members"]
            ]
        elif include_empty:
            instance.party_members = []
        if "priority" in dict_ and dict_["priority"] is not None:
            instance.priority = int(dict_["priority"])
        elif include_empty:
            instance.priority = 0
        if "sampling_properties" in dict_ and dict_["sampling_properties"] is not None:
            instance.sampling_properties = [
                [str(i1) for i1 in i0] for i0 in dict_["sampling_properties"]
            ]
        elif include_empty:
            instance.sampling_properties = []
        if "sorted_latency" in dict_ and dict_["sorted_latency"] is not None:
            instance.sorted_latency = [
                ModelsRegion.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["sorted_latency"]
            ]
        elif include_empty:
            instance.sorted_latency = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "ticket_id" in dict_ and dict_["ticket_id"] is not None:
            instance.ticket_id = str(dict_["ticket_id"])
        elif include_empty:
            instance.ticket_id = ""
        if "ticket_ids" in dict_ and dict_["ticket_ids"] is not None:
            instance.ticket_ids = [str(i0) for i0 in dict_["ticket_ids"]]
        elif include_empty:
            instance.ticket_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMockTicket]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMockTicket]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsMockTicket, List[ModelsMockTicket], Dict[Any, ModelsMockTicket]]:
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
            "additional_criteria": "additional_criteria",
            "channel": "channel",
            "created_at": "created_at",
            "first_ticket_created_at": "first_ticket_created_at",
            "is_mock": "is_mock",
            "is_sampled": "is_sampled",
            "latency_map": "latency_map",
            "namespace": "namespace",
            "party_attributes": "party_attributes",
            "party_id": "party_id",
            "party_leader_id": "party_leader_id",
            "party_members": "party_members",
            "priority": "priority",
            "sampling_properties": "sampling_properties",
            "sorted_latency": "sorted_latency",
            "status": "status",
            "ticket_id": "ticket_id",
            "ticket_ids": "ticket_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "additional_criteria": True,
            "channel": True,
            "created_at": True,
            "first_ticket_created_at": True,
            "is_mock": True,
            "is_sampled": True,
            "latency_map": True,
            "namespace": True,
            "party_attributes": True,
            "party_id": True,
            "party_leader_id": True,
            "party_members": True,
            "priority": True,
            "sampling_properties": True,
            "sorted_latency": True,
            "status": True,
            "ticket_id": True,
            "ticket_ids": True,
        }

    # endregion static methods
