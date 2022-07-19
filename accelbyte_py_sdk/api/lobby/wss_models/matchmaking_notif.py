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


class MatchmakingNotif(WebSocketMessage):

    # region fields

    counter_party_member: List[str]
    match_id: str
    message: str
    party_member: List[str]
    ready_duration: int
    status: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {MatchmakingNotif.get_type()}"]
        if hasattr(self, "counter_party_member") and self.counter_party_member:
            wsm.append(
                f"counterPartyMember: ["
                + ",".join([str(i) for i in self.counter_party_member])
                + "]"
            )
        if hasattr(self, "match_id") and self.match_id:
            wsm.append(f"matchId: {self.match_id}")
        if hasattr(self, "message") and self.message:
            wsm.append(f"message: {self.message}")
        if hasattr(self, "party_member") and self.party_member:
            wsm.append(
                f"partyMember: [" + ",".join([str(i) for i in self.party_member]) + "]"
            )
        if hasattr(self, "ready_duration") and self.ready_duration:
            wsm.append(f"readyDuration: {self.ready_duration}")
        if hasattr(self, "status") and self.status:
            wsm.append(f"status: {self.status}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> MatchmakingNotif:
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
            if (
                not is_strict and name.casefold() == "counterPartyMember".casefold()
            ) or (name == "counterPartyMember"):
                instance.counter_party_member = [
                    str(i) for i in value.removeprefix("[").removesuffix("]").split(",")
                ]
                continue
            if (not is_strict and name.casefold() == "matchId".casefold()) or (
                name == "matchId"
            ):
                instance.match_id = value
                continue
            if (not is_strict and name.casefold() == "message".casefold()) or (
                name == "message"
            ):
                instance.message = value
                continue
            if (not is_strict and name.casefold() == "partyMember".casefold()) or (
                name == "partyMember"
            ):
                instance.party_member = [
                    str(i) for i in value.removeprefix("[").removesuffix("]").split(",")
                ]
                continue
            if (not is_strict and name.casefold() == "readyDuration".casefold()) or (
                name == "readyDuration"
            ):
                instance.ready_duration = value
                continue
            if (not is_strict and name.casefold() == "status".casefold()) or (
                name == "status"
            ):
                instance.status = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldTypeNotSupported
                )
        return instance

    @staticmethod
    def get_type() -> str:
        return "matchmakingNotif"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "counterPartyMember": "counter_party_member",
            "matchId": "match_id",
            "message": "message",
            "partyMember": "party_member",
            "readyDuration": "ready_duration",
            "status": "status",
        }

    # endregion static methods
