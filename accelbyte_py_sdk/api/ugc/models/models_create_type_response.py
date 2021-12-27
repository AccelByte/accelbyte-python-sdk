# justice-ugc-service (1.10.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class ModelsCreateTypeResponse(Model):
    """Models create type response (models.CreateTypeResponse)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        subtype: (subtype) REQUIRED List[str]

        type_: (type) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    subtype: List[str]                                                                             # REQUIRED
    type_: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsCreateTypeResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelsCreateTypeResponse:
        self.namespace = value
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
            result["id"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "subtype"):
            result["subtype"] = [str(i0) for i0 in self.subtype]
        elif include_empty:
            result["subtype"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        subtype: List[str],
        type_: str,
    ) -> ModelsCreateTypeResponse:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.subtype = subtype
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateTypeResponse:
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
        if "subtype" in dict_ and dict_["subtype"] is not None:
            instance.subtype = [str(i0) for i0 in dict_["subtype"]]
        elif include_empty:
            instance.subtype = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "subtype": "subtype",
            "type": "type_",
        }

    # endregion static methods
