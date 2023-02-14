# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.9.0)

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


class ModelsCreateTypeResponse(Model):
    """Models create type response (models.CreateTypeResponse)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        parent_namespace: (parentNamespace) REQUIRED str

        subtype: (subtype) REQUIRED List[str]

        type_: (type) REQUIRED str
    """

    # region fields

    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    parent_namespace: str  # REQUIRED
    subtype: List[str]  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsCreateTypeResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelsCreateTypeResponse:
        self.namespace = value
        return self

    def with_parent_namespace(self, value: str) -> ModelsCreateTypeResponse:
        self.parent_namespace = value
        return self

    def with_subtype(self, value: List[str]) -> ModelsCreateTypeResponse:
        self.subtype = value
        return self

    def with_type(self, value: str) -> ModelsCreateTypeResponse:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "parent_namespace"):
            result["parentNamespace"] = str(self.parent_namespace)
        elif include_empty:
            result["parentNamespace"] = ""
        if hasattr(self, "subtype"):
            result["subtype"] = [str(i0) for i0 in self.subtype]
        elif include_empty:
            result["subtype"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        parent_namespace: str,
        subtype: List[str],
        type_: str,
    ) -> ModelsCreateTypeResponse:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.parent_namespace = parent_namespace
        instance.subtype = subtype
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateTypeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "parentNamespace" in dict_ and dict_["parentNamespace"] is not None:
            instance.parent_namespace = str(dict_["parentNamespace"])
        elif include_empty:
            instance.parent_namespace = ""
        if "subtype" in dict_ and dict_["subtype"] is not None:
            instance.subtype = [str(i0) for i0 in dict_["subtype"]]
        elif include_empty:
            instance.subtype = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateTypeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateTypeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateTypeResponse,
        List[ModelsCreateTypeResponse],
        Dict[Any, ModelsCreateTypeResponse],
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
            "id": "id_",
            "namespace": "namespace",
            "parentNamespace": "parent_namespace",
            "subtype": "subtype",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "namespace": True,
            "parentNamespace": True,
            "subtype": True,
            "type": True,
        }

    # endregion static methods
