# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Social Service (1.30.1)

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


class UserSlotConfigInfo(Model):
    """User slot config info (UserSlotConfigInfo)

    Properties:
        max_slot_size: (maxSlotSize) OPTIONAL int

        max_slots: (maxSlots) OPTIONAL int

        namespace: (namespace) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    max_slot_size: int  # OPTIONAL
    max_slots: int  # OPTIONAL
    namespace: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_max_slot_size(self, value: int) -> UserSlotConfigInfo:
        self.max_slot_size = value
        return self

    def with_max_slots(self, value: int) -> UserSlotConfigInfo:
        self.max_slots = value
        return self

    def with_namespace(self, value: str) -> UserSlotConfigInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> UserSlotConfigInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_slot_size"):
            result["maxSlotSize"] = int(self.max_slot_size)
        elif include_empty:
            result["maxSlotSize"] = 0
        if hasattr(self, "max_slots"):
            result["maxSlots"] = int(self.max_slots)
        elif include_empty:
            result["maxSlots"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        max_slot_size: Optional[int] = None,
        max_slots: Optional[int] = None,
        namespace: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> UserSlotConfigInfo:
        instance = cls()
        if max_slot_size is not None:
            instance.max_slot_size = max_slot_size
        if max_slots is not None:
            instance.max_slots = max_slots
        if namespace is not None:
            instance.namespace = namespace
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserSlotConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "maxSlotSize" in dict_ and dict_["maxSlotSize"] is not None:
            instance.max_slot_size = int(dict_["maxSlotSize"])
        elif include_empty:
            instance.max_slot_size = 0
        if "maxSlots" in dict_ and dict_["maxSlots"] is not None:
            instance.max_slots = int(dict_["maxSlots"])
        elif include_empty:
            instance.max_slots = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserSlotConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserSlotConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UserSlotConfigInfo, List[UserSlotConfigInfo], Dict[Any, UserSlotConfigInfo]
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
            "maxSlotSize": "max_slot_size",
            "maxSlots": "max_slots",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxSlotSize": False,
            "maxSlots": False,
            "namespace": False,
            "userId": False,
        }

    # endregion static methods
