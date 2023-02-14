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

from ..models.entitlement_revocation_config import EntitlementRevocationConfig
from ..models.wallet_revocation_config import WalletRevocationConfig


class RevocationConfigUpdate(Model):
    """Revocation config update (RevocationConfigUpdate)

    Properties:
        entitlement: (entitlement) OPTIONAL EntitlementRevocationConfig

        wallet: (wallet) OPTIONAL WalletRevocationConfig
    """

    # region fields

    entitlement: EntitlementRevocationConfig  # OPTIONAL
    wallet: WalletRevocationConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement(
        self, value: EntitlementRevocationConfig
    ) -> RevocationConfigUpdate:
        self.entitlement = value
        return self

    def with_wallet(self, value: WalletRevocationConfig) -> RevocationConfigUpdate:
        self.wallet = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement"):
            result["entitlement"] = self.entitlement.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["entitlement"] = EntitlementRevocationConfig()
        if hasattr(self, "wallet"):
            result["wallet"] = self.wallet.to_dict(include_empty=include_empty)
        elif include_empty:
            result["wallet"] = WalletRevocationConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement: Optional[EntitlementRevocationConfig] = None,
        wallet: Optional[WalletRevocationConfig] = None,
    ) -> RevocationConfigUpdate:
        instance = cls()
        if entitlement is not None:
            instance.entitlement = entitlement
        if wallet is not None:
            instance.wallet = wallet
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevocationConfigUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "entitlement" in dict_ and dict_["entitlement"] is not None:
            instance.entitlement = EntitlementRevocationConfig.create_from_dict(
                dict_["entitlement"], include_empty=include_empty
            )
        elif include_empty:
            instance.entitlement = EntitlementRevocationConfig()
        if "wallet" in dict_ and dict_["wallet"] is not None:
            instance.wallet = WalletRevocationConfig.create_from_dict(
                dict_["wallet"], include_empty=include_empty
            )
        elif include_empty:
            instance.wallet = WalletRevocationConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevocationConfigUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevocationConfigUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RevocationConfigUpdate,
        List[RevocationConfigUpdate],
        Dict[Any, RevocationConfigUpdate],
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
            "entitlement": "entitlement",
            "wallet": "wallet",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "entitlement": False,
            "wallet": False,
        }

    # endregion static methods
