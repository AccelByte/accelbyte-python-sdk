# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ModelsMessageStats(Model):
    """Models message stats (models.MessageStats)

    Properties:
        id_: (id) REQUIRED str

        message_read: (messageRead) REQUIRED int

        message_stored: (messageStored) REQUIRED int

        notification_sent: (notificationSent) REQUIRED int
    """

    # region fields

    id_: str  # REQUIRED
    message_read: int  # REQUIRED
    message_stored: int  # REQUIRED
    notification_sent: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsMessageStats:
        self.id_ = value
        return self

    def with_message_read(self, value: int) -> ModelsMessageStats:
        self.message_read = value
        return self

    def with_message_stored(self, value: int) -> ModelsMessageStats:
        self.message_stored = value
        return self

    def with_notification_sent(self, value: int) -> ModelsMessageStats:
        self.notification_sent = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "message_read"):
            result["messageRead"] = int(self.message_read)
        elif include_empty:
            result["messageRead"] = 0
        if hasattr(self, "message_stored"):
            result["messageStored"] = int(self.message_stored)
        elif include_empty:
            result["messageStored"] = 0
        if hasattr(self, "notification_sent"):
            result["notificationSent"] = int(self.notification_sent)
        elif include_empty:
            result["notificationSent"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        message_read: int,
        message_stored: int,
        notification_sent: int,
        **kwargs,
    ) -> ModelsMessageStats:
        instance = cls()
        instance.id_ = id_
        instance.message_read = message_read
        instance.message_stored = message_stored
        instance.notification_sent = notification_sent
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMessageStats:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "messageRead" in dict_ and dict_["messageRead"] is not None:
            instance.message_read = int(dict_["messageRead"])
        elif include_empty:
            instance.message_read = 0
        if "messageStored" in dict_ and dict_["messageStored"] is not None:
            instance.message_stored = int(dict_["messageStored"])
        elif include_empty:
            instance.message_stored = 0
        if "notificationSent" in dict_ and dict_["notificationSent"] is not None:
            instance.notification_sent = int(dict_["notificationSent"])
        elif include_empty:
            instance.notification_sent = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMessageStats]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMessageStats]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMessageStats, List[ModelsMessageStats], Dict[Any, ModelsMessageStats]
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
            "id": "id_",
            "messageRead": "message_read",
            "messageStored": "message_stored",
            "notificationSent": "notification_sent",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "messageRead": True,
            "messageStored": True,
            "notificationSent": True,
        }

    # endregion static methods
