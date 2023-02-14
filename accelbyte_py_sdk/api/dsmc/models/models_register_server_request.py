# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

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


class ModelsRegisterServerRequest(Model):
    """Models register server request (models.RegisterServerRequest)

    Properties:
        custom_attribute: (custom_attribute) REQUIRED str

        pod_name: (pod_name) REQUIRED str
    """

    # region fields

    custom_attribute: str  # REQUIRED
    pod_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_custom_attribute(self, value: str) -> ModelsRegisterServerRequest:
        self.custom_attribute = value
        return self

    def with_pod_name(self, value: str) -> ModelsRegisterServerRequest:
        self.pod_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_attribute"):
            result["custom_attribute"] = str(self.custom_attribute)
        elif include_empty:
            result["custom_attribute"] = ""
        if hasattr(self, "pod_name"):
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_attribute: str,
        pod_name: str,
    ) -> ModelsRegisterServerRequest:
        instance = cls()
        instance.custom_attribute = custom_attribute
        instance.pod_name = pod_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsRegisterServerRequest:
        instance = cls()
        if not dict_:
            return instance
        if "custom_attribute" in dict_ and dict_["custom_attribute"] is not None:
            instance.custom_attribute = str(dict_["custom_attribute"])
        elif include_empty:
            instance.custom_attribute = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsRegisterServerRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsRegisterServerRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsRegisterServerRequest,
        List[ModelsRegisterServerRequest],
        Dict[Any, ModelsRegisterServerRequest],
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
            "custom_attribute": "custom_attribute",
            "pod_name": "pod_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "custom_attribute": True,
            "pod_name": True,
        }

    # endregion static methods
