# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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

from ..models.banned_by import BannedBy


class ModelUserBanResponse(Model):
    """Model user ban response (model.UserBanResponse)

    Properties:
        ban: (Ban) REQUIRED str

        ban_id: (BanId) REQUIRED str

        banned_by: (BannedBy) REQUIRED BannedBy

        comment: (Comment) REQUIRED str

        created_at: (CreatedAt) REQUIRED str

        enabled: (Enabled) REQUIRED bool

        end_date: (EndDate) REQUIRED str

        namespace: (Namespace) REQUIRED str

        reason: (Reason) REQUIRED str

        user_id: (UserId) REQUIRED str

        disabled_date: (DisabledDate) OPTIONAL str
    """

    # region fields

    ban: str  # REQUIRED
    ban_id: str  # REQUIRED
    banned_by: BannedBy  # REQUIRED
    comment: str  # REQUIRED
    created_at: str  # REQUIRED
    enabled: bool  # REQUIRED
    end_date: str  # REQUIRED
    namespace: str  # REQUIRED
    reason: str  # REQUIRED
    user_id: str  # REQUIRED
    disabled_date: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> ModelUserBanResponse:
        self.ban = value
        return self

    def with_ban_id(self, value: str) -> ModelUserBanResponse:
        self.ban_id = value
        return self

    def with_banned_by(self, value: BannedBy) -> ModelUserBanResponse:
        self.banned_by = value
        return self

    def with_comment(self, value: str) -> ModelUserBanResponse:
        self.comment = value
        return self

    def with_created_at(self, value: str) -> ModelUserBanResponse:
        self.created_at = value
        return self

    def with_enabled(self, value: bool) -> ModelUserBanResponse:
        self.enabled = value
        return self

    def with_end_date(self, value: str) -> ModelUserBanResponse:
        self.end_date = value
        return self

    def with_namespace(self, value: str) -> ModelUserBanResponse:
        self.namespace = value
        return self

    def with_reason(self, value: str) -> ModelUserBanResponse:
        self.reason = value
        return self

    def with_user_id(self, value: str) -> ModelUserBanResponse:
        self.user_id = value
        return self

    def with_disabled_date(self, value: str) -> ModelUserBanResponse:
        self.disabled_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["Ban"] = str(self.ban)
        elif include_empty:
            result["Ban"] = ""
        if hasattr(self, "ban_id"):
            result["BanId"] = str(self.ban_id)
        elif include_empty:
            result["BanId"] = ""
        if hasattr(self, "banned_by"):
            result["BannedBy"] = self.banned_by.to_dict(include_empty=include_empty)
        elif include_empty:
            result["BannedBy"] = BannedBy()
        if hasattr(self, "comment"):
            result["Comment"] = str(self.comment)
        elif include_empty:
            result["Comment"] = ""
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "enabled"):
            result["Enabled"] = bool(self.enabled)
        elif include_empty:
            result["Enabled"] = False
        if hasattr(self, "end_date"):
            result["EndDate"] = str(self.end_date)
        elif include_empty:
            result["EndDate"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "reason"):
            result["Reason"] = str(self.reason)
        elif include_empty:
            result["Reason"] = ""
        if hasattr(self, "user_id"):
            result["UserId"] = str(self.user_id)
        elif include_empty:
            result["UserId"] = ""
        if hasattr(self, "disabled_date"):
            result["DisabledDate"] = str(self.disabled_date)
        elif include_empty:
            result["DisabledDate"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        ban_id: str,
        banned_by: BannedBy,
        comment: str,
        created_at: str,
        enabled: bool,
        end_date: str,
        namespace: str,
        reason: str,
        user_id: str,
        disabled_date: Optional[str] = None,
    ) -> ModelUserBanResponse:
        instance = cls()
        instance.ban = ban
        instance.ban_id = ban_id
        instance.banned_by = banned_by
        instance.comment = comment
        instance.created_at = created_at
        instance.enabled = enabled
        instance.end_date = end_date
        instance.namespace = namespace
        instance.reason = reason
        instance.user_id = user_id
        if disabled_date is not None:
            instance.disabled_date = disabled_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserBanResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Ban" in dict_ and dict_["Ban"] is not None:
            instance.ban = str(dict_["Ban"])
        elif include_empty:
            instance.ban = ""
        if "BanId" in dict_ and dict_["BanId"] is not None:
            instance.ban_id = str(dict_["BanId"])
        elif include_empty:
            instance.ban_id = ""
        if "BannedBy" in dict_ and dict_["BannedBy"] is not None:
            instance.banned_by = BannedBy.create_from_dict(
                dict_["BannedBy"], include_empty=include_empty
            )
        elif include_empty:
            instance.banned_by = BannedBy()
        if "Comment" in dict_ and dict_["Comment"] is not None:
            instance.comment = str(dict_["Comment"])
        elif include_empty:
            instance.comment = ""
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "Enabled" in dict_ and dict_["Enabled"] is not None:
            instance.enabled = bool(dict_["Enabled"])
        elif include_empty:
            instance.enabled = False
        if "EndDate" in dict_ and dict_["EndDate"] is not None:
            instance.end_date = str(dict_["EndDate"])
        elif include_empty:
            instance.end_date = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "Reason" in dict_ and dict_["Reason"] is not None:
            instance.reason = str(dict_["Reason"])
        elif include_empty:
            instance.reason = ""
        if "UserId" in dict_ and dict_["UserId"] is not None:
            instance.user_id = str(dict_["UserId"])
        elif include_empty:
            instance.user_id = ""
        if "DisabledDate" in dict_ and dict_["DisabledDate"] is not None:
            instance.disabled_date = str(dict_["DisabledDate"])
        elif include_empty:
            instance.disabled_date = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserBanResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserBanResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserBanResponse,
        List[ModelUserBanResponse],
        Dict[Any, ModelUserBanResponse],
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
            "Ban": "ban",
            "BanId": "ban_id",
            "BannedBy": "banned_by",
            "Comment": "comment",
            "CreatedAt": "created_at",
            "Enabled": "enabled",
            "EndDate": "end_date",
            "Namespace": "namespace",
            "Reason": "reason",
            "UserId": "user_id",
            "DisabledDate": "disabled_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Ban": True,
            "BanId": True,
            "BannedBy": True,
            "Comment": True,
            "CreatedAt": True,
            "Enabled": True,
            "EndDate": True,
            "Namespace": True,
            "Reason": True,
            "UserId": True,
            "DisabledDate": False,
        }

    # endregion static methods
