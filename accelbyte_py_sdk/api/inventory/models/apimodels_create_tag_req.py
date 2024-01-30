# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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


class OwnerEnum(StrEnum):
    CLIENT = "CLIENT"
    SERVER = "SERVER"


class ApimodelsCreateTagReq(Model):
    """Apimodels create tag req (apimodels.CreateTagReq)

    Properties:
        name: (name) REQUIRED str

        owner: (owner) REQUIRED Union[str, OwnerEnum]
    """

    # region fields

    name: str  # REQUIRED
    owner: Union[str, OwnerEnum]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> ApimodelsCreateTagReq:
        self.name = value
        return self

    def with_owner(self, value: Union[str, OwnerEnum]) -> ApimodelsCreateTagReq:
        self.owner = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "owner"):
            result["owner"] = str(self.owner)
        elif include_empty:
            result["owner"] = Union[str, OwnerEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, name: str, owner: Union[str, OwnerEnum], **kwargs
    ) -> ApimodelsCreateTagReq:
        instance = cls()
        instance.name = name
        instance.owner = owner
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsCreateTagReq:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "owner" in dict_ and dict_["owner"] is not None:
            instance.owner = str(dict_["owner"])
        elif include_empty:
            instance.owner = Union[str, OwnerEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsCreateTagReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsCreateTagReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsCreateTagReq,
        List[ApimodelsCreateTagReq],
        Dict[Any, ApimodelsCreateTagReq],
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
            "name": "name",
            "owner": "owner",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "name": True,
            "owner": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "owner": ["CLIENT", "SERVER"],
        }

    # endregion static methods
