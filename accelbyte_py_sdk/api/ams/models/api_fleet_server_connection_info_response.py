# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiFleetServerConnectionInfoResponse(Model):
    """Api fleet server connection info response (api.FleetServerConnectionInfoResponse)

    Properties:
        expires_at: (expiresAt) REQUIRED str

        host: (host) REQUIRED str

        logstream_port: (logstreamPort) REQUIRED int

        secret: (secret) REQUIRED str
    """

    # region fields

    expires_at: str  # REQUIRED
    host: str  # REQUIRED
    logstream_port: int  # REQUIRED
    secret: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_expires_at(self, value: str) -> ApiFleetServerConnectionInfoResponse:
        self.expires_at = value
        return self

    def with_host(self, value: str) -> ApiFleetServerConnectionInfoResponse:
        self.host = value
        return self

    def with_logstream_port(self, value: int) -> ApiFleetServerConnectionInfoResponse:
        self.logstream_port = value
        return self

    def with_secret(self, value: str) -> ApiFleetServerConnectionInfoResponse:
        self.secret = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "expires_at"):
            result["expiresAt"] = str(self.expires_at)
        elif include_empty:
            result["expiresAt"] = ""
        if hasattr(self, "host"):
            result["host"] = str(self.host)
        elif include_empty:
            result["host"] = ""
        if hasattr(self, "logstream_port"):
            result["logstreamPort"] = int(self.logstream_port)
        elif include_empty:
            result["logstreamPort"] = 0
        if hasattr(self, "secret"):
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, expires_at: str, host: str, logstream_port: int, secret: str, **kwargs
    ) -> ApiFleetServerConnectionInfoResponse:
        instance = cls()
        instance.expires_at = expires_at
        instance.host = host
        instance.logstream_port = logstream_port
        instance.secret = secret
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetServerConnectionInfoResponse:
        instance = cls()
        if not dict_:
            return instance
        if "expiresAt" in dict_ and dict_["expiresAt"] is not None:
            instance.expires_at = str(dict_["expiresAt"])
        elif include_empty:
            instance.expires_at = ""
        if "host" in dict_ and dict_["host"] is not None:
            instance.host = str(dict_["host"])
        elif include_empty:
            instance.host = ""
        if "logstreamPort" in dict_ and dict_["logstreamPort"] is not None:
            instance.logstream_port = int(dict_["logstreamPort"])
        elif include_empty:
            instance.logstream_port = 0
        if "secret" in dict_ and dict_["secret"] is not None:
            instance.secret = str(dict_["secret"])
        elif include_empty:
            instance.secret = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetServerConnectionInfoResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetServerConnectionInfoResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetServerConnectionInfoResponse,
        List[ApiFleetServerConnectionInfoResponse],
        Dict[Any, ApiFleetServerConnectionInfoResponse],
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
            "expiresAt": "expires_at",
            "host": "host",
            "logstreamPort": "logstream_port",
            "secret": "secret",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "expiresAt": True,
            "host": True,
            "logstreamPort": True,
            "secret": True,
        }

    # endregion static methods
