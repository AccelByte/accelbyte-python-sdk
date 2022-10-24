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


class ModelBackupCodesResponseV4(Model):
    """Model backup codes response V4 (model.BackupCodesResponseV4)

    Properties:
        generated_at: (generatedAt) REQUIRED int

        valid_codes: (validCodes) REQUIRED List[str]

        invalid_codes: (invalidCodes) OPTIONAL List[str]
    """

    # region fields

    generated_at: int  # REQUIRED
    valid_codes: List[str]  # REQUIRED
    invalid_codes: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_generated_at(self, value: int) -> ModelBackupCodesResponseV4:
        self.generated_at = value
        return self

    def with_valid_codes(self, value: List[str]) -> ModelBackupCodesResponseV4:
        self.valid_codes = value
        return self

    def with_invalid_codes(self, value: List[str]) -> ModelBackupCodesResponseV4:
        self.invalid_codes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "generated_at"):
            result["generatedAt"] = int(self.generated_at)
        elif include_empty:
            result["generatedAt"] = 0
        if hasattr(self, "valid_codes"):
            result["validCodes"] = [str(i0) for i0 in self.valid_codes]
        elif include_empty:
            result["validCodes"] = []
        if hasattr(self, "invalid_codes"):
            result["invalidCodes"] = [str(i0) for i0 in self.invalid_codes]
        elif include_empty:
            result["invalidCodes"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        generated_at: int,
        valid_codes: List[str],
        invalid_codes: Optional[List[str]] = None,
    ) -> ModelBackupCodesResponseV4:
        instance = cls()
        instance.generated_at = generated_at
        instance.valid_codes = valid_codes
        if invalid_codes is not None:
            instance.invalid_codes = invalid_codes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelBackupCodesResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "generatedAt" in dict_ and dict_["generatedAt"] is not None:
            instance.generated_at = int(dict_["generatedAt"])
        elif include_empty:
            instance.generated_at = 0
        if "validCodes" in dict_ and dict_["validCodes"] is not None:
            instance.valid_codes = [str(i0) for i0 in dict_["validCodes"]]
        elif include_empty:
            instance.valid_codes = []
        if "invalidCodes" in dict_ and dict_["invalidCodes"] is not None:
            instance.invalid_codes = [str(i0) for i0 in dict_["invalidCodes"]]
        elif include_empty:
            instance.invalid_codes = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelBackupCodesResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelBackupCodesResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelBackupCodesResponseV4,
        List[ModelBackupCodesResponseV4],
        Dict[Any, ModelBackupCodesResponseV4],
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
            "generatedAt": "generated_at",
            "validCodes": "valid_codes",
            "invalidCodes": "invalid_codes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "generatedAt": True,
            "validCodes": True,
            "invalidCodes": False,
        }

    # endregion static methods
