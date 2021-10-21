# justice-platform-service (3.34.0)

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


class StoreBackupInfo(Model):
    """Store backup info (StoreBackupInfo)

    Properties:
        id_: (id) REQUIRED str

        auto_backup: (autoBackup) REQUIRED bool

        name: (name) REQUIRED str

        store_id: (storeId) REQUIRED str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    auto_backup: bool                                                                              # REQUIRED
    name: str                                                                                      # REQUIRED
    store_id: str                                                                                  # REQUIRED
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> StoreBackupInfo:
        self.id_ = value
        return self

    def with_auto_backup(self, value: bool) -> StoreBackupInfo:
        self.auto_backup = value
        return self

    def with_name(self, value: str) -> StoreBackupInfo:
        self.name = value
        return self

    def with_store_id(self, value: str) -> StoreBackupInfo:
        self.store_id = value
        return self

    def with_created_at(self, value: str) -> StoreBackupInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> StoreBackupInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "auto_backup") and self.auto_backup:
            result["autoBackup"] = bool(self.auto_backup)
        elif include_empty:
            result["autoBackup"] = bool()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        auto_backup: bool,
        name: str,
        store_id: str,
        created_at: str,
        updated_at: str,
    ) -> StoreBackupInfo:
        instance = cls()
        instance.id_ = id_
        instance.auto_backup = auto_backup
        instance.name = name
        instance.store_id = store_id
        instance.created_at = created_at
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StoreBackupInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "autoBackup" in dict_ and dict_["autoBackup"] is not None:
            instance.auto_backup = bool(dict_["autoBackup"])
        elif include_empty:
            instance.auto_backup = bool()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "autoBackup": "auto_backup",
            "name": "name",
            "storeId": "store_id",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
