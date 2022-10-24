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

from ..models.accountcommon_banned_by_v3 import AccountcommonBannedByV3


class ModelUserBanResponseV3(Model):
    """Model user ban response V3 (model.UserBanResponseV3)

    Properties:
        ban: (ban) REQUIRED str

        ban_id: (banId) REQUIRED str

        banned_by: (bannedBy) REQUIRED AccountcommonBannedByV3

        comment: (comment) REQUIRED str

        created_at: (createdAt) REQUIRED str

        disabled_date: (disabledDate) REQUIRED str

        enabled: (enabled) REQUIRED bool

        end_date: (endDate) REQUIRED str

        namespace: (namespace) REQUIRED str

        reason: (reason) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    ban: str  # REQUIRED
    ban_id: str  # REQUIRED
    banned_by: AccountcommonBannedByV3  # REQUIRED
    comment: str  # REQUIRED
    created_at: str  # REQUIRED
    disabled_date: str  # REQUIRED
    enabled: bool  # REQUIRED
    end_date: str  # REQUIRED
    namespace: str  # REQUIRED
    reason: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> ModelUserBanResponseV3:
        self.ban = value
        return self

    def with_ban_id(self, value: str) -> ModelUserBanResponseV3:
        self.ban_id = value
        return self

    def with_banned_by(self, value: AccountcommonBannedByV3) -> ModelUserBanResponseV3:
        self.banned_by = value
        return self

    def with_comment(self, value: str) -> ModelUserBanResponseV3:
        self.comment = value
        return self

    def with_created_at(self, value: str) -> ModelUserBanResponseV3:
        self.created_at = value
        return self

    def with_disabled_date(self, value: str) -> ModelUserBanResponseV3:
        self.disabled_date = value
        return self

    def with_enabled(self, value: bool) -> ModelUserBanResponseV3:
        self.enabled = value
        return self

    def with_end_date(self, value: str) -> ModelUserBanResponseV3:
        self.end_date = value
        return self

    def with_namespace(self, value: str) -> ModelUserBanResponseV3:
        self.namespace = value
        return self

    def with_reason(self, value: str) -> ModelUserBanResponseV3:
        self.reason = value
        return self

    def with_user_id(self, value: str) -> ModelUserBanResponseV3:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = ""
        if hasattr(self, "ban_id"):
            result["banId"] = str(self.ban_id)
        elif include_empty:
            result["banId"] = ""
        if hasattr(self, "banned_by"):
            result["bannedBy"] = self.banned_by.to_dict(include_empty=include_empty)
        elif include_empty:
            result["bannedBy"] = AccountcommonBannedByV3()
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "disabled_date"):
            result["disabledDate"] = str(self.disabled_date)
        elif include_empty:
            result["disabledDate"] = ""
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        ban_id: str,
        banned_by: AccountcommonBannedByV3,
        comment: str,
        created_at: str,
        disabled_date: str,
        enabled: bool,
        end_date: str,
        namespace: str,
        reason: str,
        user_id: str,
    ) -> ModelUserBanResponseV3:
        instance = cls()
        instance.ban = ban
        instance.ban_id = ban_id
        instance.banned_by = banned_by
        instance.comment = comment
        instance.created_at = created_at
        instance.disabled_date = disabled_date
        instance.enabled = enabled
        instance.end_date = end_date
        instance.namespace = namespace
        instance.reason = reason
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserBanResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = ""
        if "banId" in dict_ and dict_["banId"] is not None:
            instance.ban_id = str(dict_["banId"])
        elif include_empty:
            instance.ban_id = ""
        if "bannedBy" in dict_ and dict_["bannedBy"] is not None:
            instance.banned_by = AccountcommonBannedByV3.create_from_dict(
                dict_["bannedBy"], include_empty=include_empty
            )
        elif include_empty:
            instance.banned_by = AccountcommonBannedByV3()
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "disabledDate" in dict_ and dict_["disabledDate"] is not None:
            instance.disabled_date = str(dict_["disabledDate"])
        elif include_empty:
            instance.disabled_date = ""
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserBanResponseV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserBanResponseV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserBanResponseV3,
        List[ModelUserBanResponseV3],
        Dict[Any, ModelUserBanResponseV3],
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
            "ban": "ban",
            "banId": "ban_id",
            "bannedBy": "banned_by",
            "comment": "comment",
            "createdAt": "created_at",
            "disabledDate": "disabled_date",
            "enabled": "enabled",
            "endDate": "end_date",
            "namespace": "namespace",
            "reason": "reason",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ban": True,
            "banId": True,
            "bannedBy": True,
            "comment": True,
            "createdAt": True,
            "disabledDate": True,
            "enabled": True,
            "endDate": True,
            "namespace": True,
            "reason": True,
            "userId": True,
        }

    # endregion static methods
