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


class ModelsMemberActiveSession(Model):
    """Models member active session (models.MemberActiveSession)

    Properties:
        created_at: (CreatedAt) REQUIRED str

        id_: (ID) REQUIRED str

        member_id: (MemberID) REQUIRED str

        namespace: (Namespace) REQUIRED str

        session_i_ds: (SessionIDs) REQUIRED List[str]

        session_template: (SessionTemplate) REQUIRED str

        total: (Total) REQUIRED int

        updated_at: (UpdatedAt) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    member_id: str  # REQUIRED
    namespace: str  # REQUIRED
    session_i_ds: List[str]  # REQUIRED
    session_template: str  # REQUIRED
    total: int  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsMemberActiveSession:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ModelsMemberActiveSession:
        self.id_ = value
        return self

    def with_member_id(self, value: str) -> ModelsMemberActiveSession:
        self.member_id = value
        return self

    def with_namespace(self, value: str) -> ModelsMemberActiveSession:
        self.namespace = value
        return self

    def with_session_i_ds(self, value: List[str]) -> ModelsMemberActiveSession:
        self.session_i_ds = value
        return self

    def with_session_template(self, value: str) -> ModelsMemberActiveSession:
        self.session_template = value
        return self

    def with_total(self, value: int) -> ModelsMemberActiveSession:
        self.total = value
        return self

    def with_updated_at(self, value: str) -> ModelsMemberActiveSession:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "id_"):
            result["ID"] = str(self.id_)
        elif include_empty:
            result["ID"] = ""
        if hasattr(self, "member_id"):
            result["MemberID"] = str(self.member_id)
        elif include_empty:
            result["MemberID"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "session_i_ds"):
            result["SessionIDs"] = [str(i0) for i0 in self.session_i_ds]
        elif include_empty:
            result["SessionIDs"] = []
        if hasattr(self, "session_template"):
            result["SessionTemplate"] = str(self.session_template)
        elif include_empty:
            result["SessionTemplate"] = ""
        if hasattr(self, "total"):
            result["Total"] = int(self.total)
        elif include_empty:
            result["Total"] = 0
        if hasattr(self, "updated_at"):
            result["UpdatedAt"] = str(self.updated_at)
        elif include_empty:
            result["UpdatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        member_id: str,
        namespace: str,
        session_i_ds: List[str],
        session_template: str,
        total: int,
        updated_at: str,
        **kwargs,
    ) -> ModelsMemberActiveSession:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.member_id = member_id
        instance.namespace = namespace
        instance.session_i_ds = session_i_ds
        instance.session_template = session_template
        instance.total = total
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMemberActiveSession:
        instance = cls()
        if not dict_:
            return instance
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "ID" in dict_ and dict_["ID"] is not None:
            instance.id_ = str(dict_["ID"])
        elif include_empty:
            instance.id_ = ""
        if "MemberID" in dict_ and dict_["MemberID"] is not None:
            instance.member_id = str(dict_["MemberID"])
        elif include_empty:
            instance.member_id = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "SessionIDs" in dict_ and dict_["SessionIDs"] is not None:
            instance.session_i_ds = [str(i0) for i0 in dict_["SessionIDs"]]
        elif include_empty:
            instance.session_i_ds = []
        if "SessionTemplate" in dict_ and dict_["SessionTemplate"] is not None:
            instance.session_template = str(dict_["SessionTemplate"])
        elif include_empty:
            instance.session_template = ""
        if "Total" in dict_ and dict_["Total"] is not None:
            instance.total = int(dict_["Total"])
        elif include_empty:
            instance.total = 0
        if "UpdatedAt" in dict_ and dict_["UpdatedAt"] is not None:
            instance.updated_at = str(dict_["UpdatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMemberActiveSession]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMemberActiveSession]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMemberActiveSession,
        List[ModelsMemberActiveSession],
        Dict[Any, ModelsMemberActiveSession],
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
            "ID": "id_",
            "MemberID": "member_id",
            "Namespace": "namespace",
            "SessionIDs": "session_i_ds",
            "SessionTemplate": "session_template",
            "Total": "total",
            "UpdatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "CreatedAt": True,
            "ID": True,
            "MemberID": True,
            "Namespace": True,
            "SessionIDs": True,
            "SessionTemplate": True,
            "Total": True,
            "UpdatedAt": True,
        }

    # endregion static methods
