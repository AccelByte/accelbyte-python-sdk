# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Gdpr Service (1.19.0)

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

from ..models.models_deletion_data import ModelsDeletionData
from ..models.models_pagination import ModelsPagination


class ModelsListDeletionDataResponse(Model):
    """Models list deletion data response (models.ListDeletionDataResponse)

    Properties:
        data: (Data) REQUIRED List[ModelsDeletionData]

        paging: (Paging) REQUIRED ModelsPagination
    """

    # region fields

    data: List[ModelsDeletionData]  # REQUIRED
    paging: ModelsPagination  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(
        self, value: List[ModelsDeletionData]
    ) -> ModelsListDeletionDataResponse:
        self.data = value
        return self

    def with_paging(self, value: ModelsPagination) -> ModelsListDeletionDataResponse:
        self.paging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["Data"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.data
            ]
        elif include_empty:
            result["Data"] = []
        if hasattr(self, "paging"):
            result["Paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["Paging"] = ModelsPagination()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: List[ModelsDeletionData],
        paging: ModelsPagination,
    ) -> ModelsListDeletionDataResponse:
        instance = cls()
        instance.data = data
        instance.paging = paging
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsListDeletionDataResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Data" in dict_ and dict_["Data"] is not None:
            instance.data = [
                ModelsDeletionData.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Data"]
            ]
        elif include_empty:
            instance.data = []
        if "Paging" in dict_ and dict_["Paging"] is not None:
            instance.paging = ModelsPagination.create_from_dict(
                dict_["Paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = ModelsPagination()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsListDeletionDataResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsListDeletionDataResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsListDeletionDataResponse,
        List[ModelsListDeletionDataResponse],
        Dict[Any, ModelsListDeletionDataResponse],
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
            "Data": "data",
            "Paging": "paging",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Data": True,
            "Paging": True,
        }

    # endregion static methods
