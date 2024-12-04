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


class GeneratedUpdateConfigurationV1Request(Model):
    """Generated update configuration V1 request (generated.UpdateConfigurationV1Request)

    Properties:
        apply_mask: (applyMask) OPTIONAL bool

        description: (description) OPTIONAL str

        value: (value) OPTIONAL str
    """

    # region fields

    apply_mask: bool  # OPTIONAL
    description: str  # OPTIONAL
    value: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_apply_mask(self, value: bool) -> GeneratedUpdateConfigurationV1Request:
        self.apply_mask = value
        return self

    def with_description(self, value: str) -> GeneratedUpdateConfigurationV1Request:
        self.description = value
        return self

    def with_value(self, value: str) -> GeneratedUpdateConfigurationV1Request:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "apply_mask"):
            result["applyMask"] = bool(self.apply_mask)
        elif include_empty:
            result["applyMask"] = False
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        apply_mask: Optional[bool] = None,
        description: Optional[str] = None,
        value: Optional[str] = None,
        **kwargs,
    ) -> GeneratedUpdateConfigurationV1Request:
        instance = cls()
        if apply_mask is not None:
            instance.apply_mask = apply_mask
        if description is not None:
            instance.description = description
        if value is not None:
            instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GeneratedUpdateConfigurationV1Request:
        instance = cls()
        if not dict_:
            return instance
        if "applyMask" in dict_ and dict_["applyMask"] is not None:
            instance.apply_mask = bool(dict_["applyMask"])
        elif include_empty:
            instance.apply_mask = False
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GeneratedUpdateConfigurationV1Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GeneratedUpdateConfigurationV1Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GeneratedUpdateConfigurationV1Request,
        List[GeneratedUpdateConfigurationV1Request],
        Dict[Any, GeneratedUpdateConfigurationV1Request],
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
            "applyMask": "apply_mask",
            "description": "description",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "applyMask": False,
            "description": False,
            "value": False,
        }

    # endregion static methods
