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


class ModelsWorkerConfigRequest(Model):
    """Models worker config request (models.WorkerConfigRequest)

    Properties:
        auto_deletion: (auto_deletion) REQUIRED bool

        ghost_worker: (ghost_worker) REQUIRED bool

        manual_buffer_override: (manual_buffer_override) REQUIRED bool

        zombie_worker: (zombie_worker) REQUIRED bool
    """

    # region fields

    auto_deletion: bool  # REQUIRED
    ghost_worker: bool  # REQUIRED
    manual_buffer_override: bool  # REQUIRED
    zombie_worker: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_auto_deletion(self, value: bool) -> ModelsWorkerConfigRequest:
        self.auto_deletion = value
        return self

    def with_ghost_worker(self, value: bool) -> ModelsWorkerConfigRequest:
        self.ghost_worker = value
        return self

    def with_manual_buffer_override(self, value: bool) -> ModelsWorkerConfigRequest:
        self.manual_buffer_override = value
        return self

    def with_zombie_worker(self, value: bool) -> ModelsWorkerConfigRequest:
        self.zombie_worker = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_deletion"):
            result["auto_deletion"] = bool(self.auto_deletion)
        elif include_empty:
            result["auto_deletion"] = False
        if hasattr(self, "ghost_worker"):
            result["ghost_worker"] = bool(self.ghost_worker)
        elif include_empty:
            result["ghost_worker"] = False
        if hasattr(self, "manual_buffer_override"):
            result["manual_buffer_override"] = bool(self.manual_buffer_override)
        elif include_empty:
            result["manual_buffer_override"] = False
        if hasattr(self, "zombie_worker"):
            result["zombie_worker"] = bool(self.zombie_worker)
        elif include_empty:
            result["zombie_worker"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_deletion: bool,
        ghost_worker: bool,
        manual_buffer_override: bool,
        zombie_worker: bool,
        **kwargs,
    ) -> ModelsWorkerConfigRequest:
        instance = cls()
        instance.auto_deletion = auto_deletion
        instance.ghost_worker = ghost_worker
        instance.manual_buffer_override = manual_buffer_override
        instance.zombie_worker = zombie_worker
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsWorkerConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "auto_deletion" in dict_ and dict_["auto_deletion"] is not None:
            instance.auto_deletion = bool(dict_["auto_deletion"])
        elif include_empty:
            instance.auto_deletion = False
        if "ghost_worker" in dict_ and dict_["ghost_worker"] is not None:
            instance.ghost_worker = bool(dict_["ghost_worker"])
        elif include_empty:
            instance.ghost_worker = False
        if (
            "manual_buffer_override" in dict_
            and dict_["manual_buffer_override"] is not None
        ):
            instance.manual_buffer_override = bool(dict_["manual_buffer_override"])
        elif include_empty:
            instance.manual_buffer_override = False
        if "zombie_worker" in dict_ and dict_["zombie_worker"] is not None:
            instance.zombie_worker = bool(dict_["zombie_worker"])
        elif include_empty:
            instance.zombie_worker = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsWorkerConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsWorkerConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsWorkerConfigRequest,
        List[ModelsWorkerConfigRequest],
        Dict[Any, ModelsWorkerConfigRequest],
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
            "auto_deletion": "auto_deletion",
            "ghost_worker": "ghost_worker",
            "manual_buffer_override": "manual_buffer_override",
            "zombie_worker": "zombie_worker",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "auto_deletion": True,
            "ghost_worker": True,
            "manual_buffer_override": True,
            "zombie_worker": True,
        }

    # endregion static methods
