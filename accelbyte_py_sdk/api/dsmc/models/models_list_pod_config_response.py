# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (3.10.1)

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

from ..models.models_paging_cursor import ModelsPagingCursor
from ..models.models_pod_config_record import ModelsPodConfigRecord


class ModelsListPodConfigResponse(Model):
    """Models list pod config response (models.ListPodConfigResponse)

    Properties:
        paging: (paging) REQUIRED ModelsPagingCursor

        pod_configs: (pod_configs) REQUIRED List[ModelsPodConfigRecord]
    """

    # region fields

    paging: ModelsPagingCursor  # REQUIRED
    pod_configs: List[ModelsPodConfigRecord]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_paging(self, value: ModelsPagingCursor) -> ModelsListPodConfigResponse:
        self.paging = value
        return self

    def with_pod_configs(
        self, value: List[ModelsPodConfigRecord]
    ) -> ModelsListPodConfigResponse:
        self.pod_configs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = ModelsPagingCursor()
        if hasattr(self, "pod_configs"):
            result["pod_configs"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.pod_configs
            ]
        elif include_empty:
            result["pod_configs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        paging: ModelsPagingCursor,
        pod_configs: List[ModelsPodConfigRecord],
    ) -> ModelsListPodConfigResponse:
        instance = cls()
        instance.paging = paging
        instance.pod_configs = pod_configs
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsListPodConfigResponse:
        instance = cls()
        if not dict_:
            return instance
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = ModelsPagingCursor.create_from_dict(
                dict_["paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = ModelsPagingCursor()
        if "pod_configs" in dict_ and dict_["pod_configs"] is not None:
            instance.pod_configs = [
                ModelsPodConfigRecord.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["pod_configs"]
            ]
        elif include_empty:
            instance.pod_configs = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsListPodConfigResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsListPodConfigResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsListPodConfigResponse,
        List[ModelsListPodConfigResponse],
        Dict[Any, ModelsListPodConfigResponse],
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
            "paging": "paging",
            "pod_configs": "pod_configs",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "paging": True,
            "pod_configs": True,
        }

    # endregion static methods
