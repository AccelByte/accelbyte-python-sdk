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


class ApimodelReplicaResponse(Model):
    """Apimodel replica response (apimodel.ReplicaResponse)

    Properties:
        current_replica: (currentReplica) OPTIONAL int

        max_replica: (maxReplica) OPTIONAL int

        min_replica: (minReplica) OPTIONAL int

        replica_limit: (replicaLimit) OPTIONAL int
    """

    # region fields

    current_replica: int  # OPTIONAL
    max_replica: int  # OPTIONAL
    min_replica: int  # OPTIONAL
    replica_limit: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_current_replica(self, value: int) -> ApimodelReplicaResponse:
        self.current_replica = value
        return self

    def with_max_replica(self, value: int) -> ApimodelReplicaResponse:
        self.max_replica = value
        return self

    def with_min_replica(self, value: int) -> ApimodelReplicaResponse:
        self.min_replica = value
        return self

    def with_replica_limit(self, value: int) -> ApimodelReplicaResponse:
        self.replica_limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_replica"):
            result["currentReplica"] = int(self.current_replica)
        elif include_empty:
            result["currentReplica"] = 0
        if hasattr(self, "max_replica"):
            result["maxReplica"] = int(self.max_replica)
        elif include_empty:
            result["maxReplica"] = 0
        if hasattr(self, "min_replica"):
            result["minReplica"] = int(self.min_replica)
        elif include_empty:
            result["minReplica"] = 0
        if hasattr(self, "replica_limit"):
            result["replicaLimit"] = int(self.replica_limit)
        elif include_empty:
            result["replicaLimit"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        current_replica: Optional[int] = None,
        max_replica: Optional[int] = None,
        min_replica: Optional[int] = None,
        replica_limit: Optional[int] = None,
        **kwargs,
    ) -> ApimodelReplicaResponse:
        instance = cls()
        if current_replica is not None:
            instance.current_replica = current_replica
        if max_replica is not None:
            instance.max_replica = max_replica
        if min_replica is not None:
            instance.min_replica = min_replica
        if replica_limit is not None:
            instance.replica_limit = replica_limit
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelReplicaResponse:
        instance = cls()
        if not dict_:
            return instance
        if "currentReplica" in dict_ and dict_["currentReplica"] is not None:
            instance.current_replica = int(dict_["currentReplica"])
        elif include_empty:
            instance.current_replica = 0
        if "maxReplica" in dict_ and dict_["maxReplica"] is not None:
            instance.max_replica = int(dict_["maxReplica"])
        elif include_empty:
            instance.max_replica = 0
        if "minReplica" in dict_ and dict_["minReplica"] is not None:
            instance.min_replica = int(dict_["minReplica"])
        elif include_empty:
            instance.min_replica = 0
        if "replicaLimit" in dict_ and dict_["replicaLimit"] is not None:
            instance.replica_limit = int(dict_["replicaLimit"])
        elif include_empty:
            instance.replica_limit = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelReplicaResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelReplicaResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelReplicaResponse,
        List[ApimodelReplicaResponse],
        Dict[Any, ApimodelReplicaResponse],
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
            "currentReplica": "current_replica",
            "maxReplica": "max_replica",
            "minReplica": "min_replica",
            "replicaLimit": "replica_limit",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currentReplica": False,
            "maxReplica": False,
            "minReplica": False,
            "replicaLimit": False,
        }

    # endregion static methods
