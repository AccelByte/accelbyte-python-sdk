# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service

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

from ..models.models_ttl_config_dto import ModelsTTLConfigDTO


class SetByEnum(StrEnum):
    CLIENT = "CLIENT"
    SERVER = "SERVER"


class ModelsAdminConcurrentRecordRequest(Model):
    """Models admin concurrent record request (models.AdminConcurrentRecordRequest)

    Properties:
        set_by: (set_by) REQUIRED Union[str, SetByEnum]

        updated_at: (updatedAt) REQUIRED str

        value: (value) REQUIRED Dict[str, Any]

        tags: (tags) OPTIONAL List[str]

        ttl_config: (ttl_config) OPTIONAL ModelsTTLConfigDTO
    """

    # region fields

    set_by: Union[str, SetByEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    value: Dict[str, Any]  # REQUIRED
    tags: List[str]  # OPTIONAL
    ttl_config: ModelsTTLConfigDTO  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_set_by(
        self, value: Union[str, SetByEnum]
    ) -> ModelsAdminConcurrentRecordRequest:
        self.set_by = value
        return self

    def with_updated_at(self, value: str) -> ModelsAdminConcurrentRecordRequest:
        self.updated_at = value
        return self

    def with_value(self, value: Dict[str, Any]) -> ModelsAdminConcurrentRecordRequest:
        self.value = value
        return self

    def with_tags(self, value: List[str]) -> ModelsAdminConcurrentRecordRequest:
        self.tags = value
        return self

    def with_ttl_config(
        self, value: ModelsTTLConfigDTO
    ) -> ModelsAdminConcurrentRecordRequest:
        self.ttl_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "set_by"):
            result["set_by"] = str(self.set_by)
        elif include_empty:
            result["set_by"] = Union[str, SetByEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "value"):
            result["value"] = {str(k0): v0 for k0, v0 in self.value.items()}
        elif include_empty:
            result["value"] = {}
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "ttl_config"):
            result["ttl_config"] = self.ttl_config.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ttl_config"] = ModelsTTLConfigDTO()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        set_by: Union[str, SetByEnum],
        updated_at: str,
        value: Dict[str, Any],
        tags: Optional[List[str]] = None,
        ttl_config: Optional[ModelsTTLConfigDTO] = None,
        **kwargs,
    ) -> ModelsAdminConcurrentRecordRequest:
        instance = cls()
        instance.set_by = set_by
        instance.updated_at = updated_at
        instance.value = value
        if tags is not None:
            instance.tags = tags
        if ttl_config is not None:
            instance.ttl_config = ttl_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAdminConcurrentRecordRequest:
        instance = cls()
        if not dict_:
            return instance
        if "set_by" in dict_ and dict_["set_by"] is not None:
            instance.set_by = str(dict_["set_by"])
        elif include_empty:
            instance.set_by = Union[str, SetByEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = {str(k0): v0 for k0, v0 in dict_["value"].items()}
        elif include_empty:
            instance.value = {}
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "ttl_config" in dict_ and dict_["ttl_config"] is not None:
            instance.ttl_config = ModelsTTLConfigDTO.create_from_dict(
                dict_["ttl_config"], include_empty=include_empty
            )
        elif include_empty:
            instance.ttl_config = ModelsTTLConfigDTO()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAdminConcurrentRecordRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAdminConcurrentRecordRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAdminConcurrentRecordRequest,
        List[ModelsAdminConcurrentRecordRequest],
        Dict[Any, ModelsAdminConcurrentRecordRequest],
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
            "set_by": "set_by",
            "updatedAt": "updated_at",
            "value": "value",
            "tags": "tags",
            "ttl_config": "ttl_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "set_by": True,
            "updatedAt": True,
            "value": True,
            "tags": False,
            "ttl_config": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "set_by": ["CLIENT", "SERVER"],
        }

    # endregion static methods
