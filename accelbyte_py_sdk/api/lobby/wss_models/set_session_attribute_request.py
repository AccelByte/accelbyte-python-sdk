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


class SetSessionAttributeRequest(WebSocketMessage):

    # region fields

    id_: str
    namespace: str
    key: str
    value: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {SetSessionAttributeRequest.get_type()}"]
        wsm.append(self.id_ if hasattr(self, "id_") else generate_websocket_message_id())
        if hasattr(self, "namespace") and self.namespace:
            wsm.append(f"namespace: {self.namespace}")
        if hasattr(self, "key") and self.key:
            wsm.append(f"key: {self.key}")
        if hasattr(self, "value") and self.value:
            wsm.append(f"value: {self.value}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> SetSessionAttributeRequest:
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
            if name == "namespace":
                instance.namespace = value
                continue
            if name == "key":
                instance.key = value
                continue
            if name == "value":
                instance.value = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldTypeNotSupported)
        return instance

    @staticmethod
    def get_type() -> str:
        return "setSessionAttributeRequest"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "key": "key",
            "value": "value",
        }

    # endregion static methods
