# justice-iam-service (4.4.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

    ban: str                                                                                       # REQUIRED
    ban_id: str                                                                                    # REQUIRED
    banned_by: BannedBy                                                                            # REQUIRED
    comment: str                                                                                   # REQUIRED
    created_at: str                                                                                # REQUIRED
    enabled: bool                                                                                  # REQUIRED
    end_date: str                                                                                  # REQUIRED
    namespace: str                                                                                 # REQUIRED
    reason: str                                                                                    # REQUIRED
    user_id: str                                                                                   # REQUIRED
    disabled_date: str                                                                             # OPTIONAL

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
            result["Ban"] = str()
        if hasattr(self, "ban_id"):
            result["BanId"] = str(self.ban_id)
        elif include_empty:
            result["BanId"] = str()
        if hasattr(self, "banned_by"):
            result["BannedBy"] = self.banned_by.to_dict(include_empty=include_empty)
        elif include_empty:
            result["BannedBy"] = BannedBy()
        if hasattr(self, "comment"):
            result["Comment"] = str(self.comment)
        elif include_empty:
            result["Comment"] = str()
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = str()
        if hasattr(self, "enabled"):
            result["Enabled"] = bool(self.enabled)
        elif include_empty:
            result["Enabled"] = bool()
        if hasattr(self, "end_date"):
            result["EndDate"] = str(self.end_date)
        elif include_empty:
            result["EndDate"] = str()
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "reason"):
            result["Reason"] = str(self.reason)
        elif include_empty:
            result["Reason"] = str()
        if hasattr(self, "user_id"):
            result["UserId"] = str(self.user_id)
        elif include_empty:
            result["UserId"] = str()
        if hasattr(self, "disabled_date"):
            result["DisabledDate"] = str(self.disabled_date)
        elif include_empty:
            result["DisabledDate"] = str()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserBanResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Ban" in dict_ and dict_["Ban"] is not None:
            instance.ban = str(dict_["Ban"])
        elif include_empty:
            instance.ban = str()
        if "BanId" in dict_ and dict_["BanId"] is not None:
            instance.ban_id = str(dict_["BanId"])
        elif include_empty:
            instance.ban_id = str()
        if "BannedBy" in dict_ and dict_["BannedBy"] is not None:
            instance.banned_by = BannedBy.create_from_dict(dict_["BannedBy"], include_empty=include_empty)
        elif include_empty:
            instance.banned_by = BannedBy()
        if "Comment" in dict_ and dict_["Comment"] is not None:
            instance.comment = str(dict_["Comment"])
        elif include_empty:
            instance.comment = str()
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = str()
        if "Enabled" in dict_ and dict_["Enabled"] is not None:
            instance.enabled = bool(dict_["Enabled"])
        elif include_empty:
            instance.enabled = bool()
        if "EndDate" in dict_ and dict_["EndDate"] is not None:
            instance.end_date = str(dict_["EndDate"])
        elif include_empty:
            instance.end_date = str()
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "Reason" in dict_ and dict_["Reason"] is not None:
            instance.reason = str(dict_["Reason"])
        elif include_empty:
            instance.reason = str()
        if "UserId" in dict_ and dict_["UserId"] is not None:
            instance.user_id = str(dict_["UserId"])
        elif include_empty:
            instance.user_id = str()
        if "DisabledDate" in dict_ and dict_["DisabledDate"] is not None:
            instance.disabled_date = str(dict_["DisabledDate"])
        elif include_empty:
            instance.disabled_date = str()
        return instance

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

    # endregion static methods
