# justice-iam-service (5.0.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.model_input_validation_data_public import ModelInputValidationDataPublic


class ModelInputValidationsPublicResponse(Model):
    """Model input validations public response (model.InputValidationsPublicResponse)

    Properties:
        data: (data) REQUIRED List[ModelInputValidationDataPublic]

        version: (version) REQUIRED int
    """

    # region fields

    data: List[ModelInputValidationDataPublic]                                                     # REQUIRED
    version: int                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(self, value: List[ModelInputValidationDataPublic]) -> ModelInputValidationsPublicResponse:
        self.data = value
        return self

    def with_version(self, value: int) -> ModelInputValidationsPublicResponse:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [i0.to_dict(include_empty=include_empty) for i0 in self.data]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "version"):
            result["version"] = int(self.version)
        elif include_empty:
            result["version"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: List[ModelInputValidationDataPublic],
        version: int,
    ) -> ModelInputValidationsPublicResponse:
        instance = cls()
        instance.data = data
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelInputValidationsPublicResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [ModelInputValidationDataPublic.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["data"]]
        elif include_empty:
            instance.data = []
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "data": "data",
            "version": "version",
        }

    # endregion static methods
