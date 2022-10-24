# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.16.0)

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
from ....core import StrEnum


class SourceEnum(StrEnum):
    PAID_FOR = "PAID_FOR"
    SWEAT = "SWEAT"


class ExpGrantHistoryInfo(Model):
    """A DTO object for exp grant history details. (ExpGrantHistoryInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        grant_exp: (grantExp) REQUIRED int

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        season_id: (seasonId) REQUIRED str

        user_id: (userId) REQUIRED str

        source: (source) OPTIONAL Union[str, SourceEnum]

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    created_at: str  # REQUIRED
    grant_exp: int  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    season_id: str  # REQUIRED
    user_id: str  # REQUIRED
    source: Union[str, SourceEnum]  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ExpGrantHistoryInfo:
        self.created_at = value
        return self

    def with_grant_exp(self, value: int) -> ExpGrantHistoryInfo:
        self.grant_exp = value
        return self

    def with_id(self, value: str) -> ExpGrantHistoryInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ExpGrantHistoryInfo:
        self.namespace = value
        return self

    def with_season_id(self, value: str) -> ExpGrantHistoryInfo:
        self.season_id = value
        return self

    def with_user_id(self, value: str) -> ExpGrantHistoryInfo:
        self.user_id = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> ExpGrantHistoryInfo:
        self.source = value
        return self

    def with_tags(self, value: List[str]) -> ExpGrantHistoryInfo:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "grant_exp"):
            result["grantExp"] = int(self.grant_exp)
        elif include_empty:
            result["grantExp"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "season_id"):
            result["seasonId"] = str(self.season_id)
        elif include_empty:
            result["seasonId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        grant_exp: int,
        id_: str,
        namespace: str,
        season_id: str,
        user_id: str,
        source: Optional[Union[str, SourceEnum]] = None,
        tags: Optional[List[str]] = None,
    ) -> ExpGrantHistoryInfo:
        instance = cls()
        instance.created_at = created_at
        instance.grant_exp = grant_exp
        instance.id_ = id_
        instance.namespace = namespace
        instance.season_id = season_id
        instance.user_id = user_id
        if source is not None:
            instance.source = source
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ExpGrantHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "grantExp" in dict_ and dict_["grantExp"] is not None:
            instance.grant_exp = int(dict_["grantExp"])
        elif include_empty:
            instance.grant_exp = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "seasonId" in dict_ and dict_["seasonId"] is not None:
            instance.season_id = str(dict_["seasonId"])
        elif include_empty:
            instance.season_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ExpGrantHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ExpGrantHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ExpGrantHistoryInfo, List[ExpGrantHistoryInfo], Dict[Any, ExpGrantHistoryInfo]
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
            "createdAt": "created_at",
            "grantExp": "grant_exp",
            "id": "id_",
            "namespace": "namespace",
            "seasonId": "season_id",
            "userId": "user_id",
            "source": "source",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "grantExp": True,
            "id": True,
            "namespace": True,
            "seasonId": True,
            "userId": True,
            "source": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "source": ["PAID_FOR", "SWEAT"],
        }

    # endregion static methods
