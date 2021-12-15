# justice-ugc-service (1.10.0)

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


class ModelsCreateTagResponse(Model):
    """Models create tag response (models.CreateTagResponse)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        tag: (tag) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    tag: str                                                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsCreateTagResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelsCreateTagResponse:
        self.namespace = value
        return self

    def with_tag(self, value: str) -> ModelsCreateTagResponse:
        self.tag = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "tag"):
            result["tag"] = str(self.tag)
        elif include_empty:
            result["tag"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        tag: str,
    ) -> ModelsCreateTagResponse:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.tag = tag
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateTagResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "tag" in dict_ and dict_["tag"] is not None:
            instance.tag = str(dict_["tag"])
        elif include_empty:
            instance.tag = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "tag": "tag",
        }

    # endregion static methods
