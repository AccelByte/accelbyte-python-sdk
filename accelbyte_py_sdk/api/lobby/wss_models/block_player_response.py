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


class BlockPlayerResponse(WebSocketMessage):
    # region fields

    block_user_id: str
    code: int
    id_: str
    namespace: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {BlockPlayerResponse.get_type()}"]
        if hasattr(self, "block_user_id") and self.block_user_id:
            wsm.append(f"blockUserId: {self.block_user_id}")
        if hasattr(self, "code") and self.code:
            wsm.append(f"code: {self.code}")
        id_ = self.id_ if hasattr(self, "id_") else generate_websocket_message_id()
        wsm.append(f"id: {id_}")
        if hasattr(self, "namespace") and self.namespace:
            wsm.append(f"namespace: {self.namespace}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> BlockPlayerResponse:
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
            if (not is_strict and name.casefold() == "blockUserId".casefold()) or (
                name == "blockUserId"
            ):
                instance.block_user_id = value
                continue
            if (not is_strict and name.casefold() == "code".casefold()) or (
                name == "code"
            ):
                instance.code = value
                continue
            if (not is_strict and name.casefold() == "namespace".casefold()) or (
                name == "namespace"
            ):
                instance.namespace = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(
                    WebSocketMessageParserError.FieldTypeNotSupported
                )
        return instance

    @staticmethod
    def get_type() -> str:
        return "blockPlayerResponse"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "blockUserId": "block_user_id",
            "code": "code",
            "id": "id_",
            "namespace": "namespace",
        }

    # endregion static methods
