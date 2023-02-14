# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Service (2.6.1)

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

from ..models.apimodels_configuration_template_response import (
    ApimodelsConfigurationTemplateResponse,
)
from ..models.apimodels_pagination import ApimodelsPagination


class ApimodelsConfigurationTemplatesResponse(Model):
    """Apimodels configuration templates response (apimodels.ConfigurationTemplatesResponse)

    Properties:
        data: (data) REQUIRED List[ApimodelsConfigurationTemplateResponse]

        paging: (paging) REQUIRED ApimodelsPagination
    """

    # region fields

    data: List[ApimodelsConfigurationTemplateResponse]  # REQUIRED
    paging: ApimodelsPagination  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(
        self, value: List[ApimodelsConfigurationTemplateResponse]
    ) -> ApimodelsConfigurationTemplatesResponse:
        self.data = value
        return self

    def with_paging(
        self, value: ApimodelsPagination
    ) -> ApimodelsConfigurationTemplatesResponse:
        self.paging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.data
            ]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = ApimodelsPagination()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: List[ApimodelsConfigurationTemplateResponse],
        paging: ApimodelsPagination,
    ) -> ApimodelsConfigurationTemplatesResponse:
        instance = cls()
        instance.data = data
        instance.paging = paging
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsConfigurationTemplatesResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [
                ApimodelsConfigurationTemplateResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["data"]
            ]
        elif include_empty:
            instance.data = []
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = ApimodelsPagination.create_from_dict(
                dict_["paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = ApimodelsPagination()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsConfigurationTemplatesResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsConfigurationTemplatesResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsConfigurationTemplatesResponse,
        List[ApimodelsConfigurationTemplatesResponse],
        Dict[Any, ApimodelsConfigurationTemplatesResponse],
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
            "data": "data",
            "paging": "paging",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": True,
            "paging": True,
        }

    # endregion static methods
