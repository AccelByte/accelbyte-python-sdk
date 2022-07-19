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


class PartyPromoteLeaderResponse(WebSocketMessage):

    # region fields

    code: int
    id_: str
    invitation_token: str
    invitees: str
    leader_id: str
    members: str
    party_id: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {PartyPromoteLeaderResponse.get_type()}"]
        if hasattr(self, "code") and self.code:
            wsm.append(f"code: {self.code}")
        id_ = self.id_ if hasattr(self, "id_") else generate_websocket_message_id()
        wsm.append(f"id: {id_}")
        if hasattr(self, "invitation_token") and self.invitation_token:
            wsm.append(f"invitationToken: {self.invitation_token}")
        if hasattr(self, "invitees") and self.invitees:
            wsm.append(f"invitees: {self.invitees}")
        if hasattr(self, "leader_id") and self.leader_id:
            wsm.append(f"leaderId: {self.leader_id}")
        if hasattr(self, "members") and self.members:
            wsm.append(f"members: {self.members}")
        if hasattr(self, "party_id") and self.party_id:
            wsm.append(f"partyId: {self.party_id}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(
        cls, wsm: str, is_strict: bool = False
    ) -> PartyPromoteLeaderResponse:
        instance = cls()
        if not wsm:
            return instance
        lines = wsm.splitlines(keepends=False)
        if len(lines) < 2:
            raise WebSocketMessageParserException(
                WebSocketMessageParserError.TypeFormatInvalid
            )
        id_line = lines[1]
        if not id_line.startswith("id: "):
            raise WebSocketMessageParserException(
                WebSocketMessageParserError.FieldFormatInvalid
            )
        instance.id_ = id_line.removeprefix("id: ")
        for line in lines[2:]:
            parts = line.split(":", 1)
            if len(parts) != 2:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldFormatInvalid
                )
            name, value = parts[0].strip(), parts[1].strip()
            if (not is_strict and name.casefold() == "code".casefold()) or (
                name == "code"
            ):
                instance.code = value
                continue
            if (not is_strict and name.casefold() == "invitationToken".casefold()) or (
                name == "invitationToken"
            ):
                instance.invitation_token = value
                continue
            if (not is_strict and name.casefold() == "invitees".casefold()) or (
                name == "invitees"
            ):
                instance.invitees = value
                continue
            if (not is_strict and name.casefold() == "leaderId".casefold()) or (
                name == "leaderId"
            ):
                instance.leader_id = value
                continue
            if (not is_strict and name.casefold() == "members".casefold()) or (
                name == "members"
            ):
                instance.members = value
                continue
            if (not is_strict and name.casefold() == "partyId".casefold()) or (
                name == "partyId"
            ):
                instance.party_id = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldTypeNotSupported
                )
        return instance

    @staticmethod
    def get_type() -> str:
        return "partyPromoteLeaderResponse"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code": "code",
            "id": "id_",
            "invitationToken": "invitation_token",
            "invitees": "invitees",
            "leaderId": "leader_id",
            "members": "members",
            "partyId": "party_id",
        }

    # endregion static methods
