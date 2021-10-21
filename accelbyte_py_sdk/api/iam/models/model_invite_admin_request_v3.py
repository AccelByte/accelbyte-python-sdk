# Auto-generated at 2021-10-21T08:52:26.063952+08:00
# from: Justice iam Service (4.4.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class ModelInviteAdminRequestV3(Model):
    """Model invite admin request V3 (model.InviteAdminRequestV3)

    Properties:
        email_addresses: (emailAddresses) REQUIRED List[str]

        roles: (roles) REQUIRED List[str]
    """

    # region fields

    email_addresses: List[str]                                                                     # REQUIRED
    roles: List[str]                                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_email_addresses(self, value: List[str]) -> ModelInviteAdminRequestV3:
        self.email_addresses = value
        return self

    def with_roles(self, value: List[str]) -> ModelInviteAdminRequestV3:
        self.roles = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email_addresses") and self.email_addresses:
            result["emailAddresses"] = [str(i0) for i0 in self.email_addresses]
        elif include_empty:
            result["emailAddresses"] = []
        if hasattr(self, "roles") and self.roles:
            result["roles"] = [str(i0) for i0 in self.roles]
        elif include_empty:
            result["roles"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        email_addresses: List[str],
        roles: List[str],
    ) -> ModelInviteAdminRequestV3:
        instance = cls()
        instance.email_addresses = email_addresses
        instance.roles = roles
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelInviteAdminRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "emailAddresses" in dict_ and dict_["emailAddresses"] is not None:
            instance.email_addresses = [str(i0) for i0 in dict_["emailAddresses"]]
        elif include_empty:
            instance.email_addresses = []
        if "roles" in dict_ and dict_["roles"] is not None:
            instance.roles = [str(i0) for i0 in dict_["roles"]]
        elif include_empty:
            instance.roles = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "emailAddresses": "email_addresses",
            "roles": "roles",
        }

    # endregion static methods
