# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Cloudsave Service (3.6.1)

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


class ModelsPlayerRecordResponse(Model):
    """Models player record response (models.PlayerRecordResponse)

    Properties:
        created_at: (created_at) REQUIRED str

        is_public: (is_public) REQUIRED bool

        key: (key) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updated_at) REQUIRED str

        user_id: (user_id) REQUIRED str

        value: (value) REQUIRED Dict[str, Any]

        set_by: (set_by) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    is_public: bool  # REQUIRED
    key: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    value: Dict[str, Any]  # REQUIRED
    set_by: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsPlayerRecordResponse:
        self.created_at = value
        return self

    def with_is_public(self, value: bool) -> ModelsPlayerRecordResponse:
        self.is_public = value
        return self

    def with_key(self, value: str) -> ModelsPlayerRecordResponse:
        self.key = value
        return self

    def with_namespace(self, value: str) -> ModelsPlayerRecordResponse:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ModelsPlayerRecordResponse:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> ModelsPlayerRecordResponse:
        self.user_id = value
        return self

    def with_value(self, value: Dict[str, Any]) -> ModelsPlayerRecordResponse:
        self.value = value
        return self

    def with_set_by(self, value: str) -> ModelsPlayerRecordResponse:
        self.set_by = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "is_public"):
            result["is_public"] = bool(self.is_public)
        elif include_empty:
            result["is_public"] = False
        if hasattr(self, "key"):
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updated_at"] = str(self.updated_at)
        elif include_empty:
            result["updated_at"] = ""
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        if hasattr(self, "value"):
            result["value"] = {str(k0): v0 for k0, v0 in self.value.items()}
        elif include_empty:
            result["value"] = {}
        if hasattr(self, "set_by"):
            result["set_by"] = str(self.set_by)
        elif include_empty:
            result["set_by"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        is_public: bool,
        key: str,
        namespace: str,
        updated_at: str,
        user_id: str,
        value: Dict[str, Any],
        set_by: Optional[str] = None,
    ) -> ModelsPlayerRecordResponse:
        instance = cls()
        instance.created_at = created_at
        instance.is_public = is_public
        instance.key = key
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.user_id = user_id
        instance.value = value
        if set_by is not None:
            instance.set_by = set_by
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayerRecordResponse:
        instance = cls()
        if not dict_:
            return instance
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "is_public" in dict_ and dict_["is_public"] is not None:
            instance.is_public = bool(dict_["is_public"])
        elif include_empty:
            instance.is_public = False
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updated_at" in dict_ and dict_["updated_at"] is not None:
            instance.updated_at = str(dict_["updated_at"])
        elif include_empty:
            instance.updated_at = ""
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = {str(k0): v0 for k0, v0 in dict_["value"].items()}
        elif include_empty:
            instance.value = {}
        if "set_by" in dict_ and dict_["set_by"] is not None:
            instance.set_by = str(dict_["set_by"])
        elif include_empty:
            instance.set_by = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayerRecordResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayerRecordResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayerRecordResponse,
        List[ModelsPlayerRecordResponse],
        Dict[Any, ModelsPlayerRecordResponse],
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
            "is_public": "is_public",
            "key": "key",
            "namespace": "namespace",
            "updated_at": "updated_at",
            "user_id": "user_id",
            "value": "value",
            "set_by": "set_by",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "created_at": True,
            "is_public": True,
            "key": True,
            "namespace": True,
            "updated_at": True,
            "user_id": True,
            "value": True,
            "set_by": False,
        }

    # endregion static methods
