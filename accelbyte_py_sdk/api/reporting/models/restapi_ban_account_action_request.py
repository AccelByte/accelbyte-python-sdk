# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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


class RestapiBanAccountActionRequest(Model):
    """Restapi ban account action request (restapi.BanAccountActionRequest)

    Properties:
        duration: (duration) REQUIRED int

        reason: (reason) REQUIRED str

        skip_notif: (skipNotif) REQUIRED bool

        type_: (type) REQUIRED str

        comment: (comment) OPTIONAL str
    """

    # region fields

    duration: int  # REQUIRED
    reason: str  # REQUIRED
    skip_notif: bool  # REQUIRED
    type_: str  # REQUIRED
    comment: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_duration(self, value: int) -> RestapiBanAccountActionRequest:
        self.duration = value
        return self

    def with_reason(self, value: str) -> RestapiBanAccountActionRequest:
        self.reason = value
        return self

    def with_skip_notif(self, value: bool) -> RestapiBanAccountActionRequest:
        self.skip_notif = value
        return self

    def with_type(self, value: str) -> RestapiBanAccountActionRequest:
        self.type_ = value
        return self

    def with_comment(self, value: str) -> RestapiBanAccountActionRequest:
        self.comment = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = 0
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "skip_notif"):
            result["skipNotif"] = bool(self.skip_notif)
        elif include_empty:
            result["skipNotif"] = False
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        duration: int,
        reason: str,
        skip_notif: bool,
        type_: str,
        comment: Optional[str] = None,
    ) -> RestapiBanAccountActionRequest:
        instance = cls()
        instance.duration = duration
        instance.reason = reason
        instance.skip_notif = skip_notif
        instance.type_ = type_
        if comment is not None:
            instance.comment = comment
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiBanAccountActionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = 0
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "skipNotif" in dict_ and dict_["skipNotif"] is not None:
            instance.skip_notif = bool(dict_["skipNotif"])
        elif include_empty:
            instance.skip_notif = False
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiBanAccountActionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiBanAccountActionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiBanAccountActionRequest,
        List[RestapiBanAccountActionRequest],
        Dict[Any, RestapiBanAccountActionRequest],
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
            "duration": "duration",
            "reason": "reason",
            "skipNotif": "skip_notif",
            "type": "type_",
            "comment": "comment",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "duration": True,
            "reason": True,
            "skipNotif": True,
            "type": True,
            "comment": False,
        }

    # endregion static methods
