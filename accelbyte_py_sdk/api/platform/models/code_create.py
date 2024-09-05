# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class CodeCreate(Model):
    """A DTO object for creating codes API call. (CodeCreate)

    Properties:
        batch_name: (batchName) OPTIONAL str

        code_value: (codeValue) OPTIONAL str

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    batch_name: str  # OPTIONAL
    code_value: str  # OPTIONAL
    quantity: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_batch_name(self, value: str) -> CodeCreate:
        self.batch_name = value
        return self

    def with_code_value(self, value: str) -> CodeCreate:
        self.code_value = value
        return self

    def with_quantity(self, value: int) -> CodeCreate:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "batch_name"):
            result["batchName"] = str(self.batch_name)
        elif include_empty:
            result["batchName"] = ""
        if hasattr(self, "code_value"):
            result["codeValue"] = str(self.code_value)
        elif include_empty:
            result["codeValue"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        batch_name: Optional[str] = None,
        code_value: Optional[str] = None,
        quantity: Optional[int] = None,
        **kwargs,
    ) -> CodeCreate:
        instance = cls()
        if batch_name is not None:
            instance.batch_name = batch_name
        if code_value is not None:
            instance.code_value = code_value
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CodeCreate:
        instance = cls()
        if not dict_:
            return instance
        if "batchName" in dict_ and dict_["batchName"] is not None:
            instance.batch_name = str(dict_["batchName"])
        elif include_empty:
            instance.batch_name = ""
        if "codeValue" in dict_ and dict_["codeValue"] is not None:
            instance.code_value = str(dict_["codeValue"])
        elif include_empty:
            instance.code_value = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CodeCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CodeCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CodeCreate, List[CodeCreate], Dict[Any, CodeCreate]]:
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
            "batchName": "batch_name",
            "codeValue": "code_value",
            "quantity": "quantity",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "batchName": False,
            "codeValue": False,
            "quantity": False,
        }

    # endregion static methods
