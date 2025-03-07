# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..models.apimodels_history import ApimodelsHistory
from ..models.models_game_session import ModelsGameSession


class ApimodelsGameSessionDetail(Model):
    """Apimodels game session detail (apimodels.GameSessionDetail)

    Properties:
        active: (active) REQUIRED bool

        created_at: (created_at) REQUIRED str

        ended: (ended) REQUIRED bool

        histories: (histories) REQUIRED List[ApimodelsHistory]

        joinability: (joinability) REQUIRED str

        last_data: (last_data) REQUIRED ModelsGameSession

        match_pool: (match_pool) REQUIRED str

        namespace: (namespace) REQUIRED str

        persistent: (persistent) REQUIRED bool

        pod_name: (pod_name) REQUIRED str

        session_id: (sessionID) REQUIRED str

        session_template: (session_template) REQUIRED str

        updated_at: (updated_at) REQUIRED str
    """

    # region fields

    active: bool  # REQUIRED
    created_at: str  # REQUIRED
    ended: bool  # REQUIRED
    histories: List[ApimodelsHistory]  # REQUIRED
    joinability: str  # REQUIRED
    last_data: ModelsGameSession  # REQUIRED
    match_pool: str  # REQUIRED
    namespace: str  # REQUIRED
    persistent: bool  # REQUIRED
    pod_name: str  # REQUIRED
    session_id: str  # REQUIRED
    session_template: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> ApimodelsGameSessionDetail:
        self.active = value
        return self

    def with_created_at(self, value: str) -> ApimodelsGameSessionDetail:
        self.created_at = value
        return self

    def with_ended(self, value: bool) -> ApimodelsGameSessionDetail:
        self.ended = value
        return self

    def with_histories(
        self, value: List[ApimodelsHistory]
    ) -> ApimodelsGameSessionDetail:
        self.histories = value
        return self

    def with_joinability(self, value: str) -> ApimodelsGameSessionDetail:
        self.joinability = value
        return self

    def with_last_data(self, value: ModelsGameSession) -> ApimodelsGameSessionDetail:
        self.last_data = value
        return self

    def with_match_pool(self, value: str) -> ApimodelsGameSessionDetail:
        self.match_pool = value
        return self

    def with_namespace(self, value: str) -> ApimodelsGameSessionDetail:
        self.namespace = value
        return self

    def with_persistent(self, value: bool) -> ApimodelsGameSessionDetail:
        self.persistent = value
        return self

    def with_pod_name(self, value: str) -> ApimodelsGameSessionDetail:
        self.pod_name = value
        return self

    def with_session_id(self, value: str) -> ApimodelsGameSessionDetail:
        self.session_id = value
        return self

    def with_session_template(self, value: str) -> ApimodelsGameSessionDetail:
        self.session_template = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsGameSessionDetail:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "ended"):
            result["ended"] = bool(self.ended)
        elif include_empty:
            result["ended"] = False
        if hasattr(self, "histories"):
            result["histories"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.histories
            ]
        elif include_empty:
            result["histories"] = []
        if hasattr(self, "joinability"):
            result["joinability"] = str(self.joinability)
        elif include_empty:
            result["joinability"] = ""
        if hasattr(self, "last_data"):
            result["last_data"] = self.last_data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["last_data"] = ModelsGameSession()
        if hasattr(self, "match_pool"):
            result["match_pool"] = str(self.match_pool)
        elif include_empty:
            result["match_pool"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "persistent"):
            result["persistent"] = bool(self.persistent)
        elif include_empty:
            result["persistent"] = False
        if hasattr(self, "pod_name"):
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        if hasattr(self, "session_id"):
            result["sessionID"] = str(self.session_id)
        elif include_empty:
            result["sessionID"] = ""
        if hasattr(self, "session_template"):
            result["session_template"] = str(self.session_template)
        elif include_empty:
            result["session_template"] = ""
        if hasattr(self, "updated_at"):
            result["updated_at"] = str(self.updated_at)
        elif include_empty:
            result["updated_at"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active: bool,
        created_at: str,
        ended: bool,
        histories: List[ApimodelsHistory],
        joinability: str,
        last_data: ModelsGameSession,
        match_pool: str,
        namespace: str,
        persistent: bool,
        pod_name: str,
        session_id: str,
        session_template: str,
        updated_at: str,
        **kwargs,
    ) -> ApimodelsGameSessionDetail:
        instance = cls()
        instance.active = active
        instance.created_at = created_at
        instance.ended = ended
        instance.histories = histories
        instance.joinability = joinability
        instance.last_data = last_data
        instance.match_pool = match_pool
        instance.namespace = namespace
        instance.persistent = persistent
        instance.pod_name = pod_name
        instance.session_id = session_id
        instance.session_template = session_template
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsGameSessionDetail:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "ended" in dict_ and dict_["ended"] is not None:
            instance.ended = bool(dict_["ended"])
        elif include_empty:
            instance.ended = False
        if "histories" in dict_ and dict_["histories"] is not None:
            instance.histories = [
                ApimodelsHistory.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["histories"]
            ]
        elif include_empty:
            instance.histories = []
        if "joinability" in dict_ and dict_["joinability"] is not None:
            instance.joinability = str(dict_["joinability"])
        elif include_empty:
            instance.joinability = ""
        if "last_data" in dict_ and dict_["last_data"] is not None:
            instance.last_data = ModelsGameSession.create_from_dict(
                dict_["last_data"], include_empty=include_empty
            )
        elif include_empty:
            instance.last_data = ModelsGameSession()
        if "match_pool" in dict_ and dict_["match_pool"] is not None:
            instance.match_pool = str(dict_["match_pool"])
        elif include_empty:
            instance.match_pool = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "persistent" in dict_ and dict_["persistent"] is not None:
            instance.persistent = bool(dict_["persistent"])
        elif include_empty:
            instance.persistent = False
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        if "sessionID" in dict_ and dict_["sessionID"] is not None:
            instance.session_id = str(dict_["sessionID"])
        elif include_empty:
            instance.session_id = ""
        if "session_template" in dict_ and dict_["session_template"] is not None:
            instance.session_template = str(dict_["session_template"])
        elif include_empty:
            instance.session_template = ""
        if "updated_at" in dict_ and dict_["updated_at"] is not None:
            instance.updated_at = str(dict_["updated_at"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsGameSessionDetail]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsGameSessionDetail]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsGameSessionDetail,
        List[ApimodelsGameSessionDetail],
        Dict[Any, ApimodelsGameSessionDetail],
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
            "active": "active",
            "created_at": "created_at",
            "ended": "ended",
            "histories": "histories",
            "joinability": "joinability",
            "last_data": "last_data",
            "match_pool": "match_pool",
            "namespace": "namespace",
            "persistent": "persistent",
            "pod_name": "pod_name",
            "sessionID": "session_id",
            "session_template": "session_template",
            "updated_at": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "created_at": True,
            "ended": True,
            "histories": True,
            "joinability": True,
            "last_data": True,
            "match_pool": True,
            "namespace": True,
            "persistent": True,
            "pod_name": True,
            "sessionID": True,
            "session_template": True,
            "updated_at": True,
        }

    # endregion static methods
