# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Basic Service

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


class TypeEnum(StrEnum):
    GAME = "Game"
    PUBLISHER = "Publisher"
    STUDIO = "Studio"


class NamespaceContext(Model):
    """This model is used to indicate the context of a namespace (NamespaceContext)

    Properties:
        namespace: (namespace) OPTIONAL str

        publisher_namespace: (publisherNamespace) OPTIONAL str

        studio_namespace: (studioNamespace) OPTIONAL str

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    namespace: str  # OPTIONAL
    publisher_namespace: str  # OPTIONAL
    studio_namespace: str  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> NamespaceContext:
        self.namespace = value
        return self

    def with_publisher_namespace(self, value: str) -> NamespaceContext:
        self.publisher_namespace = value
        return self

    def with_studio_namespace(self, value: str) -> NamespaceContext:
        self.studio_namespace = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> NamespaceContext:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "publisher_namespace"):
            result["publisherNamespace"] = str(self.publisher_namespace)
        elif include_empty:
            result["publisherNamespace"] = ""
        if hasattr(self, "studio_namespace"):
            result["studioNamespace"] = str(self.studio_namespace)
        elif include_empty:
            result["studioNamespace"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: Optional[str] = None,
        publisher_namespace: Optional[str] = None,
        studio_namespace: Optional[str] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        **kwargs,
    ) -> NamespaceContext:
        instance = cls()
        if namespace is not None:
            instance.namespace = namespace
        if publisher_namespace is not None:
            instance.publisher_namespace = publisher_namespace
        if studio_namespace is not None:
            instance.studio_namespace = studio_namespace
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> NamespaceContext:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "publisherNamespace" in dict_ and dict_["publisherNamespace"] is not None:
            instance.publisher_namespace = str(dict_["publisherNamespace"])
        elif include_empty:
            instance.publisher_namespace = ""
        if "studioNamespace" in dict_ and dict_["studioNamespace"] is not None:
            instance.studio_namespace = str(dict_["studioNamespace"])
        elif include_empty:
            instance.studio_namespace = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, NamespaceContext]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[NamespaceContext]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[NamespaceContext, List[NamespaceContext], Dict[Any, NamespaceContext]]:
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
            "namespace": "namespace",
            "publisherNamespace": "publisher_namespace",
            "studioNamespace": "studio_namespace",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": False,
            "publisherNamespace": False,
            "studioNamespace": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["Game", "Publisher", "Studio"],
        }

    # endregion static methods
