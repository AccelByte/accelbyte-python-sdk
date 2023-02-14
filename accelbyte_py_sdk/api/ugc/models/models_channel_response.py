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


class ModelsChannelResponse(Model):
    """Models channel response (models.ChannelResponse)

    Properties:
        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        parent_namespace: (parentNamespace) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    parent_namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsChannelResponse:
        self.id_ = value
        return self

    def with_name(self, value: str) -> ModelsChannelResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsChannelResponse:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ModelsChannelResponse:
        self.user_id = value
        return self

    def with_parent_namespace(self, value: str) -> ModelsChannelResponse:
        self.parent_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "parent_namespace"):
            result["parentNamespace"] = str(self.parent_namespace)
        elif include_empty:
            result["parentNamespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        name: str,
        namespace: str,
        user_id: str,
        parent_namespace: Optional[str] = None,
    ) -> ModelsChannelResponse:
        instance = cls()
        instance.id_ = id_
        instance.name = name
        instance.namespace = namespace
        instance.user_id = user_id
        if parent_namespace is not None:
            instance.parent_namespace = parent_namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChannelResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "parentNamespace" in dict_ and dict_["parentNamespace"] is not None:
            instance.parent_namespace = str(dict_["parentNamespace"])
        elif include_empty:
            instance.parent_namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChannelResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChannelResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsChannelResponse,
        List[ModelsChannelResponse],
        Dict[Any, ModelsChannelResponse],
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
            "name": "name",
            "namespace": "namespace",
            "userId": "user_id",
            "parentNamespace": "parent_namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "name": True,
            "namespace": True,
            "userId": True,
            "parentNamespace": False,
        }

    # endregion static methods
