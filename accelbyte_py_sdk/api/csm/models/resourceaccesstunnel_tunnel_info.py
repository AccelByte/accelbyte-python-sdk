# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ResourceaccesstunnelTunnelInfo(Model):
    """Resourceaccesstunnel tunnel info (resourceaccesstunnel.TunnelInfo)

    Properties:
        endpoint: (endpoint) REQUIRED str

        name: (name) REQUIRED str

        token: (token) REQUIRED str
    """

    # region fields

    endpoint: str  # REQUIRED
    name: str  # REQUIRED
    token: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_endpoint(self, value: str) -> ResourceaccesstunnelTunnelInfo:
        self.endpoint = value
        return self

    def with_name(self, value: str) -> ResourceaccesstunnelTunnelInfo:
        self.name = value
        return self

    def with_token(self, value: str) -> ResourceaccesstunnelTunnelInfo:
        self.token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "endpoint"):
            result["endpoint"] = str(self.endpoint)
        elif include_empty:
            result["endpoint"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "token"):
            result["token"] = str(self.token)
        elif include_empty:
            result["token"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, endpoint: str, name: str, token: str, **kwargs
    ) -> ResourceaccesstunnelTunnelInfo:
        instance = cls()
        instance.endpoint = endpoint
        instance.name = name
        instance.token = token
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ResourceaccesstunnelTunnelInfo:
        instance = cls()
        if not dict_:
            return instance
        if "endpoint" in dict_ and dict_["endpoint"] is not None:
            instance.endpoint = str(dict_["endpoint"])
        elif include_empty:
            instance.endpoint = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "token" in dict_ and dict_["token"] is not None:
            instance.token = str(dict_["token"])
        elif include_empty:
            instance.token = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ResourceaccesstunnelTunnelInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ResourceaccesstunnelTunnelInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ResourceaccesstunnelTunnelInfo,
        List[ResourceaccesstunnelTunnelInfo],
        Dict[Any, ResourceaccesstunnelTunnelInfo],
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
            "endpoint": "endpoint",
            "name": "name",
            "token": "token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "endpoint": True,
            "name": True,
            "token": True,
        }

    # endregion static methods
