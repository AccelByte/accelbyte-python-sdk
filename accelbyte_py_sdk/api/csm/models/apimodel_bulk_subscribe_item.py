# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelBulkSubscribeItem(Model):
    """Apimodel bulk subscribe item (apimodel.BulkSubscribeItem)

    Properties:
        notification_type: (notificationType) REQUIRED Dict[str, bool]

        user_id: (userId) REQUIRED str
    """

    # region fields

    notification_type: Dict[str, bool]  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_notification_type(
        self, value: Dict[str, bool]
    ) -> ApimodelBulkSubscribeItem:
        self.notification_type = value
        return self

    def with_user_id(self, value: str) -> ApimodelBulkSubscribeItem:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "notification_type"):
            result["notificationType"] = {
                str(k0): bool(v0) for k0, v0 in self.notification_type.items()
            }
        elif include_empty:
            result["notificationType"] = {}
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, notification_type: Dict[str, bool], user_id: str, **kwargs
    ) -> ApimodelBulkSubscribeItem:
        instance = cls()
        instance.notification_type = notification_type
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelBulkSubscribeItem:
        instance = cls()
        if not dict_:
            return instance
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = {
                str(k0): bool(v0) for k0, v0 in dict_["notificationType"].items()
            }
        elif include_empty:
            instance.notification_type = {}
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelBulkSubscribeItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelBulkSubscribeItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelBulkSubscribeItem,
        List[ApimodelBulkSubscribeItem],
        Dict[Any, ApimodelBulkSubscribeItem],
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
            "notificationType": "notification_type",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "notificationType": True,
            "userId": True,
        }

    # endregion static methods
