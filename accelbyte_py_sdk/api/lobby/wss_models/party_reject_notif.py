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


class PartyRejectNotif(WebSocketMessage):
    # region fields

    leader_id: str
    party_id: str
    user_id: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {PartyRejectNotif.get_type()}"]
        if hasattr(self, "leader_id") and self.leader_id:
            wsm.append(f"leaderId: {self.leader_id}")
        if hasattr(self, "party_id") and self.party_id:
            wsm.append(f"partyId: {self.party_id}")
        if hasattr(self, "user_id") and self.user_id:
            wsm.append(f"userId: {self.user_id}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> PartyRejectNotif:
        instance = cls()
        if not wsm:
            return instance
        lines = wsm.splitlines(keepends=False)
        if len(lines) < 1:
            raise WebSocketMessageParserException(
                WebSocketMessageParserError.TypeFormatInvalid
            )
        for line in lines[1:]:
            parts = line.split(":", 1)
            if len(parts) != 2:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldFormatInvalid
                )
            name, value = parts[0].strip(), parts[1].strip()
            if (not is_strict and name.casefold() == "leaderId".casefold()) or (
                name == "leaderId"
            ):
                instance.leader_id = value
                continue
            if (not is_strict and name.casefold() == "partyId".casefold()) or (
                name == "partyId"
            ):
                instance.party_id = value
                continue
            if (not is_strict and name.casefold() == "userId".casefold()) or (
                name == "userId"
            ):
                instance.user_id = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldTypeNotSupported
                )
        return instance

    @staticmethod
    def get_type() -> str:
        return "partyRejectNotif"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "leaderId": "leader_id",
            "partyId": "party_id",
            "userId": "user_id",
        }

    # endregion static methods
