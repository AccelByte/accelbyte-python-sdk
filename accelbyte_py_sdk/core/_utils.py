# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import logging
import logging.handlers
import os

from typing import Any, Tuple, Union
from uuid import uuid4


SENTINEL = object()


def add_buffered_file_handler_to_logger(
    filename: Union[str, os.PathLike[str]],
    capacity: int,
    level: Union[None, int] = None,
    flush_level: Union[None, int] = None,
    flush_on_close: Union[None, bool] = None,
    additional_scope: Union[None, str] = None,
) -> logging.Handler:
    logger = get_logger(additional_scope)
    if level is not None:
        logger.setLevel(level=level)
    buffered_file_handler = create_buffered_file_handler(
        f_filename=filename,
        m_capacity=capacity,
        m_flush_level=flush_level,
        m_flush_on_close=flush_on_close,
    )
    logger.addHandler(buffered_file_handler)
    return buffered_file_handler


def add_stream_handler_to_logger(
    level: Union[None, int] = None, additional_scope: Union[None, str] = None
) -> logging.Handler:
    logger = get_logger(additional_scope)
    if level is not None:
        logger.setLevel(level=level)
    stream_handler = logging.StreamHandler()
    logger.addHandler(stream_handler)
    return stream_handler


def clamp(value, minimum, maximum):
    return max(minimum, min(value, maximum))


def create_buffered_file_handler(
    f_filename: Union[str, os.PathLike[str]],
    m_capacity: int,
    f_mode: Union[None, str] = None,
    f_encoding: Union[None, str] = None,
    f_delay: Union[None, bool] = None,
    f_errors: Union[None, str] = None,
    m_flush_level: Union[None, int] = None,
    m_flush_on_close: Union[None, bool] = None,
) -> logging.handlers.MemoryHandler:
    f_mode = f_mode if f_mode is not None else "a"
    f_delay = f_delay if f_delay is not None else False
    m_flush_level = m_flush_level if m_flush_level is not None else logging.ERROR
    m_flush_on_close = m_flush_on_close if m_flush_on_close is not None else True
    file_handler = logging.FileHandler(
        filename=f_filename,
        mode=f_mode,
        encoding=f_encoding,
        delay=f_delay,
        errors=f_errors,
    )
    memory_handler = logging.handlers.MemoryHandler(
        capacity=m_capacity,
        flushLevel=m_flush_level,
        target=file_handler,
        flushOnClose=m_flush_on_close,
    )
    return memory_handler


def generate_id(length: int) -> str:
    uuid_str = str(uuid4()).replace("-", "")[0:length]
    return uuid_str


def generate_websocket_message_id() -> str:
    return generate_id(24)


def get_env_config() -> Tuple[str, str, str, str]:
    return (
        os.environ.get("AB_BASE_URL", ""),
        os.environ.get("AB_CLIENT_ID", ""),
        os.environ.get("AB_CLIENT_SECRET", ""),
        os.environ.get("AB_NAMESPACE", ""),
    )


def get_env_user_credentials() -> Tuple[str, str]:
    return os.environ.get("AB_USERNAME", ""), os.environ.get("AB_PASSWORD", "")


def get_logger(additional_scope: Union[None, str] = None) -> logging.Logger:
    additional_scope = additional_scope or ""
    base_logger_name = "accelbyte_py_sdk"
    logger_name = (
        ".".join([base_logger_name, additional_scope])
        if additional_scope
        else base_logger_name
    )
    logger = logging.getLogger(logger_name)
    return logger


def get_member(obj: Any, member_name: str, default: Any = None) -> Any:
    if obj is None:
        return default
    if hasattr(obj, member_name):
        return getattr(obj, member_name)
    elif hasattr(obj, "__iter__") and member_name in obj:
        return obj[member_name]
    else:
        return default


def set_env_config(
    base_url: str, client_id: str, client_secret: str, namespace: str
) -> None:
    os.environ["AB_BASE_URL"] = base_url
    os.environ["AB_CLIENT_ID"] = client_id
    os.environ["AB_CLIENT_SECRET"] = client_secret
    os.environ["AB_NAMESPACE"] = namespace


def set_env_user_credentials(username: str, password: str) -> None:
    os.environ["AB_USERNAME"] = username
    os.environ["AB_PASSWORD"] = password


def set_logger_level(
    level: Union[int, str], additional_scope: Union[None, str] = None
) -> None:
    logger = get_logger(additional_scope)
    logger.setLevel(level)
