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


class PartyJoinRequest(WebSocketMessage):
    # region fields

    id_: str
    invitation_token: str
    party_id: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {PartyJoinRequest.get_type()}"]
        id_ = self.id_ if hasattr(self, "id_") else generate_websocket_message_id()
        wsm.append(f"id: {id_}")
        if hasattr(self, "invitation_token") and self.invitation_token:
            wsm.append(f"invitationToken: {self.invitation_token}")
        if hasattr(self, "party_id") and self.party_id:
            wsm.append(f"partyId: {self.party_id}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> PartyJoinRequest:
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
            if (not is_strict and name.casefold() == "invitationToken".casefold()) or (
                name == "invitationToken"
            ):
                instance.invitation_token = value
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
        return "partyJoinRequest"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "invitationToken": "invitation_token",
            "partyId": "party_id",
        }

    # endregion static methods
