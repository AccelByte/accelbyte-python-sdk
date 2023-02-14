# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Basic Service (2.5.0)

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


class NamespacePublisherInfo(Model):
    """Namespace publisher info (NamespacePublisherInfo)

    Properties:
        publisher: (publisher) OPTIONAL bool

        publisher_namespace: (publisherNamespace) OPTIONAL str
    """

    # region fields

    publisher: bool  # OPTIONAL
    publisher_namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_publisher(self, value: bool) -> NamespacePublisherInfo:
        self.publisher = value
        return self

    def with_publisher_namespace(self, value: str) -> NamespacePublisherInfo:
        self.publisher_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "publisher"):
            result["publisher"] = bool(self.publisher)
        elif include_empty:
            result["publisher"] = False
        if hasattr(self, "publisher_namespace"):
            result["publisherNamespace"] = str(self.publisher_namespace)
        elif include_empty:
            result["publisherNamespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        publisher: Optional[bool] = None,
        publisher_namespace: Optional[str] = None,
    ) -> NamespacePublisherInfo:
        instance = cls()
        if publisher is not None:
            instance.publisher = publisher
        if publisher_namespace is not None:
            instance.publisher_namespace = publisher_namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> NamespacePublisherInfo:
        instance = cls()
        if not dict_:
            return instance
        if "publisher" in dict_ and dict_["publisher"] is not None:
            instance.publisher = bool(dict_["publisher"])
        elif include_empty:
            instance.publisher = False
        if "publisherNamespace" in dict_ and dict_["publisherNamespace"] is not None:
            instance.publisher_namespace = str(dict_["publisherNamespace"])
        elif include_empty:
            instance.publisher_namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, NamespacePublisherInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[NamespacePublisherInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        NamespacePublisherInfo,
        List[NamespacePublisherInfo],
        Dict[Any, NamespacePublisherInfo],
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
            "publisher": "publisher",
            "publisherNamespace": "publisher_namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "publisher": False,
            "publisherNamespace": False,
        }

    # endregion static methods
