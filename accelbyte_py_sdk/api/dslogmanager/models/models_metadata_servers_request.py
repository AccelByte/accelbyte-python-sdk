# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ds Log Manager Service

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


class ModelsMetadataServersRequest(Model):
    """Models metadata servers request (models.MetadataServersRequest)

    Properties:
        pod_names: (pod_names) REQUIRED List[str]
    """

    # region fields

    pod_names: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_pod_names(self, value: List[str]) -> ModelsMetadataServersRequest:
        self.pod_names = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pod_names"):
            result["pod_names"] = [str(i0) for i0 in self.pod_names]
        elif include_empty:
            result["pod_names"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, pod_names: List[str], **kwargs) -> ModelsMetadataServersRequest:
        instance = cls()
        instance.pod_names = pod_names
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMetadataServersRequest:
        instance = cls()
        if not dict_:
            return instance
        if "pod_names" in dict_ and dict_["pod_names"] is not None:
            instance.pod_names = [str(i0) for i0 in dict_["pod_names"]]
        elif include_empty:
            instance.pod_names = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMetadataServersRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMetadataServersRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMetadataServersRequest,
        List[ModelsMetadataServersRequest],
        Dict[Any, ModelsMetadataServersRequest],
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
            "pod_names": "pod_names",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "pod_names": True,
        }

    # endregion static methods
