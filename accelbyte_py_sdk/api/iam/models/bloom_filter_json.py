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


class BloomFilterJSON(Model):
    """Bloom filter JSON (bloom.FilterJSON)

    Properties:
        bits: (bits) REQUIRED List[int]

        k: (k) REQUIRED int

        m: (m) REQUIRED int
    """

    # region fields

    bits: List[int]  # REQUIRED
    k: int  # REQUIRED
    m: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_bits(self, value: List[int]) -> BloomFilterJSON:
        self.bits = value
        return self

    def with_k(self, value: int) -> BloomFilterJSON:
        self.k = value
        return self

    def with_m(self, value: int) -> BloomFilterJSON:
        self.m = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "bits"):
            result["bits"] = [int(i0) for i0 in self.bits]
        elif include_empty:
            result["bits"] = []
        if hasattr(self, "k"):
            result["k"] = int(self.k)
        elif include_empty:
            result["k"] = 0
        if hasattr(self, "m"):
            result["m"] = int(self.m)
        elif include_empty:
            result["m"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        bits: List[int],
        k: int,
        m: int,
    ) -> BloomFilterJSON:
        instance = cls()
        instance.bits = bits
        instance.k = k
        instance.m = m
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BloomFilterJSON:
        instance = cls()
        if not dict_:
            return instance
        if "bits" in dict_ and dict_["bits"] is not None:
            instance.bits = [int(i0) for i0 in dict_["bits"]]
        elif include_empty:
            instance.bits = []
        if "k" in dict_ and dict_["k"] is not None:
            instance.k = int(dict_["k"])
        elif include_empty:
            instance.k = 0
        if "m" in dict_ and dict_["m"] is not None:
            instance.m = int(dict_["m"])
        elif include_empty:
            instance.m = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BloomFilterJSON]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BloomFilterJSON]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[BloomFilterJSON, List[BloomFilterJSON], Dict[Any, BloomFilterJSON]]:
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
            "bits": "bits",
            "k": "k",
            "m": "m",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bits": True,
            "k": True,
            "m": True,
        }

    # endregion static methods
