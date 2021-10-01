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


class StartMatchmakingRequest(WebSocketMessage):

    # region fields

    id_: str
    game_mode: str
    priority: int
    party_attributes: Dict[str, Any]
    temp_party: str
    extra_attributes: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {StartMatchmakingRequest.get_type()}"]
        wsm.append(self.id_ if hasattr(self, "id_") else generate_websocket_message_id())
        if hasattr(self, "game_mode") and self.game_mode:
            wsm.append(f"gameMode: {self.game_mode}")
        if hasattr(self, "priority") and self.priority:
            wsm.append(f"priority: {self.priority}")
        if hasattr(self, "party_attributes") and self.party_attributes:
            wsm.append(f"partyAttributes: {json.dumps(self.party_attributes)}")
        if hasattr(self, "temp_party") and self.temp_party:
            wsm.append(f"tempParty: {self.temp_party}")
        if hasattr(self, "extra_attributes") and self.extra_attributes:
            wsm.append(f"extraAttributes: {self.extra_attributes}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> StartMatchmakingRequest:
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
            if name == "gameMode":
                instance.game_mode = value
                continue
            if name == "priority":
                instance.priority = value
                continue
            if name == "partyAttributes":
                instance.party_attributes = json.loads(value)
                continue
            if name == "tempParty":
                instance.temp_party = value
                continue
            if name == "extraAttributes":
                instance.extra_attributes = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldTypeNotSupported)
        return instance

    @staticmethod
    def get_type() -> str:
        return "startMatchmakingRequest"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "gameMode": "game_mode",
            "priority": "priority",
            "partyAttributes": "party_attributes",
            "tempParty": "temp_party",
            "extraAttributes": "extra_attributes",
        }

    # endregion static methods
