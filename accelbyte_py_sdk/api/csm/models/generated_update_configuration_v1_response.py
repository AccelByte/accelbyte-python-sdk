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


class GeneratedUpdateConfigurationV1Response(Model):
    """Generated update configuration V1 response (generated.UpdateConfigurationV1Response)

    Properties:
        apply_mask: (applyMask) OPTIONAL bool

        config_id: (configId) OPTIONAL str

        config_name: (configName) OPTIONAL str

        description: (description) OPTIONAL str

        source: (source) OPTIONAL str

        value: (value) OPTIONAL str
    """

    # region fields

    apply_mask: bool  # OPTIONAL
    config_id: str  # OPTIONAL
    config_name: str  # OPTIONAL
    description: str  # OPTIONAL
    source: str  # OPTIONAL
    value: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_apply_mask(self, value: bool) -> GeneratedUpdateConfigurationV1Response:
        self.apply_mask = value
        return self

    def with_config_id(self, value: str) -> GeneratedUpdateConfigurationV1Response:
        self.config_id = value
        return self

    def with_config_name(self, value: str) -> GeneratedUpdateConfigurationV1Response:
        self.config_name = value
        return self

    def with_description(self, value: str) -> GeneratedUpdateConfigurationV1Response:
        self.description = value
        return self

    def with_source(self, value: str) -> GeneratedUpdateConfigurationV1Response:
        self.source = value
        return self

    def with_value(self, value: str) -> GeneratedUpdateConfigurationV1Response:
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
        if hasattr(self, "config_id"):
            result["configId"] = str(self.config_id)
        elif include_empty:
            result["configId"] = ""
        if hasattr(self, "config_name"):
            result["configName"] = str(self.config_name)
        elif include_empty:
            result["configName"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
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
        config_id: Optional[str] = None,
        config_name: Optional[str] = None,
        description: Optional[str] = None,
        source: Optional[str] = None,
        value: Optional[str] = None,
        **kwargs,
    ) -> GeneratedUpdateConfigurationV1Response:
        instance = cls()
        if apply_mask is not None:
            instance.apply_mask = apply_mask
        if config_id is not None:
            instance.config_id = config_id
        if config_name is not None:
            instance.config_name = config_name
        if description is not None:
            instance.description = description
        if source is not None:
            instance.source = source
        if value is not None:
            instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GeneratedUpdateConfigurationV1Response:
        instance = cls()
        if not dict_:
            return instance
        if "applyMask" in dict_ and dict_["applyMask"] is not None:
            instance.apply_mask = bool(dict_["applyMask"])
        elif include_empty:
            instance.apply_mask = False
        if "configId" in dict_ and dict_["configId"] is not None:
            instance.config_id = str(dict_["configId"])
        elif include_empty:
            instance.config_id = ""
        if "configName" in dict_ and dict_["configName"] is not None:
            instance.config_name = str(dict_["configName"])
        elif include_empty:
            instance.config_name = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GeneratedUpdateConfigurationV1Response]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GeneratedUpdateConfigurationV1Response]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GeneratedUpdateConfigurationV1Response,
        List[GeneratedUpdateConfigurationV1Response],
        Dict[Any, GeneratedUpdateConfigurationV1Response],
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
            "configId": "config_id",
            "configName": "config_name",
            "description": "description",
            "source": "source",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "applyMask": False,
            "configId": False,
            "configName": False,
            "description": False,
            "source": False,
            "value": False,
        }

    # endregion static methods
