# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ModelsDefaultDSMCConfig(Model):
    """Models default DSMC config (models.DefaultDSMCConfig)

    Properties:
        claim_timeout: (claim_timeout) REQUIRED int

        creation_timeout: (creation_timeout) REQUIRED int
    """

    # region fields

    claim_timeout: int  # REQUIRED
    creation_timeout: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_claim_timeout(self, value: int) -> ModelsDefaultDSMCConfig:
        self.claim_timeout = value
        return self

    def with_creation_timeout(self, value: int) -> ModelsDefaultDSMCConfig:
        self.creation_timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claim_timeout"):
            result["claim_timeout"] = int(self.claim_timeout)
        elif include_empty:
            result["claim_timeout"] = 0
        if hasattr(self, "creation_timeout"):
            result["creation_timeout"] = int(self.creation_timeout)
        elif include_empty:
            result["creation_timeout"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, claim_timeout: int, creation_timeout: int, **kwargs
    ) -> ModelsDefaultDSMCConfig:
        instance = cls()
        instance.claim_timeout = claim_timeout
        instance.creation_timeout = creation_timeout
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDefaultDSMCConfig:
        instance = cls()
        if not dict_:
            return instance
        if "claim_timeout" in dict_ and dict_["claim_timeout"] is not None:
            instance.claim_timeout = int(dict_["claim_timeout"])
        elif include_empty:
            instance.claim_timeout = 0
        if "creation_timeout" in dict_ and dict_["creation_timeout"] is not None:
            instance.creation_timeout = int(dict_["creation_timeout"])
        elif include_empty:
            instance.creation_timeout = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDefaultDSMCConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDefaultDSMCConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDefaultDSMCConfig,
        List[ModelsDefaultDSMCConfig],
        Dict[Any, ModelsDefaultDSMCConfig],
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
            "claim_timeout": "claim_timeout",
            "creation_timeout": "creation_timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claim_timeout": True,
            "creation_timeout": True,
        }

    # endregion static methods
