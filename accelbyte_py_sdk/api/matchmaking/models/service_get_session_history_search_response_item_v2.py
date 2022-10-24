# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.17.2)

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


class ServiceGetSessionHistorySearchResponseItemV2(Model):
    """Service get session history search response item V2 (service.GetSessionHistorySearchResponseItemV2)

    Properties:
        created_at: (created_at) REQUIRED str

        game_mode: (game_mode) REQUIRED str

        id_: (_id) REQUIRED str

        joinable: (joinable) REQUIRED bool

        match_id: (match_id) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED str

        sub_game_mode: (sub_game_mode) REQUIRED List[str]
    """

    # region fields

    created_at: str  # REQUIRED
    game_mode: str  # REQUIRED
    id_: str  # REQUIRED
    joinable: bool  # REQUIRED
    match_id: str  # REQUIRED
    namespace: str  # REQUIRED
    status: str  # REQUIRED
    sub_game_mode: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(
        self, value: str
    ) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.created_at = value
        return self

    def with_game_mode(
        self, value: str
    ) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.game_mode = value
        return self

    def with_id(self, value: str) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.id_ = value
        return self

    def with_joinable(
        self, value: bool
    ) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.joinable = value
        return self

    def with_match_id(self, value: str) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.match_id = value
        return self

    def with_namespace(
        self, value: str
    ) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.namespace = value
        return self

    def with_status(self, value: str) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.status = value
        return self

    def with_sub_game_mode(
        self, value: List[str]
    ) -> ServiceGetSessionHistorySearchResponseItemV2:
        self.sub_game_mode = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "game_mode"):
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "id_"):
            result["_id"] = str(self.id_)
        elif include_empty:
            result["_id"] = ""
        if hasattr(self, "joinable"):
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = False
        if hasattr(self, "match_id"):
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "sub_game_mode"):
            result["sub_game_mode"] = [str(i0) for i0 in self.sub_game_mode]
        elif include_empty:
            result["sub_game_mode"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        game_mode: str,
        id_: str,
        joinable: bool,
        match_id: str,
        namespace: str,
        status: str,
        sub_game_mode: List[str],
    ) -> ServiceGetSessionHistorySearchResponseItemV2:
        instance = cls()
        instance.created_at = created_at
        instance.game_mode = game_mode
        instance.id_ = id_
        instance.joinable = joinable
        instance.match_id = match_id
        instance.namespace = namespace
        instance.status = status
        instance.sub_game_mode = sub_game_mode
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ServiceGetSessionHistorySearchResponseItemV2:
        instance = cls()
        if not dict_:
            return instance
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "_id" in dict_ and dict_["_id"] is not None:
            instance.id_ = str(dict_["_id"])
        elif include_empty:
            instance.id_ = ""
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = False
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "sub_game_mode" in dict_ and dict_["sub_game_mode"] is not None:
            instance.sub_game_mode = [str(i0) for i0 in dict_["sub_game_mode"]]
        elif include_empty:
            instance.sub_game_mode = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ServiceGetSessionHistorySearchResponseItemV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ServiceGetSessionHistorySearchResponseItemV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ServiceGetSessionHistorySearchResponseItemV2,
        List[ServiceGetSessionHistorySearchResponseItemV2],
        Dict[Any, ServiceGetSessionHistorySearchResponseItemV2],
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
            "created_at": "created_at",
            "game_mode": "game_mode",
            "_id": "id_",
            "joinable": "joinable",
            "match_id": "match_id",
            "namespace": "namespace",
            "status": "status",
            "sub_game_mode": "sub_game_mode",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "created_at": True,
            "game_mode": True,
            "_id": True,
            "joinable": True,
            "match_id": True,
            "namespace": True,
            "status": True,
            "sub_game_mode": True,
        }

    # endregion static methods
