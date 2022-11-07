# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (3.10.1)

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


class ModelsRegisterLocalServerRequest(Model):
    """Models register local server request (models.RegisterLocalServerRequest)

    Properties:
        custom_attribute: (custom_attribute) REQUIRED str

        ip: (ip) REQUIRED str

        name: (name) REQUIRED str

        port: (port) REQUIRED int
    """

    # region fields

    custom_attribute: str  # REQUIRED
    ip: str  # REQUIRED
    name: str  # REQUIRED
    port: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_custom_attribute(self, value: str) -> ModelsRegisterLocalServerRequest:
        self.custom_attribute = value
        return self

    def with_ip(self, value: str) -> ModelsRegisterLocalServerRequest:
        self.ip = value
        return self

    def with_name(self, value: str) -> ModelsRegisterLocalServerRequest:
        self.name = value
        return self

    def with_port(self, value: int) -> ModelsRegisterLocalServerRequest:
        self.port = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_attribute"):
            result["custom_attribute"] = str(self.custom_attribute)
        elif include_empty:
            result["custom_attribute"] = ""
        if hasattr(self, "ip"):
            result["ip"] = str(self.ip)
        elif include_empty:
            result["ip"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "port"):
            result["port"] = int(self.port)
        elif include_empty:
            result["port"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_attribute: str,
        ip: str,
        name: str,
        port: int,
    ) -> ModelsRegisterLocalServerRequest:
        instance = cls()
        instance.custom_attribute = custom_attribute
        instance.ip = ip
        instance.name = name
        instance.port = port
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsRegisterLocalServerRequest:
        instance = cls()
        if not dict_:
            return instance
        if "custom_attribute" in dict_ and dict_["custom_attribute"] is not None:
            instance.custom_attribute = str(dict_["custom_attribute"])
        elif include_empty:
            instance.custom_attribute = ""
        if "ip" in dict_ and dict_["ip"] is not None:
            instance.ip = str(dict_["ip"])
        elif include_empty:
            instance.ip = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "port" in dict_ and dict_["port"] is not None:
            instance.port = int(dict_["port"])
        elif include_empty:
            instance.port = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsRegisterLocalServerRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsRegisterLocalServerRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsRegisterLocalServerRequest,
        List[ModelsRegisterLocalServerRequest],
        Dict[Any, ModelsRegisterLocalServerRequest],
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
            "custom_attribute": "custom_attribute",
            "ip": "ip",
            "name": "name",
            "port": "port",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "custom_attribute": True,
            "ip": True,
            "name": True,
            "port": True,
        }

    # endregion static methods
