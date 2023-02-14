# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class StoreBackupInfo(Model):
    """Store backup info (StoreBackupInfo)

    Properties:
        auto_backup: (autoBackup) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        store_id: (storeId) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    auto_backup: bool  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    name: str  # REQUIRED
    store_id: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_auto_backup(self, value: bool) -> StoreBackupInfo:
        self.auto_backup = value
        return self

    def with_created_at(self, value: str) -> StoreBackupInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> StoreBackupInfo:
        self.id_ = value
        return self

    def with_name(self, value: str) -> StoreBackupInfo:
        self.name = value
        return self

    def with_store_id(self, value: str) -> StoreBackupInfo:
        self.store_id = value
        return self

    def with_updated_at(self, value: str) -> StoreBackupInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_backup"):
            result["autoBackup"] = bool(self.auto_backup)
        elif include_empty:
            result["autoBackup"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_backup: bool,
        created_at: str,
        id_: str,
        name: str,
        store_id: str,
        updated_at: str,
    ) -> StoreBackupInfo:
        instance = cls()
        instance.auto_backup = auto_backup
        instance.created_at = created_at
        instance.id_ = id_
        instance.name = name
        instance.store_id = store_id
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> StoreBackupInfo:
        instance = cls()
        if not dict_:
            return instance
        if "autoBackup" in dict_ and dict_["autoBackup"] is not None:
            instance.auto_backup = bool(dict_["autoBackup"])
        elif include_empty:
            instance.auto_backup = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StoreBackupInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StoreBackupInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StoreBackupInfo, List[StoreBackupInfo], Dict[Any, StoreBackupInfo]]:
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
            "autoBackup": "auto_backup",
            "createdAt": "created_at",
            "id": "id_",
            "name": "name",
            "storeId": "store_id",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "autoBackup": True,
            "createdAt": True,
            "id": True,
            "name": True,
            "storeId": True,
            "updatedAt": True,
        }

    # endregion static methods
