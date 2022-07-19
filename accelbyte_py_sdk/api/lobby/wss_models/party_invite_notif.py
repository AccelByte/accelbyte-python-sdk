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


class PartyInviteNotif(WebSocketMessage):

    # region fields

    invitee_id: str
    inviter_id: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {PartyInviteNotif.get_type()}"]
        if hasattr(self, "invitee_id") and self.invitee_id:
            wsm.append(f"inviteeId: {self.invitee_id}")
        if hasattr(self, "inviter_id") and self.inviter_id:
            wsm.append(f"inviterId: {self.inviter_id}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> PartyInviteNotif:
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
            if (not is_strict and name.casefold() == "inviteeId".casefold()) or (
                name == "inviteeId"
            ):
                instance.invitee_id = value
                continue
            if (not is_strict and name.casefold() == "inviterId".casefold()) or (
                name == "inviterId"
            ):
                instance.inviter_id = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldTypeNotSupported
                )
        return instance

    @staticmethod
    def get_type() -> str:
        return "partyInviteNotif"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "inviteeId": "invitee_id",
            "inviterId": "inviter_id",
        }

    # endregion static methods
