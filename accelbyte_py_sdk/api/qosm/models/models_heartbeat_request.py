# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Qo S Manager Service ()

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


class ModelsHeartbeatRequest(Model):
    """Models heartbeat request (models.HeartbeatRequest)

    Properties:
        ip: (ip) REQUIRED str

        port: (port) REQUIRED int

        region: (region) REQUIRED str
    """

    # region fields

    ip: str  # REQUIRED
    port: int  # REQUIRED
    region: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ip(self, value: str) -> ModelsHeartbeatRequest:
        self.ip = value
        return self

    def with_port(self, value: int) -> ModelsHeartbeatRequest:
        self.port = value
        return self

    def with_region(self, value: str) -> ModelsHeartbeatRequest:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ip"):
            result["ip"] = str(self.ip)
        elif include_empty:
            result["ip"] = ""
        if hasattr(self, "port"):
            result["port"] = int(self.port)
        elif include_empty:
            result["port"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ip: str,
        port: int,
        region: str,
    ) -> ModelsHeartbeatRequest:
        instance = cls()
        instance.ip = ip
        instance.port = port
        instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsHeartbeatRequest:
        instance = cls()
        if not dict_:
            return instance
        if "ip" in dict_ and dict_["ip"] is not None:
            instance.ip = str(dict_["ip"])
        elif include_empty:
            instance.ip = ""
        if "port" in dict_ and dict_["port"] is not None:
            instance.port = int(dict_["port"])
        elif include_empty:
            instance.port = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsHeartbeatRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsHeartbeatRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsHeartbeatRequest,
        List[ModelsHeartbeatRequest],
        Dict[Any, ModelsHeartbeatRequest],
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
            "ip": "ip",
            "port": "port",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ip": True,
            "port": True,
            "region": True,
        }

    # endregion static methods
