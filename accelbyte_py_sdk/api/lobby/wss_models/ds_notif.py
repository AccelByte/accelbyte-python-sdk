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


class DsNotif(WebSocketMessage):

    # region fields

    pod_name: str
    image_version: str
    namespace: str
    ip: str
    alternate_ips: List[str]
    port: int
    protocol: str
    ports: Dict[str, int]
    provider: str
    game_version: str
    status: str
    last_update: str
    session_id: str
    deployment: str
    region: str
    is_override_game_version: bool
    custom_attribute: str
    match_id: str
    is_ok: bool
    message: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {DsNotif.get_type()}"]
        if hasattr(self, "pod_name") and self.pod_name:
            wsm.append(f"podName: {self.pod_name}")
        if hasattr(self, "image_version") and self.image_version:
            wsm.append(f"imageVersion: {self.image_version}")
        if hasattr(self, "namespace") and self.namespace:
            wsm.append(f"namespace: {self.namespace}")
        if hasattr(self, "ip") and self.ip:
            wsm.append(f"ip: {self.ip}")
        if hasattr(self, "alternate_ips") and self.alternate_ips:
            wsm.append(f"alternateIps: [" + ','.join([str(i) for i in self.alternate_ips]) + "]")
        if hasattr(self, "port") and self.port:
            wsm.append(f"port: {self.port}")
        if hasattr(self, "protocol") and self.protocol:
            wsm.append(f"protocol: {self.protocol}")
        if hasattr(self, "ports") and self.ports:
            wsm.append(f"ports: {json.dumps(self.ports)}")
        if hasattr(self, "provider") and self.provider:
            wsm.append(f"provider: {self.provider}")
        if hasattr(self, "game_version") and self.game_version:
            wsm.append(f"gameVersion: {self.game_version}")
        if hasattr(self, "status") and self.status:
            wsm.append(f"status: {self.status}")
        if hasattr(self, "last_update") and self.last_update:
            wsm.append(f"lastUpdate: {self.last_update}")
        if hasattr(self, "session_id") and self.session_id:
            wsm.append(f"sessionId: {self.session_id}")
        if hasattr(self, "deployment") and self.deployment:
            wsm.append(f"deployment: {self.deployment}")
        if hasattr(self, "region") and self.region:
            wsm.append(f"region: {self.region}")
        if hasattr(self, "is_override_game_version") and self.is_override_game_version:
            wsm.append(f"isOverrideGameVersion: {self.is_override_game_version}")
        if hasattr(self, "custom_attribute") and self.custom_attribute:
            wsm.append(f"customAttribute: {self.custom_attribute}")
        if hasattr(self, "match_id") and self.match_id:
            wsm.append(f"matchId: {self.match_id}")
        if hasattr(self, "is_ok") and self.is_ok:
            wsm.append(f"isOK: {self.is_ok}")
        if hasattr(self, "message") and self.message:
            wsm.append(f"message: {self.message}")
        return "\n".join(wsm)

    # endregion methods

    # region static methods

    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False) -> DsNotif:
        instance = cls()
        if not wsm:
            return instance
        lines = wsm.splitlines(keepends=False)
        if len(lines) < 1:
            raise WebSocketMessageParserException(WebSocketMessageParserError.TypeFormatInvalid)
        for line in lines[1:]:
            parts = line.split(":", 1)
            if len(parts) != 2:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldFormatInvalid)
            name, value = parts[0].strip(), parts[1].strip()
            if name == "podName":
                instance.pod_name = value
                continue
            if name == "imageVersion":
                instance.image_version = value
                continue
            if name == "namespace":
                instance.namespace = value
                continue
            if name == "ip":
                instance.ip = value
                continue
            if name == "alternateIps":
                instance.alternate_ips = [str(i) for i in value.removeprefix("[").removesuffix("]").split(",")]
                continue
            if name == "port":
                instance.port = value
                continue
            if name == "protocol":
                instance.protocol = value
                continue
            if name == "ports":
                instance.ports = json.loads(value)
                continue
            if name == "provider":
                instance.provider = value
                continue
            if name == "gameVersion":
                instance.game_version = value
                continue
            if name == "status":
                instance.status = value
                continue
            if name == "lastUpdate":
                instance.last_update = value
                continue
            if name == "sessionId":
                instance.session_id = value
                continue
            if name == "deployment":
                instance.deployment = value
                continue
            if name == "region":
                instance.region = value
                continue
            if name == "isOverrideGameVersion":
                instance.is_override_game_version = value
                continue
            if name == "customAttribute":
                instance.custom_attribute = value
                continue
            if name == "matchId":
                instance.match_id = value
                continue
            if name == "isOK":
                instance.is_ok = value
                continue
            if name == "message":
                instance.message = value
                continue
            if is_strict:
                raise WebSocketMessageParserException(WebSocketMessageParserError.FieldTypeNotSupported)
        return instance

    @staticmethod
    def get_type() -> str:
        return "dsNotif"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "podName": "pod_name",
            "imageVersion": "image_version",
            "namespace": "namespace",
            "ip": "ip",
            "alternateIps": "alternate_ips",
            "port": "port",
            "protocol": "protocol",
            "ports": "ports",
            "provider": "provider",
            "gameVersion": "game_version",
            "status": "status",
            "lastUpdate": "last_update",
            "sessionId": "session_id",
            "deployment": "deployment",
            "region": "region",
            "isOverrideGameVersion": "is_override_game_version",
            "customAttribute": "custom_attribute",
            "matchId": "match_id",
            "isOK": "is_ok",
            "message": "message",
        }

    # endregion static methods
