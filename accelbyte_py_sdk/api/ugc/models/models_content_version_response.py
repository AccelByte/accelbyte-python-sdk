# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ugc Service

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

from ..models.models_content_snapshot import ModelsContentSnapshot


class ModelsContentVersionResponse(Model):
    """Models content version response (models.ContentVersionResponse)

    Properties:
        content: (content) REQUIRED ModelsContentSnapshot

        id_: (id) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        version: (version) REQUIRED str
    """

    # region fields

    content: ModelsContentSnapshot  # REQUIRED
    id_: str  # REQUIRED
    updated_at: str  # REQUIRED
    version: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content(
        self, value: ModelsContentSnapshot
    ) -> ModelsContentVersionResponse:
        self.content = value
        return self

    def with_id(self, value: str) -> ModelsContentVersionResponse:
        self.id_ = value
        return self

    def with_updated_at(self, value: str) -> ModelsContentVersionResponse:
        self.updated_at = value
        return self

    def with_version(self, value: str) -> ModelsContentVersionResponse:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content"):
            result["content"] = self.content.to_dict(include_empty=include_empty)
        elif include_empty:
            result["content"] = ModelsContentSnapshot()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "version"):
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content: ModelsContentSnapshot,
        id_: str,
        updated_at: str,
        version: str,
        **kwargs,
    ) -> ModelsContentVersionResponse:
        instance = cls()
        instance.content = content
        instance.id_ = id_
        instance.updated_at = updated_at
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsContentVersionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "content" in dict_ and dict_["content"] is not None:
            instance.content = ModelsContentSnapshot.create_from_dict(
                dict_["content"], include_empty=include_empty
            )
        elif include_empty:
            instance.content = ModelsContentSnapshot()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsContentVersionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsContentVersionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsContentVersionResponse,
        List[ModelsContentVersionResponse],
        Dict[Any, ModelsContentVersionResponse],
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
            "content": "content",
            "id": "id_",
            "updatedAt": "updated_at",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "content": True,
            "id": True,
            "updatedAt": True,
            "version": True,
        }

    # endregion static methods
