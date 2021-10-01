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
import json
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import WebSocketMessage

from ....core import WebSocketMessageParserError

from ....core import WebSocketMessageParserException
from ....core import generate_websocket_message_id


class PartyDataUpdateNotif(WebSocketMessage):

    # region fields

    party_id: str
    leader: str
    namespace: str
    members: List[str]
    invitees: List[str]
    custom_attributes: Dict[str, Any]
    updated_at: int

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {PartyDataUpdateNotif.get_type()}"]
        if hasattr(self, "party_id") and self.party_id:
            wsm.append(f"partyId: {self.party_id}")
        if hasattr(self, "leader") and self.leader:
            wsm.append(f"leader: {self.leader}")
        if hasattr(self, "namespace") and self.namespace:
            wsm.append(f"namespace: {self.namespace}")
        if hasattr(self, "members") and self.members:
            wsm.append(f"members: [" + ','.join([str(i) for i in self.members]) + "]")
        if hasattr(self, "invitees") and self.invitees:
            wsm.append(f"invitees: [" + ','.join([str(i) for i in self.invitees]) + "]")
        if hasattr(self, "custom_attributes") and self.custom_attributes:
            wsm.append(f"customAttributes: {json.dumps(self.custom_attributes)}")
        if hasattr(self, "updated_at") and self.updated_at:
            wsm.append(f"updatedAt: {self.updated_at}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> PartyDataUpdateNotif:
        instance = cls()
        if not wsm:
            return instance
        lines = wsm.splitlines(keepends=False)
        if len(lines) < 1:
            raise WebSocketMessageParserException(WebSocketMessageParserError.TypeFormatInvalid)
        for line in lines[1:]:
            parts = line.split(":", 1)
            if len(parts) != 2:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldFormatInvalid)
            name, value = parts[0].strip(), parts[1].strip()
            if name == "partyId":
                instance.party_id = value
                continue
            if name == "leader":
                instance.leader = value
                continue
            if name == "namespace":
                instance.namespace = value
                continue
            if name == "members":
                instance.members = [str(i) for i in value.removeprefix("[").removesuffix("]").split(",")]
                continue
            if name == "invitees":
                instance.invitees = [str(i) for i in value.removeprefix("[").removesuffix("]").split(",")]
                continue
            if name == "customAttributes":
                instance.custom_attributes = json.loads(value)
                continue
            if name == "updatedAt":
                instance.updated_at = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldTypeNotSupported)
        return instance

    @staticmethod
    def get_type() -> str:
        return "partyDataUpdateNotif"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "partyId": "party_id",
            "leader": "leader",
            "namespace": "namespace",
            "members": "members",
            "invitees": "invitees",
            "customAttributes": "custom_attributes",
            "updatedAt": "updated_at",
        }

    # endregion static methods
