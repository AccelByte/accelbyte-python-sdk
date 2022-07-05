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

    alternate_ips: List[str]
    custom_attribute: str
    deployment: str
    game_version: str
    image_version: str
    ip: str
    is_ok: bool
    is_override_game_version: bool
    last_update: str
    match_id: str
    message: str
    namespace: str
    pod_name: str
    port: int
    ports: Dict[str, int]
    protocol: str
    provider: str
    region: str
    session_id: str
    status: str

    # endregion fields

    # region methods

    # noinspection PyMethodMayBeStatic
    def to_wsm(self) -> str:
        # pylint: disable=no-self-use
        wsm = [f"type: {DsNotif.get_type()}"]
        if hasattr(self, "alternate_ips") and self.alternate_ips:
            wsm.append(
                f"alternateIps: ["
                + ",".join([str(i) for i in self.alternate_ips])
                + "]"
            )
        if hasattr(self, "custom_attribute") and self.custom_attribute:
            wsm.append(f"customAttribute: {self.custom_attribute}")
        if hasattr(self, "deployment") and self.deployment:
            wsm.append(f"deployment: {self.deployment}")
        if hasattr(self, "game_version") and self.game_version:
            wsm.append(f"gameVersion: {self.game_version}")
        if hasattr(self, "image_version") and self.image_version:
            wsm.append(f"imageVersion: {self.image_version}")
        if hasattr(self, "ip") and self.ip:
            wsm.append(f"ip: {self.ip}")
        if hasattr(self, "is_ok") and self.is_ok:
            wsm.append(f"isOK: {self.is_ok}")
        if hasattr(self, "is_override_game_version") and self.is_override_game_version:
            wsm.append(f"isOverrideGameVersion: {self.is_override_game_version}")
        if hasattr(self, "last_update") and self.last_update:
            wsm.append(f"lastUpdate: {self.last_update}")
        if hasattr(self, "match_id") and self.match_id:
            wsm.append(f"matchId: {self.match_id}")
        if hasattr(self, "message") and self.message:
            wsm.append(f"message: {self.message}")
        if hasattr(self, "namespace") and self.namespace:
            wsm.append(f"namespace: {self.namespace}")
        if hasattr(self, "pod_name") and self.pod_name:
            wsm.append(f"podName: {self.pod_name}")
        if hasattr(self, "port") and self.port:
            wsm.append(f"port: {self.port}")
        if hasattr(self, "ports") and self.ports:
            wsm.append(f"ports: {json.dumps(self.ports)}")
        if hasattr(self, "protocol") and self.protocol:
            wsm.append(f"protocol: {self.protocol}")
        if hasattr(self, "provider") and self.provider:
            wsm.append(f"provider: {self.provider}")
        if hasattr(self, "region") and self.region:
            wsm.append(f"region: {self.region}")
        if hasattr(self, "session_id") and self.session_id:
            wsm.append(f"sessionId: {self.session_id}")
        if hasattr(self, "status") and self.status:
            wsm.append(f"status: {self.status}")
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
            if (not is_strict and name.casefold() == "alternateIps".casefold()) or (
                name == "alternateIps"
            ):
                instance.alternate_ips = [
                    str(i) for i in value.removeprefix("[").removesuffix("]").split(",")
                ]
                continue
            if (not is_strict and name.casefold() == "customAttribute".casefold()) or (
                name == "customAttribute"
            ):
                instance.custom_attribute = value
                continue
            if (not is_strict and name.casefold() == "deployment".casefold()) or (
                name == "deployment"
            ):
                instance.deployment = value
                continue
            if (not is_strict and name.casefold() == "gameVersion".casefold()) or (
                name == "gameVersion"
            ):
                instance.game_version = value
                continue
            if (not is_strict and name.casefold() == "imageVersion".casefold()) or (
                name == "imageVersion"
            ):
                instance.image_version = value
                continue
            if (not is_strict and name.casefold() == "ip".casefold()) or (name == "ip"):
                instance.ip = value
                continue
            if (not is_strict and name.casefold() == "isOK".casefold()) or (
                name == "isOK"
            ):
                instance.is_ok = value
                continue
            if (
                not is_strict and name.casefold() == "isOverrideGameVersion".casefold()
            ) or (name == "isOverrideGameVersion"):
                instance.is_override_game_version = value
                continue
            if (not is_strict and name.casefold() == "lastUpdate".casefold()) or (
                name == "lastUpdate"
            ):
                instance.last_update = value
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
            if (not is_strict and name.casefold() == "namespace".casefold()) or (
                name == "namespace"
            ):
                instance.namespace = value
                continue
            if (not is_strict and name.casefold() == "podName".casefold()) or (
                name == "podName"
            ):
                instance.pod_name = value
                continue
            if (not is_strict and name.casefold() == "port".casefold()) or (
                name == "port"
            ):
                instance.port = value
                continue
            if (not is_strict and name.casefold() == "ports".casefold()) or (
                name == "ports"
            ):
                instance.ports = json.loads(value)
                continue
            if (not is_strict and name.casefold() == "protocol".casefold()) or (
                name == "protocol"
            ):
                instance.protocol = value
                continue
            if (not is_strict and name.casefold() == "provider".casefold()) or (
                name == "provider"
            ):
                instance.provider = value
                continue
            if (not is_strict and name.casefold() == "region".casefold()) or (
                name == "region"
            ):
                instance.region = value
                continue
            if (not is_strict and name.casefold() == "sessionId".casefold()) or (
                name == "sessionId"
            ):
                instance.session_id = value
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
        return "dsNotif"

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "alternateIps": "alternate_ips",
            "customAttribute": "custom_attribute",
            "deployment": "deployment",
            "gameVersion": "game_version",
            "imageVersion": "image_version",
            "ip": "ip",
            "isOK": "is_ok",
            "isOverrideGameVersion": "is_override_game_version",
            "lastUpdate": "last_update",
            "matchId": "match_id",
            "message": "message",
            "namespace": "namespace",
            "podName": "pod_name",
            "port": "port",
            "ports": "ports",
            "protocol": "protocol",
            "provider": "provider",
            "region": "region",
            "sessionId": "session_id",
            "status": "status",
        }

    # endregion static methods
