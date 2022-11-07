# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ds Log Manager Service (2.6.0)

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


class ModelsDownloadLogsRequest(Model):
    """Models download logs request (models.DownloadLogsRequest)

    Properties:
        alloc_id: (alloc_id) REQUIRED str

        namespace: (namespace) REQUIRED str

        pod_name: (pod_name) REQUIRED str
    """

    # region fields

    alloc_id: str  # REQUIRED
    namespace: str  # REQUIRED
    pod_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_alloc_id(self, value: str) -> ModelsDownloadLogsRequest:
        self.alloc_id = value
        return self

    def with_namespace(self, value: str) -> ModelsDownloadLogsRequest:
        self.namespace = value
        return self

    def with_pod_name(self, value: str) -> ModelsDownloadLogsRequest:
        self.pod_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alloc_id"):
            result["alloc_id"] = str(self.alloc_id)
        elif include_empty:
            result["alloc_id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "pod_name"):
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        alloc_id: str,
        namespace: str,
        pod_name: str,
    ) -> ModelsDownloadLogsRequest:
        instance = cls()
        instance.alloc_id = alloc_id
        instance.namespace = namespace
        instance.pod_name = pod_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDownloadLogsRequest:
        instance = cls()
        if not dict_:
            return instance
        if "alloc_id" in dict_ and dict_["alloc_id"] is not None:
            instance.alloc_id = str(dict_["alloc_id"])
        elif include_empty:
            instance.alloc_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDownloadLogsRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDownloadLogsRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDownloadLogsRequest,
        List[ModelsDownloadLogsRequest],
        Dict[Any, ModelsDownloadLogsRequest],
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
            "alloc_id": "alloc_id",
            "namespace": "namespace",
            "pod_name": "pod_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alloc_id": True,
            "namespace": True,
            "pod_name": True,
        }

    # endregion static methods
