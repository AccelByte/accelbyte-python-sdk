# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class DomainKeyValueUpdateConfiguration(Model):
    """Domain key value update configuration (domain.KeyValueUpdateConfiguration)

    Properties:
        max_data_storage_gb: (maxDataStorageGB) REQUIRED int

        max_ecpu_per_second: (maxECPUPerSecond) REQUIRED int

        profile_name: (profileName) REQUIRED str
    """

    # region fields

    max_data_storage_gb: int  # REQUIRED
    max_ecpu_per_second: int  # REQUIRED
    profile_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_max_data_storage_gb(self, value: int) -> DomainKeyValueUpdateConfiguration:
        self.max_data_storage_gb = value
        return self

    def with_max_ecpu_per_second(self, value: int) -> DomainKeyValueUpdateConfiguration:
        self.max_ecpu_per_second = value
        return self

    def with_profile_name(self, value: str) -> DomainKeyValueUpdateConfiguration:
        self.profile_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_data_storage_gb"):
            result["maxDataStorageGB"] = int(self.max_data_storage_gb)
        elif include_empty:
            result["maxDataStorageGB"] = 0
        if hasattr(self, "max_ecpu_per_second"):
            result["maxECPUPerSecond"] = int(self.max_ecpu_per_second)
        elif include_empty:
            result["maxECPUPerSecond"] = 0
        if hasattr(self, "profile_name"):
            result["profileName"] = str(self.profile_name)
        elif include_empty:
            result["profileName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_data_storage_gb: int,
        max_ecpu_per_second: int,
        profile_name: str,
        **kwargs,
    ) -> DomainKeyValueUpdateConfiguration:
        instance = cls()
        instance.max_data_storage_gb = max_data_storage_gb
        instance.max_ecpu_per_second = max_ecpu_per_second
        instance.profile_name = profile_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DomainKeyValueUpdateConfiguration:
        instance = cls()
        if not dict_:
            return instance
        if "maxDataStorageGB" in dict_ and dict_["maxDataStorageGB"] is not None:
            instance.max_data_storage_gb = int(dict_["maxDataStorageGB"])
        elif include_empty:
            instance.max_data_storage_gb = 0
        if "maxECPUPerSecond" in dict_ and dict_["maxECPUPerSecond"] is not None:
            instance.max_ecpu_per_second = int(dict_["maxECPUPerSecond"])
        elif include_empty:
            instance.max_ecpu_per_second = 0
        if "profileName" in dict_ and dict_["profileName"] is not None:
            instance.profile_name = str(dict_["profileName"])
        elif include_empty:
            instance.profile_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DomainKeyValueUpdateConfiguration]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DomainKeyValueUpdateConfiguration]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DomainKeyValueUpdateConfiguration,
        List[DomainKeyValueUpdateConfiguration],
        Dict[Any, DomainKeyValueUpdateConfiguration],
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
            "maxDataStorageGB": "max_data_storage_gb",
            "maxECPUPerSecond": "max_ecpu_per_second",
            "profileName": "profile_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxDataStorageGB": True,
            "maxECPUPerSecond": True,
            "profileName": True,
        }

    # endregion static methods
