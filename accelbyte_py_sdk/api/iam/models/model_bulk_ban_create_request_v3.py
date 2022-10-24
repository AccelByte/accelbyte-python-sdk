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


class ModelBulkBanCreateRequestV3(Model):
    """Model bulk ban create request V3 (model.BulkBanCreateRequestV3)

    Properties:
        ban: (ban) REQUIRED str

        comment: (comment) REQUIRED str

        end_date: (endDate) REQUIRED str

        reason: (reason) REQUIRED str

        skip_notif: (skipNotif) REQUIRED bool

        user_ids: (userIds) REQUIRED List[str]
    """

    # region fields

    ban: str  # REQUIRED
    comment: str  # REQUIRED
    end_date: str  # REQUIRED
    reason: str  # REQUIRED
    skip_notif: bool  # REQUIRED
    user_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> ModelBulkBanCreateRequestV3:
        self.ban = value
        return self

    def with_comment(self, value: str) -> ModelBulkBanCreateRequestV3:
        self.comment = value
        return self

    def with_end_date(self, value: str) -> ModelBulkBanCreateRequestV3:
        self.end_date = value
        return self

    def with_reason(self, value: str) -> ModelBulkBanCreateRequestV3:
        self.reason = value
        return self

    def with_skip_notif(self, value: bool) -> ModelBulkBanCreateRequestV3:
        self.skip_notif = value
        return self

    def with_user_ids(self, value: List[str]) -> ModelBulkBanCreateRequestV3:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = ""
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "skip_notif"):
            result["skipNotif"] = bool(self.skip_notif)
        elif include_empty:
            result["skipNotif"] = False
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        comment: str,
        end_date: str,
        reason: str,
        skip_notif: bool,
        user_ids: List[str],
    ) -> ModelBulkBanCreateRequestV3:
        instance = cls()
        instance.ban = ban
        instance.comment = comment
        instance.end_date = end_date
        instance.reason = reason
        instance.skip_notif = skip_notif
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelBulkBanCreateRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = ""
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "skipNotif" in dict_ and dict_["skipNotif"] is not None:
            instance.skip_notif = bool(dict_["skipNotif"])
        elif include_empty:
            instance.skip_notif = False
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelBulkBanCreateRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelBulkBanCreateRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelBulkBanCreateRequestV3,
        List[ModelBulkBanCreateRequestV3],
        Dict[Any, ModelBulkBanCreateRequestV3],
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
            "comment": "comment",
            "endDate": "end_date",
            "reason": "reason",
            "skipNotif": "skip_notif",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ban": True,
            "comment": True,
            "endDate": True,
            "reason": True,
            "skipNotif": True,
            "userIds": True,
        }

    # endregion static methods
