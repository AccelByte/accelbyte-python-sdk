# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelUserInvitationHistory(Model):
    """Model user invitation history (model.UserInvitationHistory)

    Properties:
        accepted: (accepted) REQUIRED bool

        invitee: (invitee) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    accepted: bool  # REQUIRED
    invitee: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_accepted(self, value: bool) -> ModelUserInvitationHistory:
        self.accepted = value
        return self

    def with_invitee(self, value: str) -> ModelUserInvitationHistory:
        self.invitee = value
        return self

    def with_updated_at(self, value: str) -> ModelUserInvitationHistory:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "accepted"):
            result["accepted"] = bool(self.accepted)
        elif include_empty:
            result["accepted"] = False
        if hasattr(self, "invitee"):
            result["invitee"] = str(self.invitee)
        elif include_empty:
            result["invitee"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, accepted: bool, invitee: str, updated_at: str, **kwargs
    ) -> ModelUserInvitationHistory:
        instance = cls()
        instance.accepted = accepted
        instance.invitee = invitee
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserInvitationHistory:
        instance = cls()
        if not dict_:
            return instance
        if "accepted" in dict_ and dict_["accepted"] is not None:
            instance.accepted = bool(dict_["accepted"])
        elif include_empty:
            instance.accepted = False
        if "invitee" in dict_ and dict_["invitee"] is not None:
            instance.invitee = str(dict_["invitee"])
        elif include_empty:
            instance.invitee = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserInvitationHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserInvitationHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserInvitationHistory,
        List[ModelUserInvitationHistory],
        Dict[Any, ModelUserInvitationHistory],
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
            "accepted": "accepted",
            "invitee": "invitee",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "accepted": True,
            "invitee": True,
            "updatedAt": True,
        }

    # endregion static methods
