# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ds Artifact Manager

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


class ModelsQueueResult(Model):
    """Models queue result (models.QueueResult)

    Properties:
        allocation_id: (allocation_id) REQUIRED str

        created_at: (created_at) REQUIRED str

        pod_name: (pod_name) REQUIRED str
    """

    # region fields

    allocation_id: str  # REQUIRED
    created_at: str  # REQUIRED
    pod_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allocation_id(self, value: str) -> ModelsQueueResult:
        self.allocation_id = value
        return self

    def with_created_at(self, value: str) -> ModelsQueueResult:
        self.created_at = value
        return self

    def with_pod_name(self, value: str) -> ModelsQueueResult:
        self.pod_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allocation_id"):
            result["allocation_id"] = str(self.allocation_id)
        elif include_empty:
            result["allocation_id"] = ""
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "pod_name"):
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, allocation_id: str, created_at: str, pod_name: str, **kwargs
    ) -> ModelsQueueResult:
        instance = cls()
        instance.allocation_id = allocation_id
        instance.created_at = created_at
        instance.pod_name = pod_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsQueueResult:
        instance = cls()
        if not dict_:
            return instance
        if "allocation_id" in dict_ and dict_["allocation_id"] is not None:
            instance.allocation_id = str(dict_["allocation_id"])
        elif include_empty:
            instance.allocation_id = ""
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsQueueResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsQueueResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsQueueResult, List[ModelsQueueResult], Dict[Any, ModelsQueueResult]
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
            "allocation_id": "allocation_id",
            "created_at": "created_at",
            "pod_name": "pod_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allocation_id": True,
            "created_at": True,
            "pod_name": True,
        }

    # endregion static methods
