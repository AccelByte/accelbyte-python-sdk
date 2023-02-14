# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class XsollaConfig(Model):
    """A DTO object for updating xsolla config. (XsollaConfig)

    Properties:
        api_key: (apiKey) OPTIONAL str

        flow_completion_url: (flowCompletionUrl) OPTIONAL str

        merchant_id: (merchantId) OPTIONAL int

        project_id: (projectId) OPTIONAL int

        project_secret_key: (projectSecretKey) OPTIONAL str
    """

    # region fields

    api_key: str  # OPTIONAL
    flow_completion_url: str  # OPTIONAL
    merchant_id: int  # OPTIONAL
    project_id: int  # OPTIONAL
    project_secret_key: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_api_key(self, value: str) -> XsollaConfig:
        self.api_key = value
        return self

    def with_flow_completion_url(self, value: str) -> XsollaConfig:
        self.flow_completion_url = value
        return self

    def with_merchant_id(self, value: int) -> XsollaConfig:
        self.merchant_id = value
        return self

    def with_project_id(self, value: int) -> XsollaConfig:
        self.project_id = value
        return self

    def with_project_secret_key(self, value: str) -> XsollaConfig:
        self.project_secret_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "api_key"):
            result["apiKey"] = str(self.api_key)
        elif include_empty:
            result["apiKey"] = ""
        if hasattr(self, "flow_completion_url"):
            result["flowCompletionUrl"] = str(self.flow_completion_url)
        elif include_empty:
            result["flowCompletionUrl"] = ""
        if hasattr(self, "merchant_id"):
            result["merchantId"] = int(self.merchant_id)
        elif include_empty:
            result["merchantId"] = 0
        if hasattr(self, "project_id"):
            result["projectId"] = int(self.project_id)
        elif include_empty:
            result["projectId"] = 0
        if hasattr(self, "project_secret_key"):
            result["projectSecretKey"] = str(self.project_secret_key)
        elif include_empty:
            result["projectSecretKey"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        api_key: Optional[str] = None,
        flow_completion_url: Optional[str] = None,
        merchant_id: Optional[int] = None,
        project_id: Optional[int] = None,
        project_secret_key: Optional[str] = None,
    ) -> XsollaConfig:
        instance = cls()
        if api_key is not None:
            instance.api_key = api_key
        if flow_completion_url is not None:
            instance.flow_completion_url = flow_completion_url
        if merchant_id is not None:
            instance.merchant_id = merchant_id
        if project_id is not None:
            instance.project_id = project_id
        if project_secret_key is not None:
            instance.project_secret_key = project_secret_key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> XsollaConfig:
        instance = cls()
        if not dict_:
            return instance
        if "apiKey" in dict_ and dict_["apiKey"] is not None:
            instance.api_key = str(dict_["apiKey"])
        elif include_empty:
            instance.api_key = ""
        if "flowCompletionUrl" in dict_ and dict_["flowCompletionUrl"] is not None:
            instance.flow_completion_url = str(dict_["flowCompletionUrl"])
        elif include_empty:
            instance.flow_completion_url = ""
        if "merchantId" in dict_ and dict_["merchantId"] is not None:
            instance.merchant_id = int(dict_["merchantId"])
        elif include_empty:
            instance.merchant_id = 0
        if "projectId" in dict_ and dict_["projectId"] is not None:
            instance.project_id = int(dict_["projectId"])
        elif include_empty:
            instance.project_id = 0
        if "projectSecretKey" in dict_ and dict_["projectSecretKey"] is not None:
            instance.project_secret_key = str(dict_["projectSecretKey"])
        elif include_empty:
            instance.project_secret_key = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XsollaConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XsollaConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[XsollaConfig, List[XsollaConfig], Dict[Any, XsollaConfig]]:
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
            "apiKey": "api_key",
            "flowCompletionUrl": "flow_completion_url",
            "merchantId": "merchant_id",
            "projectId": "project_id",
            "projectSecretKey": "project_secret_key",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "apiKey": False,
            "flowCompletionUrl": False,
            "merchantId": False,
            "projectId": False,
            "projectSecretKey": False,
        }

    # endregion static methods
