# Auto-generated at 2021-10-21T08:52:28.342437+08:00
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


class SlotMetadataUpdate(Model):
    """Slot metadata update (SlotMetadataUpdate)

    Properties:
        label: (label) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        custom_attribute: (customAttribute) OPTIONAL str
    """

    # region fields

    label: str                                                                                     # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    custom_attribute: str                                                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_label(self, value: str) -> SlotMetadataUpdate:
        self.label = value
        return self

    def with_tags(self, value: List[str]) -> SlotMetadataUpdate:
        self.tags = value
        return self

    def with_custom_attribute(self, value: str) -> SlotMetadataUpdate:
        self.custom_attribute = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "label") and self.label:
            result["label"] = str(self.label)
        elif include_empty:
            result["label"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "custom_attribute") and self.custom_attribute:
            result["customAttribute"] = str(self.custom_attribute)
        elif include_empty:
            result["customAttribute"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        label: Optional[str] = None,
        tags: Optional[List[str]] = None,
        custom_attribute: Optional[str] = None,
    ) -> SlotMetadataUpdate:
        instance = cls()
        if label is not None:
            instance.label = label
        if tags is not None:
            instance.tags = tags
        if custom_attribute is not None:
            instance.custom_attribute = custom_attribute
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SlotMetadataUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "label" in dict_ and dict_["label"] is not None:
            instance.label = str(dict_["label"])
        elif include_empty:
            instance.label = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "customAttribute" in dict_ and dict_["customAttribute"] is not None:
            instance.custom_attribute = str(dict_["customAttribute"])
        elif include_empty:
            instance.custom_attribute = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "label": "label",
            "tags": "tags",
            "customAttribute": "custom_attribute",
        }

    # endregion static methods
