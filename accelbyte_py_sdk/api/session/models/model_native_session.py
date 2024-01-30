# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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

from ..models.model_native_session_member import ModelNativeSessionMember


class ModelNativeSession(Model):
    """Model native session (model.NativeSession)

    Properties:
        created_at: (CreatedAt) REQUIRED str

        deleted_at: (DeletedAt) REQUIRED str

        id_: (id) REQUIRED str

        members: (members) REQUIRED List[ModelNativeSessionMember]

        namespace: (namespace) REQUIRED str

        native_session_platforms: (nativeSessionPlatforms) REQUIRED Dict[str, str]

        persistent: (persistent) REQUIRED bool

        push_context_id: (PushContextID) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    deleted_at: str  # REQUIRED
    id_: str  # REQUIRED
    members: List[ModelNativeSessionMember]  # REQUIRED
    namespace: str  # REQUIRED
    native_session_platforms: Dict[str, str]  # REQUIRED
    persistent: bool  # REQUIRED
    push_context_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelNativeSession:
        self.created_at = value
        return self

    def with_deleted_at(self, value: str) -> ModelNativeSession:
        self.deleted_at = value
        return self

    def with_id(self, value: str) -> ModelNativeSession:
        self.id_ = value
        return self

    def with_members(self, value: List[ModelNativeSessionMember]) -> ModelNativeSession:
        self.members = value
        return self

    def with_namespace(self, value: str) -> ModelNativeSession:
        self.namespace = value
        return self

    def with_native_session_platforms(
        self, value: Dict[str, str]
    ) -> ModelNativeSession:
        self.native_session_platforms = value
        return self

    def with_persistent(self, value: bool) -> ModelNativeSession:
        self.persistent = value
        return self

    def with_push_context_id(self, value: str) -> ModelNativeSession:
        self.push_context_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "deleted_at"):
            result["DeletedAt"] = str(self.deleted_at)
        elif include_empty:
            result["DeletedAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "members"):
            result["members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["members"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "native_session_platforms"):
            result["nativeSessionPlatforms"] = {
                str(k0): str(v0) for k0, v0 in self.native_session_platforms.items()
            }
        elif include_empty:
            result["nativeSessionPlatforms"] = {}
        if hasattr(self, "persistent"):
            result["persistent"] = bool(self.persistent)
        elif include_empty:
            result["persistent"] = False
        if hasattr(self, "push_context_id"):
            result["PushContextID"] = str(self.push_context_id)
        elif include_empty:
            result["PushContextID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        deleted_at: str,
        id_: str,
        members: List[ModelNativeSessionMember],
        namespace: str,
        native_session_platforms: Dict[str, str],
        persistent: bool,
        push_context_id: str,
        **kwargs,
    ) -> ModelNativeSession:
        instance = cls()
        instance.created_at = created_at
        instance.deleted_at = deleted_at
        instance.id_ = id_
        instance.members = members
        instance.namespace = namespace
        instance.native_session_platforms = native_session_platforms
        instance.persistent = persistent
        instance.push_context_id = push_context_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelNativeSession:
        instance = cls()
        if not dict_:
            return instance
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "DeletedAt" in dict_ and dict_["DeletedAt"] is not None:
            instance.deleted_at = str(dict_["DeletedAt"])
        elif include_empty:
            instance.deleted_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "members" in dict_ and dict_["members"] is not None:
            instance.members = [
                ModelNativeSessionMember.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["members"]
            ]
        elif include_empty:
            instance.members = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if (
            "nativeSessionPlatforms" in dict_
            and dict_["nativeSessionPlatforms"] is not None
        ):
            instance.native_session_platforms = {
                str(k0): str(v0) for k0, v0 in dict_["nativeSessionPlatforms"].items()
            }
        elif include_empty:
            instance.native_session_platforms = {}
        if "persistent" in dict_ and dict_["persistent"] is not None:
            instance.persistent = bool(dict_["persistent"])
        elif include_empty:
            instance.persistent = False
        if "PushContextID" in dict_ and dict_["PushContextID"] is not None:
            instance.push_context_id = str(dict_["PushContextID"])
        elif include_empty:
            instance.push_context_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelNativeSession]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelNativeSession]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelNativeSession, List[ModelNativeSession], Dict[Any, ModelNativeSession]
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
            "CreatedAt": "created_at",
            "DeletedAt": "deleted_at",
            "id": "id_",
            "members": "members",
            "namespace": "namespace",
            "nativeSessionPlatforms": "native_session_platforms",
            "persistent": "persistent",
            "PushContextID": "push_context_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "CreatedAt": True,
            "DeletedAt": True,
            "id": True,
            "members": True,
            "namespace": True,
            "nativeSessionPlatforms": True,
            "persistent": True,
            "PushContextID": True,
        }

    # endregion static methods
