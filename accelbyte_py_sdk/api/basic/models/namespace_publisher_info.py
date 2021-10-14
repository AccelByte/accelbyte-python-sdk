# Auto-generated at 2021-10-14T22:17:19.354424+08:00
# from: Justice Basic Service (1.17.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

    publisher: bool                                                                                # OPTIONAL
    publisher_namespace: str                                                                       # OPTIONAL

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
        if hasattr(self, "publisher") and self.publisher:
            result["publisher"] = bool(self.publisher)
        elif include_empty:
            result["publisher"] = bool()
        if hasattr(self, "publisher_namespace") and self.publisher_namespace:
            result["publisherNamespace"] = str(self.publisher_namespace)
        elif include_empty:
            result["publisherNamespace"] = str()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> NamespacePublisherInfo:
        instance = cls()
        if not dict_:
            return instance
        if "publisher" in dict_ and dict_["publisher"] is not None:
            instance.publisher = bool(dict_["publisher"])
        elif include_empty:
            instance.publisher = bool()
        if "publisherNamespace" in dict_ and dict_["publisherNamespace"] is not None:
            instance.publisher_namespace = str(dict_["publisherNamespace"])
        elif include_empty:
            instance.publisher_namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "publisher": "publisher",
            "publisherNamespace": "publisher_namespace",
        }

    # endregion static methods
