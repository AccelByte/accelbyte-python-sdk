# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service (0.1.0)

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


class ApimodelsCreateTagResp(Model):
    """Apimodels create tag resp (apimodels.CreateTagResp)

    Properties:
        created_at: (createdAt) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        owner: (owner) REQUIRED Union[str, OwnerEnum]
    """

    # region fields

    created_at: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    owner: Union[str, OwnerEnum]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsCreateTagResp:
        self.created_at = value
        return self

    def with_name(self, value: str) -> ApimodelsCreateTagResp:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ApimodelsCreateTagResp:
        self.namespace = value
        return self

    def with_owner(self, value: Union[str, OwnerEnum]) -> ApimodelsCreateTagResp:
        self.owner = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "owner"):
            result["owner"] = str(self.owner)
        elif include_empty:
            result["owner"] = Union[str, OwnerEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        name: str,
        namespace: str,
        owner: Union[str, OwnerEnum],
        **kwargs,
    ) -> ApimodelsCreateTagResp:
        instance = cls()
        instance.created_at = created_at
        instance.name = name
        instance.namespace = namespace
        instance.owner = owner
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsCreateTagResp:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "owner" in dict_ and dict_["owner"] is not None:
            instance.owner = str(dict_["owner"])
        elif include_empty:
            instance.owner = Union[str, OwnerEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsCreateTagResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsCreateTagResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsCreateTagResp,
        List[ApimodelsCreateTagResp],
        Dict[Any, ApimodelsCreateTagResp],
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
            "createdAt": "created_at",
            "name": "name",
            "namespace": "namespace",
            "owner": "owner",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "name": True,
            "namespace": True,
            "owner": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "owner": ["CLIENT", "SERVER"],
        }

    # endregion static methods
