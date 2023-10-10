# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Gdpr Service (2.3.0)

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


class ProtocolEnum(StrEnum):
    GRPC = "GRPC"


class DtoServiceConfigDTO(Model):
    """Dto service config DTO (dto.ServiceConfigDTO)

    Properties:
        protocol: (protocol) REQUIRED Union[str, ProtocolEnum]

        url: (url) REQUIRED str
    """

    # region fields

    protocol: Union[str, ProtocolEnum]  # REQUIRED
    url: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_protocol(self, value: Union[str, ProtocolEnum]) -> DtoServiceConfigDTO:
        self.protocol = value
        return self

    def with_url(self, value: str) -> DtoServiceConfigDTO:
        self.url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "protocol"):
            result["protocol"] = str(self.protocol)
        elif include_empty:
            result["protocol"] = Union[str, ProtocolEnum]()
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, protocol: Union[str, ProtocolEnum], url: str, **kwargs
    ) -> DtoServiceConfigDTO:
        instance = cls()
        instance.protocol = protocol
        instance.url = url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoServiceConfigDTO:
        instance = cls()
        if not dict_:
            return instance
        if "protocol" in dict_ and dict_["protocol"] is not None:
            instance.protocol = str(dict_["protocol"])
        elif include_empty:
            instance.protocol = Union[str, ProtocolEnum]()
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoServiceConfigDTO]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoServiceConfigDTO]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoServiceConfigDTO, List[DtoServiceConfigDTO], Dict[Any, DtoServiceConfigDTO]
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
            "protocol": "protocol",
            "url": "url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "protocol": True,
            "url": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "protocol": ["GRPC"],
        }

    # endregion static methods
