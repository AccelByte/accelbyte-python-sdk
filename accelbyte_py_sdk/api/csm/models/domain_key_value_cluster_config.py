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


class DomainKeyValueClusterConfig(Model):
    """Domain key value cluster config (domain.KeyValueClusterConfig)

    Properties:
        max_cluster_per_studio_private_cloud: (max_cluster_per_studio_private_cloud) REQUIRED int

        max_cluster_per_studio_shared_cloud: (max_cluster_per_studio_shared_cloud) REQUIRED int

        max_integration_per_cluster: (max_integration_per_cluster) REQUIRED int
    """

    # region fields

    max_cluster_per_studio_private_cloud: int  # REQUIRED
    max_cluster_per_studio_shared_cloud: int  # REQUIRED
    max_integration_per_cluster: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_max_cluster_per_studio_private_cloud(
        self, value: int
    ) -> DomainKeyValueClusterConfig:
        self.max_cluster_per_studio_private_cloud = value
        return self

    def with_max_cluster_per_studio_shared_cloud(
        self, value: int
    ) -> DomainKeyValueClusterConfig:
        self.max_cluster_per_studio_shared_cloud = value
        return self

    def with_max_integration_per_cluster(
        self, value: int
    ) -> DomainKeyValueClusterConfig:
        self.max_integration_per_cluster = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_cluster_per_studio_private_cloud"):
            result["max_cluster_per_studio_private_cloud"] = int(
                self.max_cluster_per_studio_private_cloud
            )
        elif include_empty:
            result["max_cluster_per_studio_private_cloud"] = 0
        if hasattr(self, "max_cluster_per_studio_shared_cloud"):
            result["max_cluster_per_studio_shared_cloud"] = int(
                self.max_cluster_per_studio_shared_cloud
            )
        elif include_empty:
            result["max_cluster_per_studio_shared_cloud"] = 0
        if hasattr(self, "max_integration_per_cluster"):
            result["max_integration_per_cluster"] = int(
                self.max_integration_per_cluster
            )
        elif include_empty:
            result["max_integration_per_cluster"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_cluster_per_studio_private_cloud: int,
        max_cluster_per_studio_shared_cloud: int,
        max_integration_per_cluster: int,
        **kwargs,
    ) -> DomainKeyValueClusterConfig:
        instance = cls()
        instance.max_cluster_per_studio_private_cloud = (
            max_cluster_per_studio_private_cloud
        )
        instance.max_cluster_per_studio_shared_cloud = (
            max_cluster_per_studio_shared_cloud
        )
        instance.max_integration_per_cluster = max_integration_per_cluster
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DomainKeyValueClusterConfig:
        instance = cls()
        if not dict_:
            return instance
        if (
            "max_cluster_per_studio_private_cloud" in dict_
            and dict_["max_cluster_per_studio_private_cloud"] is not None
        ):
            instance.max_cluster_per_studio_private_cloud = int(
                dict_["max_cluster_per_studio_private_cloud"]
            )
        elif include_empty:
            instance.max_cluster_per_studio_private_cloud = 0
        if (
            "max_cluster_per_studio_shared_cloud" in dict_
            and dict_["max_cluster_per_studio_shared_cloud"] is not None
        ):
            instance.max_cluster_per_studio_shared_cloud = int(
                dict_["max_cluster_per_studio_shared_cloud"]
            )
        elif include_empty:
            instance.max_cluster_per_studio_shared_cloud = 0
        if (
            "max_integration_per_cluster" in dict_
            and dict_["max_integration_per_cluster"] is not None
        ):
            instance.max_integration_per_cluster = int(
                dict_["max_integration_per_cluster"]
            )
        elif include_empty:
            instance.max_integration_per_cluster = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DomainKeyValueClusterConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DomainKeyValueClusterConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DomainKeyValueClusterConfig,
        List[DomainKeyValueClusterConfig],
        Dict[Any, DomainKeyValueClusterConfig],
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
            "max_cluster_per_studio_private_cloud": "max_cluster_per_studio_private_cloud",
            "max_cluster_per_studio_shared_cloud": "max_cluster_per_studio_shared_cloud",
            "max_integration_per_cluster": "max_integration_per_cluster",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "max_cluster_per_studio_private_cloud": True,
            "max_cluster_per_studio_shared_cloud": True,
            "max_integration_per_cluster": True,
        }

    # endregion static methods
