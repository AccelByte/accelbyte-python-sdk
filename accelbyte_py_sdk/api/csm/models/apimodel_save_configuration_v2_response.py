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


class ApimodelSaveConfigurationV2Response(Model):
    """Apimodel save configuration V2 response (apimodel.SaveConfigurationV2Response)

    Properties:
        config_id: (configId) REQUIRED str

        config_name: (configName) REQUIRED str
    """

    # region fields

    config_id: str  # REQUIRED
    config_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_config_id(self, value: str) -> ApimodelSaveConfigurationV2Response:
        self.config_id = value
        return self

    def with_config_name(self, value: str) -> ApimodelSaveConfigurationV2Response:
        self.config_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "config_id"):
            result["configId"] = str(self.config_id)
        elif include_empty:
            result["configId"] = ""
        if hasattr(self, "config_name"):
            result["configName"] = str(self.config_name)
        elif include_empty:
            result["configName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, config_id: str, config_name: str, **kwargs
    ) -> ApimodelSaveConfigurationV2Response:
        instance = cls()
        instance.config_id = config_id
        instance.config_name = config_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelSaveConfigurationV2Response:
        instance = cls()
        if not dict_:
            return instance
        if "configId" in dict_ and dict_["configId"] is not None:
            instance.config_id = str(dict_["configId"])
        elif include_empty:
            instance.config_id = ""
        if "configName" in dict_ and dict_["configName"] is not None:
            instance.config_name = str(dict_["configName"])
        elif include_empty:
            instance.config_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelSaveConfigurationV2Response]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelSaveConfigurationV2Response]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelSaveConfigurationV2Response,
        List[ApimodelSaveConfigurationV2Response],
        Dict[Any, ApimodelSaveConfigurationV2Response],
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
            "configId": "config_id",
            "configName": "config_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "configId": True,
            "configName": True,
        }

    # endregion static methods
