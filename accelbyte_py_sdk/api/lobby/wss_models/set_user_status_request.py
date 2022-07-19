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


class SetUserStatusRequest(WebSocketMessage):

    # region fields

    activity: str
    availability: int
    id_: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {SetUserStatusRequest.get_type()}"]
        if hasattr(self, "activity") and self.activity:
            wsm.append(f"activity: {self.activity}")
        if hasattr(self, "availability") and self.availability:
            wsm.append(f"availability: {self.availability}")
        id_ = self.id_ if hasattr(self, "id_") else generate_websocket_message_id()
        wsm.append(f"id: {id_}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> SetUserStatusRequest:
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
            if (not is_strict and name.casefold() == "activity".casefold()) or (
                name == "activity"
            ):
                instance.activity = value
                continue
            if (not is_strict and name.casefold() == "availability".casefold()) or (
                name == "availability"
            ):
                instance.availability = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldTypeNotSupported
                )
        return instance

    @staticmethod
    def get_type() -> str:
        return "setUserStatusRequest"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "activity": "activity",
            "availability": "availability",
            "id": "id_",
        }

    # endregion static methods
