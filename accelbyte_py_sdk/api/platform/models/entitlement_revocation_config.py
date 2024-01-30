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

from ..models.consumable_entitlement_revocation_config import (
    ConsumableEntitlementRevocationConfig,
)
from ..models.durable_entitlement_revocation_config import (
    DurableEntitlementRevocationConfig,
)


class EntitlementRevocationConfig(Model):
    """Entitlement revocation config (EntitlementRevocationConfig)

    Properties:
        consumable: (consumable) OPTIONAL ConsumableEntitlementRevocationConfig

        durable: (durable) OPTIONAL DurableEntitlementRevocationConfig
    """

    # region fields

    consumable: ConsumableEntitlementRevocationConfig  # OPTIONAL
    durable: DurableEntitlementRevocationConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_consumable(
        self, value: ConsumableEntitlementRevocationConfig
    ) -> EntitlementRevocationConfig:
        self.consumable = value
        return self

    def with_durable(
        self, value: DurableEntitlementRevocationConfig
    ) -> EntitlementRevocationConfig:
        self.durable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "consumable"):
            result["consumable"] = self.consumable.to_dict(include_empty=include_empty)
        elif include_empty:
            result["consumable"] = ConsumableEntitlementRevocationConfig()
        if hasattr(self, "durable"):
            result["durable"] = self.durable.to_dict(include_empty=include_empty)
        elif include_empty:
            result["durable"] = DurableEntitlementRevocationConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        consumable: Optional[ConsumableEntitlementRevocationConfig] = None,
        durable: Optional[DurableEntitlementRevocationConfig] = None,
        **kwargs,
    ) -> EntitlementRevocationConfig:
        instance = cls()
        if consumable is not None:
            instance.consumable = consumable
        if durable is not None:
            instance.durable = durable
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementRevocationConfig:
        instance = cls()
        if not dict_:
            return instance
        if "consumable" in dict_ and dict_["consumable"] is not None:
            instance.consumable = (
                ConsumableEntitlementRevocationConfig.create_from_dict(
                    dict_["consumable"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.consumable = ConsumableEntitlementRevocationConfig()
        if "durable" in dict_ and dict_["durable"] is not None:
            instance.durable = DurableEntitlementRevocationConfig.create_from_dict(
                dict_["durable"], include_empty=include_empty
            )
        elif include_empty:
            instance.durable = DurableEntitlementRevocationConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementRevocationConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementRevocationConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementRevocationConfig,
        List[EntitlementRevocationConfig],
        Dict[Any, EntitlementRevocationConfig],
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
            "consumable": "consumable",
            "durable": "durable",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "consumable": False,
            "durable": False,
        }

    # endregion static methods
