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


class PersonalChatNotif(WebSocketMessage):

    # region fields

    id_: str
    from_: str
    to: str
    payload: str
    received_at: int

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {PersonalChatNotif.get_type()}"]
        wsm.append(self.id_ if hasattr(self, "id_") else generate_websocket_message_id())
        if hasattr(self, "from_") and self.from_:
            wsm.append(f"from: {self.from_}")
        if hasattr(self, "to") and self.to:
            wsm.append(f"to: {self.to}")
        if hasattr(self, "payload") and self.payload:
            wsm.append(f"payload: {self.payload}")
        if hasattr(self, "received_at") and self.received_at:
            wsm.append(f"receivedAt: {self.received_at}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> PersonalChatNotif:
        instance = cls()
        if not wsm:
            return instance
        lines = wsm.splitlines(keepends=False)
        if len(lines) < 2:
            raise WebSocketMessageParserException(WebSocketMessageParserError.TypeFormatInvalid)
        instance.id_ = lines[1]
        for line in lines[2:]:
            parts = line.split(":", 1)
            if len(parts) != 2:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldFormatInvalid)
            name, value = parts[0].strip(), parts[1].strip()
            if name == "from":
                instance.from_ = value
                continue
            if name == "to":
                instance.to = value
                continue
            if name == "payload":
                instance.payload = value
                continue
            if name == "receivedAt":
                instance.received_at = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldTypeNotSupported)
        return instance

    @staticmethod
    def get_type() -> str:
        return "personalChatNotif"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "from": "from_",
            "to": "to",
            "payload": "payload",
            "receivedAt": "received_at",
        }

    # endregion static methods
