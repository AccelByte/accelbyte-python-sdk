# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Dsm Controller Service

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


class ModelsWorkerConfig(Model):
    """Models worker config (models.WorkerConfig)

    Properties:
        auto_deletion: (AutoDeletion) REQUIRED bool

        created_at: (CreatedAt) REQUIRED str

        created_by: (CreatedBy) REQUIRED str

        ghost_worker: (GhostWorker) REQUIRED bool

        manual_buffer_override: (ManualBufferOverride) REQUIRED bool

        modified_by: (ModifiedBy) REQUIRED str

        namespace: (Namespace) REQUIRED str

        updated_at: (UpdatedAt) REQUIRED str

        zombie_worker: (ZombieWorker) REQUIRED bool
    """

    # region fields

    auto_deletion: bool  # REQUIRED
    created_at: str  # REQUIRED
    created_by: str  # REQUIRED
    ghost_worker: bool  # REQUIRED
    manual_buffer_override: bool  # REQUIRED
    modified_by: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    zombie_worker: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_auto_deletion(self, value: bool) -> ModelsWorkerConfig:
        self.auto_deletion = value
        return self

    def with_created_at(self, value: str) -> ModelsWorkerConfig:
        self.created_at = value
        return self

    def with_created_by(self, value: str) -> ModelsWorkerConfig:
        self.created_by = value
        return self

    def with_ghost_worker(self, value: bool) -> ModelsWorkerConfig:
        self.ghost_worker = value
        return self

    def with_manual_buffer_override(self, value: bool) -> ModelsWorkerConfig:
        self.manual_buffer_override = value
        return self

    def with_modified_by(self, value: str) -> ModelsWorkerConfig:
        self.modified_by = value
        return self

    def with_namespace(self, value: str) -> ModelsWorkerConfig:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ModelsWorkerConfig:
        self.updated_at = value
        return self

    def with_zombie_worker(self, value: bool) -> ModelsWorkerConfig:
        self.zombie_worker = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_deletion"):
            result["AutoDeletion"] = bool(self.auto_deletion)
        elif include_empty:
            result["AutoDeletion"] = False
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "created_by"):
            result["CreatedBy"] = str(self.created_by)
        elif include_empty:
            result["CreatedBy"] = ""
        if hasattr(self, "ghost_worker"):
            result["GhostWorker"] = bool(self.ghost_worker)
        elif include_empty:
            result["GhostWorker"] = False
        if hasattr(self, "manual_buffer_override"):
            result["ManualBufferOverride"] = bool(self.manual_buffer_override)
        elif include_empty:
            result["ManualBufferOverride"] = False
        if hasattr(self, "modified_by"):
            result["ModifiedBy"] = str(self.modified_by)
        elif include_empty:
            result["ModifiedBy"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "updated_at"):
            result["UpdatedAt"] = str(self.updated_at)
        elif include_empty:
            result["UpdatedAt"] = ""
        if hasattr(self, "zombie_worker"):
            result["ZombieWorker"] = bool(self.zombie_worker)
        elif include_empty:
            result["ZombieWorker"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_deletion: bool,
        created_at: str,
        created_by: str,
        ghost_worker: bool,
        manual_buffer_override: bool,
        modified_by: str,
        namespace: str,
        updated_at: str,
        zombie_worker: bool,
        **kwargs,
    ) -> ModelsWorkerConfig:
        instance = cls()
        instance.auto_deletion = auto_deletion
        instance.created_at = created_at
        instance.created_by = created_by
        instance.ghost_worker = ghost_worker
        instance.manual_buffer_override = manual_buffer_override
        instance.modified_by = modified_by
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.zombie_worker = zombie_worker
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsWorkerConfig:
        instance = cls()
        if not dict_:
            return instance
        if "AutoDeletion" in dict_ and dict_["AutoDeletion"] is not None:
            instance.auto_deletion = bool(dict_["AutoDeletion"])
        elif include_empty:
            instance.auto_deletion = False
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "CreatedBy" in dict_ and dict_["CreatedBy"] is not None:
            instance.created_by = str(dict_["CreatedBy"])
        elif include_empty:
            instance.created_by = ""
        if "GhostWorker" in dict_ and dict_["GhostWorker"] is not None:
            instance.ghost_worker = bool(dict_["GhostWorker"])
        elif include_empty:
            instance.ghost_worker = False
        if (
            "ManualBufferOverride" in dict_
            and dict_["ManualBufferOverride"] is not None
        ):
            instance.manual_buffer_override = bool(dict_["ManualBufferOverride"])
        elif include_empty:
            instance.manual_buffer_override = False
        if "ModifiedBy" in dict_ and dict_["ModifiedBy"] is not None:
            instance.modified_by = str(dict_["ModifiedBy"])
        elif include_empty:
            instance.modified_by = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "UpdatedAt" in dict_ and dict_["UpdatedAt"] is not None:
            instance.updated_at = str(dict_["UpdatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "ZombieWorker" in dict_ and dict_["ZombieWorker"] is not None:
            instance.zombie_worker = bool(dict_["ZombieWorker"])
        elif include_empty:
            instance.zombie_worker = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsWorkerConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsWorkerConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsWorkerConfig, List[ModelsWorkerConfig], Dict[Any, ModelsWorkerConfig]
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
            "AutoDeletion": "auto_deletion",
            "CreatedAt": "created_at",
            "CreatedBy": "created_by",
            "GhostWorker": "ghost_worker",
            "ManualBufferOverride": "manual_buffer_override",
            "ModifiedBy": "modified_by",
            "Namespace": "namespace",
            "UpdatedAt": "updated_at",
            "ZombieWorker": "zombie_worker",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AutoDeletion": True,
            "CreatedAt": True,
            "CreatedBy": True,
            "GhostWorker": True,
            "ManualBufferOverride": True,
            "ModifiedBy": True,
            "Namespace": True,
            "UpdatedAt": True,
            "ZombieWorker": True,
        }

    # endregion static methods
