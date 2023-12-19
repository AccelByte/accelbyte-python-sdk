# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service (3.12.8)

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

from ..models.models_binary_info_response import ModelsBinaryInfoResponse


class ModelsPlayerBinaryRecordResponse(Model):
    """Models player binary record response (models.PlayerBinaryRecordResponse)

    Properties:
        created_at: (created_at) REQUIRED str

        is_public: (is_public) REQUIRED bool

        key: (key) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updated_at) REQUIRED str

        user_id: (user_id) REQUIRED str

        binary_info: (binary_info) OPTIONAL ModelsBinaryInfoResponse

        set_by: (set_by) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    is_public: bool  # REQUIRED
    key: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    binary_info: ModelsBinaryInfoResponse  # OPTIONAL
    set_by: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsPlayerBinaryRecordResponse:
        self.created_at = value
        return self

    def with_is_public(self, value: bool) -> ModelsPlayerBinaryRecordResponse:
        self.is_public = value
        return self

    def with_key(self, value: str) -> ModelsPlayerBinaryRecordResponse:
        self.key = value
        return self

    def with_namespace(self, value: str) -> ModelsPlayerBinaryRecordResponse:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ModelsPlayerBinaryRecordResponse:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> ModelsPlayerBinaryRecordResponse:
        self.user_id = value
        return self

    def with_binary_info(
        self, value: ModelsBinaryInfoResponse
    ) -> ModelsPlayerBinaryRecordResponse:
        self.binary_info = value
        return self

    def with_set_by(self, value: str) -> ModelsPlayerBinaryRecordResponse:
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
        if hasattr(self, "binary_info"):
            result["binary_info"] = self.binary_info.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["binary_info"] = ModelsBinaryInfoResponse()
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
        binary_info: Optional[ModelsBinaryInfoResponse] = None,
        set_by: Optional[str] = None,
        **kwargs,
    ) -> ModelsPlayerBinaryRecordResponse:
        instance = cls()
        instance.created_at = created_at
        instance.is_public = is_public
        instance.key = key
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.user_id = user_id
        if binary_info is not None:
            instance.binary_info = binary_info
        if set_by is not None:
            instance.set_by = set_by
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayerBinaryRecordResponse:
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
        if "binary_info" in dict_ and dict_["binary_info"] is not None:
            instance.binary_info = ModelsBinaryInfoResponse.create_from_dict(
                dict_["binary_info"], include_empty=include_empty
            )
        elif include_empty:
            instance.binary_info = ModelsBinaryInfoResponse()
        if "set_by" in dict_ and dict_["set_by"] is not None:
            instance.set_by = str(dict_["set_by"])
        elif include_empty:
            instance.set_by = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayerBinaryRecordResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayerBinaryRecordResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayerBinaryRecordResponse,
        List[ModelsPlayerBinaryRecordResponse],
        Dict[Any, ModelsPlayerBinaryRecordResponse],
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
            "binary_info": "binary_info",
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
            "binary_info": False,
            "set_by": False,
        }

    # endregion static methods
