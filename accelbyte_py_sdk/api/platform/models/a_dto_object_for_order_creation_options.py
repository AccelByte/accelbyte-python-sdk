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


class ADTOObjectForOrderCreationOptions(Model):
    """A DTO object for order creation options (A DTO object for order creation options)

    Properties:
        skip_price_validation: (skipPriceValidation) OPTIONAL bool
    """

    # region fields

    skip_price_validation: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_skip_price_validation(
        self, value: bool
    ) -> ADTOObjectForOrderCreationOptions:
        self.skip_price_validation = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "skip_price_validation"):
            result["skipPriceValidation"] = bool(self.skip_price_validation)
        elif include_empty:
            result["skipPriceValidation"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        skip_price_validation: Optional[bool] = None,
    ) -> ADTOObjectForOrderCreationOptions:
        instance = cls()
        if skip_price_validation is not None:
            instance.skip_price_validation = skip_price_validation
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ADTOObjectForOrderCreationOptions:
        instance = cls()
        if not dict_:
            return instance
        if "skipPriceValidation" in dict_ and dict_["skipPriceValidation"] is not None:
            instance.skip_price_validation = bool(dict_["skipPriceValidation"])
        elif include_empty:
            instance.skip_price_validation = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ADTOObjectForOrderCreationOptions]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ADTOObjectForOrderCreationOptions]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ADTOObjectForOrderCreationOptions,
        List[ADTOObjectForOrderCreationOptions],
        Dict[Any, ADTOObjectForOrderCreationOptions],
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
            "skipPriceValidation": "skip_price_validation",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "skipPriceValidation": False,
        }

    # endregion static methods
