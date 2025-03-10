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


class ApimodelReplicaRequest(Model):
    """Apimodel replica request (apimodel.ReplicaRequest)

    Properties:
        max_replica: (maxReplica) OPTIONAL int

        min_replica: (minReplica) OPTIONAL int
    """

    # region fields

    max_replica: int  # OPTIONAL
    min_replica: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_max_replica(self, value: int) -> ApimodelReplicaRequest:
        self.max_replica = value
        return self

    def with_min_replica(self, value: int) -> ApimodelReplicaRequest:
        self.min_replica = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_replica"):
            result["maxReplica"] = int(self.max_replica)
        elif include_empty:
            result["maxReplica"] = 0
        if hasattr(self, "min_replica"):
            result["minReplica"] = int(self.min_replica)
        elif include_empty:
            result["minReplica"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_replica: Optional[int] = None,
        min_replica: Optional[int] = None,
        **kwargs,
    ) -> ApimodelReplicaRequest:
        instance = cls()
        if max_replica is not None:
            instance.max_replica = max_replica
        if min_replica is not None:
            instance.min_replica = min_replica
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelReplicaRequest:
        instance = cls()
        if not dict_:
            return instance
        if "maxReplica" in dict_ and dict_["maxReplica"] is not None:
            instance.max_replica = int(dict_["maxReplica"])
        elif include_empty:
            instance.max_replica = 0
        if "minReplica" in dict_ and dict_["minReplica"] is not None:
            instance.min_replica = int(dict_["minReplica"])
        elif include_empty:
            instance.min_replica = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelReplicaRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelReplicaRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelReplicaRequest,
        List[ApimodelReplicaRequest],
        Dict[Any, ApimodelReplicaRequest],
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
            "maxReplica": "max_replica",
            "minReplica": "min_replica",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxReplica": False,
            "minReplica": False,
        }

    # endregion static methods
