# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (3.10.1)

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

from ..models.models_patch_image_record import ModelsPatchImageRecord


class ModelsGetImagePatchDetailResponse(Model):
    """Models get image patch detail response (models.GetImagePatchDetailResponse)

    Properties:
        data: (data) REQUIRED ModelsPatchImageRecord
    """

    # region fields

    data: ModelsPatchImageRecord  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(
        self, value: ModelsPatchImageRecord
    ) -> ModelsGetImagePatchDetailResponse:
        self.data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = self.data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["data"] = ModelsPatchImageRecord()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: ModelsPatchImageRecord,
    ) -> ModelsGetImagePatchDetailResponse:
        instance = cls()
        instance.data = data
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetImagePatchDetailResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = ModelsPatchImageRecord.create_from_dict(
                dict_["data"], include_empty=include_empty
            )
        elif include_empty:
            instance.data = ModelsPatchImageRecord()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetImagePatchDetailResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetImagePatchDetailResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetImagePatchDetailResponse,
        List[ModelsGetImagePatchDetailResponse],
        Dict[Any, ModelsGetImagePatchDetailResponse],
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": True,
        }

    # endregion static methods
