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


class ModelsPlayerRecordSizeResponse(Model):
    """Models player record size response (models.PlayerRecordSizeResponse)

    Properties:
        current_size: (current_size) REQUIRED int

        key: (key) REQUIRED str

        namespace: (namespace) REQUIRED str

        remaining_size: (remaining_size) REQUIRED int

        user_id: (user_id) REQUIRED str
    """

    # region fields

    current_size: int  # REQUIRED
    key: str  # REQUIRED
    namespace: str  # REQUIRED
    remaining_size: int  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_current_size(self, value: int) -> ModelsPlayerRecordSizeResponse:
        self.current_size = value
        return self

    def with_key(self, value: str) -> ModelsPlayerRecordSizeResponse:
        self.key = value
        return self

    def with_namespace(self, value: str) -> ModelsPlayerRecordSizeResponse:
        self.namespace = value
        return self

    def with_remaining_size(self, value: int) -> ModelsPlayerRecordSizeResponse:
        self.remaining_size = value
        return self

    def with_user_id(self, value: str) -> ModelsPlayerRecordSizeResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_size"):
            result["current_size"] = int(self.current_size)
        elif include_empty:
            result["current_size"] = 0
        if hasattr(self, "key"):
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "remaining_size"):
            result["remaining_size"] = int(self.remaining_size)
        elif include_empty:
            result["remaining_size"] = 0
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
        current_size: int,
        key: str,
        namespace: str,
        remaining_size: int,
        user_id: str,
    ) -> ModelsPlayerRecordSizeResponse:
        instance = cls()
        instance.current_size = current_size
        instance.key = key
        instance.namespace = namespace
        instance.remaining_size = remaining_size
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayerRecordSizeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "current_size" in dict_ and dict_["current_size"] is not None:
            instance.current_size = int(dict_["current_size"])
        elif include_empty:
            instance.current_size = 0
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "remaining_size" in dict_ and dict_["remaining_size"] is not None:
            instance.remaining_size = int(dict_["remaining_size"])
        elif include_empty:
            instance.remaining_size = 0
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayerRecordSizeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayerRecordSizeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayerRecordSizeResponse,
        List[ModelsPlayerRecordSizeResponse],
        Dict[Any, ModelsPlayerRecordSizeResponse],
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
            "current_size": "current_size",
            "key": "key",
            "namespace": "namespace",
            "remaining_size": "remaining_size",
            "user_id": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "current_size": True,
            "key": True,
            "namespace": True,
            "remaining_size": True,
            "user_id": True,
        }

    # endregion static methods
