# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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

from ..models.model_validation_detail_public import ModelValidationDetailPublic


class ModelInputValidationDataPublic(Model):
    """Model input validation data public (model.InputValidationDataPublic)

    Properties:
        field: (field) REQUIRED str

        validation: (validation) REQUIRED ModelValidationDetailPublic
    """

    # region fields

    field: str  # REQUIRED
    validation: ModelValidationDetailPublic  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_field(self, value: str) -> ModelInputValidationDataPublic:
        self.field = value
        return self

    def with_validation(
        self, value: ModelValidationDetailPublic
    ) -> ModelInputValidationDataPublic:
        self.validation = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "field"):
            result["field"] = str(self.field)
        elif include_empty:
            result["field"] = ""
        if hasattr(self, "validation"):
            result["validation"] = self.validation.to_dict(include_empty=include_empty)
        elif include_empty:
            result["validation"] = ModelValidationDetailPublic()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        field: str,
        validation: ModelValidationDetailPublic,
    ) -> ModelInputValidationDataPublic:
        instance = cls()
        instance.field = field
        instance.validation = validation
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelInputValidationDataPublic:
        instance = cls()
        if not dict_:
            return instance
        if "field" in dict_ and dict_["field"] is not None:
            instance.field = str(dict_["field"])
        elif include_empty:
            instance.field = ""
        if "validation" in dict_ and dict_["validation"] is not None:
            instance.validation = ModelValidationDetailPublic.create_from_dict(
                dict_["validation"], include_empty=include_empty
            )
        elif include_empty:
            instance.validation = ModelValidationDetailPublic()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelInputValidationDataPublic]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelInputValidationDataPublic]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelInputValidationDataPublic,
        List[ModelInputValidationDataPublic],
        Dict[Any, ModelInputValidationDataPublic],
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
            "field": "field",
            "validation": "validation",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "field": True,
            "validation": True,
        }

    # endregion static methods
