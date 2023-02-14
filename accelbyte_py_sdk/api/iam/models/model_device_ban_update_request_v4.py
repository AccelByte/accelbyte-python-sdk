# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelDeviceBanUpdateRequestV4(Model):
    """Model device ban update request V4 (model.DeviceBanUpdateRequestV4)

    Properties:
        enabled: (enabled) REQUIRED bool
    """

    # region fields

    enabled: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_enabled(self, value: bool) -> ModelDeviceBanUpdateRequestV4:
        self.enabled = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enabled: bool,
    ) -> ModelDeviceBanUpdateRequestV4:
        instance = cls()
        instance.enabled = enabled
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceBanUpdateRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceBanUpdateRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceBanUpdateRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceBanUpdateRequestV4,
        List[ModelDeviceBanUpdateRequestV4],
        Dict[Any, ModelDeviceBanUpdateRequestV4],
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
            "enabled": "enabled",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enabled": True,
        }

    # endregion static methods
