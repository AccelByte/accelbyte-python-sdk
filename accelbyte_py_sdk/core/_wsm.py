# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations
from enum import Enum, auto
from typing import Dict, Optional, Tuple, Type


class WebSocketMessageParserError(Enum):
    FieldConversionFailed = auto()
    FieldFormatInvalid = auto()
    FieldTypeNotSupported = auto()
    TypeFormatInvalid = auto()
    TypeNotSupported = auto()

    def __str__(self):
        return str(self.name)


class WebSocketMessageParserException(Exception):
    def __init__(self, error: WebSocketMessageParserError):
        self.error = error
        super().__init__()


class WebSocketMessage:
    @classmethod
    def create_from_wsm(cls, wsm: str, is_strict: bool = False):
        raise NotImplementedError


def parse_wsm_header(
    msg: str,
) -> Tuple[Optional[str], Optional[WebSocketMessageParserError]]:
    lines = msg.splitlines(keepends=False)
    if len(lines) < 2:
        return None, WebSocketMessageParserError.TypeFormatInvalid

    # type
    type_line = lines[0]
    if not type_line.startswith("type: "):
        return None, WebSocketMessageParserError.TypeFormatInvalid
    type_ = type_line.removeprefix("type: ")

    return type_, None


def parse_wsm(
    wsm: str, models: Dict[str, Type[WebSocketMessage]], is_strict: bool = False
) -> Tuple[Optional[WebSocketMessage], Optional[WebSocketMessageParserError]]:
    type_, error = parse_wsm_header(wsm)
    if error:
        return None, error
    model = models.get(type_)
    if model is None:
        return None, WebSocketMessageParserError.TypeNotSupported
    try:
        return model.create_from_wsm(wsm, is_strict=is_strict), None
    except WebSocketMessageParserException as exception:
        return None, exception.error
