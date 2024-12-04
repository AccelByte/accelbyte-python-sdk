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


class ApimodelUpdateConfigurationV2Request(Model):
    """Apimodel update configuration V2 request (apimodel.UpdateConfigurationV2Request)

    Properties:
        value: (value) REQUIRED str

        apply_mask: (applyMask) OPTIONAL bool

        description: (description) OPTIONAL str
    """

    # region fields

    value: str  # REQUIRED
    apply_mask: bool  # OPTIONAL
    description: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_value(self, value: str) -> ApimodelUpdateConfigurationV2Request:
        self.value = value
        return self

    def with_apply_mask(self, value: bool) -> ApimodelUpdateConfigurationV2Request:
        self.apply_mask = value
        return self

    def with_description(self, value: str) -> ApimodelUpdateConfigurationV2Request:
        self.description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        if hasattr(self, "apply_mask"):
            result["applyMask"] = bool(self.apply_mask)
        elif include_empty:
            result["applyMask"] = False
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        value: str,
        apply_mask: Optional[bool] = None,
        description: Optional[str] = None,
        **kwargs,
    ) -> ApimodelUpdateConfigurationV2Request:
        instance = cls()
        instance.value = value
        if apply_mask is not None:
            instance.apply_mask = apply_mask
        if description is not None:
            instance.description = description
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelUpdateConfigurationV2Request:
        instance = cls()
        if not dict_:
            return instance
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        if "applyMask" in dict_ and dict_["applyMask"] is not None:
            instance.apply_mask = bool(dict_["applyMask"])
        elif include_empty:
            instance.apply_mask = False
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelUpdateConfigurationV2Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelUpdateConfigurationV2Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelUpdateConfigurationV2Request,
        List[ApimodelUpdateConfigurationV2Request],
        Dict[Any, ApimodelUpdateConfigurationV2Request],
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
            "value": "value",
            "applyMask": "apply_mask",
            "description": "description",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "value": True,
            "applyMask": False,
            "description": False,
        }

    # endregion static methods
