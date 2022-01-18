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

from ..models.validation import Validation


class ModelInputValidationUpdatePayload(Model):
    """Model input validation update payload (model.InputValidationUpdatePayload)

    Properties:
        field: (field) REQUIRED str

        validation: (validation) REQUIRED Validation
    """

    # region fields

    field: str                                                                                     # REQUIRED
    validation: Validation                                                                         # REQUIRED

    # endregion fields

    # region with_x methods

    def with_field(self, value: str) -> ModelInputValidationUpdatePayload:
        self.field = value
        return self

    def with_validation(self, value: Validation) -> ModelInputValidationUpdatePayload:
        self.validation = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "field"):
            result["field"] = str(self.field)
        elif include_empty:
            result["field"] = str()
        if hasattr(self, "validation"):
            result["validation"] = self.validation.to_dict(include_empty=include_empty)
        elif include_empty:
            result["validation"] = Validation()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        field: str,
        validation: Validation,
    ) -> ModelInputValidationUpdatePayload:
        instance = cls()
        instance.field = field
        instance.validation = validation
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelInputValidationUpdatePayload:
        instance = cls()
        if not dict_:
            return instance
        if "field" in dict_ and dict_["field"] is not None:
            instance.field = str(dict_["field"])
        elif include_empty:
            instance.field = str()
        if "validation" in dict_ and dict_["validation"] is not None:
            instance.validation = Validation.create_from_dict(dict_["validation"], include_empty=include_empty)
        elif include_empty:
            instance.validation = Validation()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "field": "field",
            "validation": "validation",
        }

    # endregion static methods
