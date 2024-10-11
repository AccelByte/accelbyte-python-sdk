# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Lobby Server

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
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum


class LogLevelEnum(StrEnum):
    DEBUG = "debug"
    ERROR = "error"
    FATAL = "fatal"
    INFO = "info"
    PANIC = "panic"
    TRACE = "trace"
    WARNING = "warning"


class LogLevelDBEnum(StrEnum):
    DEBUG = "debug"
    ERROR = "error"
    FATAL = "fatal"
    INFO = "info"
    PANIC = "panic"
    TRACE = "trace"
    WARNING = "warning"


class LogconfigConfiguration(Model):
    """Logconfig configuration (logconfig.Configuration)

    Properties:
        log_level: (logLevel) OPTIONAL Union[str, LogLevelEnum]

        log_level_db: (logLevelDB) OPTIONAL Union[str, LogLevelDBEnum]

        slow_query_threshold: (slowQueryThreshold) OPTIONAL int

        socket_log_enabled: (socketLogEnabled) OPTIONAL bool
    """

    # region fields

    log_level: Union[str, LogLevelEnum]  # OPTIONAL
    log_level_db: Union[str, LogLevelDBEnum]  # OPTIONAL
    slow_query_threshold: int  # OPTIONAL
    socket_log_enabled: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_log_level(self, value: Union[str, LogLevelEnum]) -> LogconfigConfiguration:
        self.log_level = value
        return self

    def with_log_level_db(
        self, value: Union[str, LogLevelDBEnum]
    ) -> LogconfigConfiguration:
        self.log_level_db = value
        return self

    def with_slow_query_threshold(self, value: int) -> LogconfigConfiguration:
        self.slow_query_threshold = value
        return self

    def with_socket_log_enabled(self, value: bool) -> LogconfigConfiguration:
        self.socket_log_enabled = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "log_level"):
            result["logLevel"] = str(self.log_level)
        elif include_empty:
            result["logLevel"] = Union[str, LogLevelEnum]()
        if hasattr(self, "log_level_db"):
            result["logLevelDB"] = str(self.log_level_db)
        elif include_empty:
            result["logLevelDB"] = Union[str, LogLevelDBEnum]()
        if hasattr(self, "slow_query_threshold"):
            result["slowQueryThreshold"] = int(self.slow_query_threshold)
        elif include_empty:
            result["slowQueryThreshold"] = 0
        if hasattr(self, "socket_log_enabled"):
            result["socketLogEnabled"] = bool(self.socket_log_enabled)
        elif include_empty:
            result["socketLogEnabled"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        log_level: Optional[Union[str, LogLevelEnum]] = None,
        log_level_db: Optional[Union[str, LogLevelDBEnum]] = None,
        slow_query_threshold: Optional[int] = None,
        socket_log_enabled: Optional[bool] = None,
        **kwargs,
    ) -> LogconfigConfiguration:
        instance = cls()
        if log_level is not None:
            instance.log_level = log_level
        if log_level_db is not None:
            instance.log_level_db = log_level_db
        if slow_query_threshold is not None:
            instance.slow_query_threshold = slow_query_threshold
        if socket_log_enabled is not None:
            instance.socket_log_enabled = socket_log_enabled
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LogconfigConfiguration:
        instance = cls()
        if not dict_:
            return instance
        if "logLevel" in dict_ and dict_["logLevel"] is not None:
            instance.log_level = str(dict_["logLevel"])
        elif include_empty:
            instance.log_level = Union[str, LogLevelEnum]()
        if "logLevelDB" in dict_ and dict_["logLevelDB"] is not None:
            instance.log_level_db = str(dict_["logLevelDB"])
        elif include_empty:
            instance.log_level_db = Union[str, LogLevelDBEnum]()
        if "slowQueryThreshold" in dict_ and dict_["slowQueryThreshold"] is not None:
            instance.slow_query_threshold = int(dict_["slowQueryThreshold"])
        elif include_empty:
            instance.slow_query_threshold = 0
        if "socketLogEnabled" in dict_ and dict_["socketLogEnabled"] is not None:
            instance.socket_log_enabled = bool(dict_["socketLogEnabled"])
        elif include_empty:
            instance.socket_log_enabled = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LogconfigConfiguration]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LogconfigConfiguration]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        LogconfigConfiguration,
        List[LogconfigConfiguration],
        Dict[Any, LogconfigConfiguration],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "logLevel": "log_level",
            "logLevelDB": "log_level_db",
            "slowQueryThreshold": "slow_query_threshold",
            "socketLogEnabled": "socket_log_enabled",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "logLevel": False,
            "logLevelDB": False,
            "slowQueryThreshold": False,
            "socketLogEnabled": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "logLevel": [
                "debug",
                "error",
                "fatal",
                "info",
                "panic",
                "trace",
                "warning",
            ],
            "logLevelDB": [
                "debug",
                "error",
                "fatal",
                "info",
                "panic",
                "trace",
                "warning",
            ],
        }

    # endregion static methods
