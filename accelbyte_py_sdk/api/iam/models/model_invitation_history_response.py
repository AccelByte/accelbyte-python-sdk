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


class ModelInvitationHistoryResponse(Model):
    """Model invitation history response (model.InvitationHistoryResponse)

    Properties:
        accepted: (accepted) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        inviter: (inviter) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    accepted: bool  # REQUIRED
    created_at: str  # REQUIRED
    inviter: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_accepted(self, value: bool) -> ModelInvitationHistoryResponse:
        self.accepted = value
        return self

    def with_created_at(self, value: str) -> ModelInvitationHistoryResponse:
        self.created_at = value
        return self

    def with_inviter(self, value: str) -> ModelInvitationHistoryResponse:
        self.inviter = value
        return self

    def with_namespace(self, value: str) -> ModelInvitationHistoryResponse:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ModelInvitationHistoryResponse:
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
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "inviter"):
            result["inviter"] = str(self.inviter)
        elif include_empty:
            result["inviter"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        accepted: bool,
        created_at: str,
        inviter: str,
        namespace: str,
        updated_at: str,
        **kwargs,
    ) -> ModelInvitationHistoryResponse:
        instance = cls()
        instance.accepted = accepted
        instance.created_at = created_at
        instance.inviter = inviter
        instance.namespace = namespace
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelInvitationHistoryResponse:
        instance = cls()
        if not dict_:
            return instance
        if "accepted" in dict_ and dict_["accepted"] is not None:
            instance.accepted = bool(dict_["accepted"])
        elif include_empty:
            instance.accepted = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "inviter" in dict_ and dict_["inviter"] is not None:
            instance.inviter = str(dict_["inviter"])
        elif include_empty:
            instance.inviter = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelInvitationHistoryResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelInvitationHistoryResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelInvitationHistoryResponse,
        List[ModelInvitationHistoryResponse],
        Dict[Any, ModelInvitationHistoryResponse],
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
            "createdAt": "created_at",
            "inviter": "inviter",
            "namespace": "namespace",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "accepted": True,
            "createdAt": True,
            "inviter": True,
            "namespace": True,
            "updatedAt": True,
        }

    # endregion static methods
