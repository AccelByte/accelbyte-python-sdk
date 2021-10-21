# Auto-generated at 2021-10-21T08:52:28.335658+08:00
# from: Justice social Service (1.18.1)

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


class NamespaceSlotConfigInfo(Model):
    """Namespace slot config info (NamespaceSlotConfigInfo)

    Properties:
        namespace: (namespace) OPTIONAL str

        max_slots: (maxSlots) OPTIONAL int

        max_slot_size: (maxSlotSize) OPTIONAL int
    """

    # region fields

    namespace: str                                                                                 # OPTIONAL
    max_slots: int                                                                                 # OPTIONAL
    max_slot_size: int                                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> NamespaceSlotConfigInfo:
        self.namespace = value
        return self

    def with_max_slots(self, value: int) -> NamespaceSlotConfigInfo:
        self.max_slots = value
        return self

    def with_max_slot_size(self, value: int) -> NamespaceSlotConfigInfo:
        self.max_slot_size = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "max_slots") and self.max_slots:
            result["maxSlots"] = int(self.max_slots)
        elif include_empty:
            result["maxSlots"] = int()
        if hasattr(self, "max_slot_size") and self.max_slot_size:
            result["maxSlotSize"] = int(self.max_slot_size)
        elif include_empty:
            result["maxSlotSize"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: Optional[str] = None,
        max_slots: Optional[int] = None,
        max_slot_size: Optional[int] = None,
    ) -> NamespaceSlotConfigInfo:
        instance = cls()
        if namespace is not None:
            instance.namespace = namespace
        if max_slots is not None:
            instance.max_slots = max_slots
        if max_slot_size is not None:
            instance.max_slot_size = max_slot_size
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> NamespaceSlotConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "maxSlots" in dict_ and dict_["maxSlots"] is not None:
            instance.max_slots = int(dict_["maxSlots"])
        elif include_empty:
            instance.max_slots = int()
        if "maxSlotSize" in dict_ and dict_["maxSlotSize"] is not None:
            instance.max_slot_size = int(dict_["maxSlotSize"])
        elif include_empty:
            instance.max_slot_size = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "maxSlots": "max_slots",
            "maxSlotSize": "max_slot_size",
        }

    # endregion static methods
