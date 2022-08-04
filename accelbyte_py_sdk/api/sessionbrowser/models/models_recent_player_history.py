# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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


class ModelsRecentPlayerHistory(Model):
    """Models recent player history (models.RecentPlayerHistory)

    Properties:
        created_at: (created_at) REQUIRED str

        namespace: (namespace) REQUIRED str

        other_display_name: (other_display_name) REQUIRED str

        other_id: (other_id) REQUIRED str

        updated_at: (updated_at) REQUIRED str

        user_id: (user_id) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    namespace: str  # REQUIRED
    other_display_name: str  # REQUIRED
    other_id: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsRecentPlayerHistory:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> ModelsRecentPlayerHistory:
        self.namespace = value
        return self

    def with_other_display_name(self, value: str) -> ModelsRecentPlayerHistory:
        self.other_display_name = value
        return self

    def with_other_id(self, value: str) -> ModelsRecentPlayerHistory:
        self.other_id = value
        return self

    def with_updated_at(self, value: str) -> ModelsRecentPlayerHistory:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> ModelsRecentPlayerHistory:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "other_display_name"):
            result["other_display_name"] = str(self.other_display_name)
        elif include_empty:
            result["other_display_name"] = ""
        if hasattr(self, "other_id"):
            result["other_id"] = str(self.other_id)
        elif include_empty:
            result["other_id"] = ""
        if hasattr(self, "updated_at"):
            result["updated_at"] = str(self.updated_at)
        elif include_empty:
            result["updated_at"] = ""
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        namespace: str,
        other_display_name: str,
        other_id: str,
        updated_at: str,
        user_id: str,
    ) -> ModelsRecentPlayerHistory:
        instance = cls()
        instance.created_at = created_at
        instance.namespace = namespace
        instance.other_display_name = other_display_name
        instance.other_id = other_id
        instance.updated_at = updated_at
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsRecentPlayerHistory:
        instance = cls()
        if not dict_:
            return instance
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "other_display_name" in dict_ and dict_["other_display_name"] is not None:
            instance.other_display_name = str(dict_["other_display_name"])
        elif include_empty:
            instance.other_display_name = ""
        if "other_id" in dict_ and dict_["other_id"] is not None:
            instance.other_id = str(dict_["other_id"])
        elif include_empty:
            instance.other_id = ""
        if "updated_at" in dict_ and dict_["updated_at"] is not None:
            instance.updated_at = str(dict_["updated_at"])
        elif include_empty:
            instance.updated_at = ""
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsRecentPlayerHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsRecentPlayerHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsRecentPlayerHistory,
        List[ModelsRecentPlayerHistory],
        Dict[Any, ModelsRecentPlayerHistory],
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
            "created_at": "created_at",
            "namespace": "namespace",
            "other_display_name": "other_display_name",
            "other_id": "other_id",
            "updated_at": "updated_at",
            "user_id": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "created_at": True,
            "namespace": True,
            "other_display_name": True,
            "other_id": True,
            "updated_at": True,
            "user_id": True,
        }

    # endregion static methods
