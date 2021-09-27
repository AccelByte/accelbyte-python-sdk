# Auto-generated at 2021-09-27T17:12:31.470380+08:00
# from: Justice Iam Service (4.1.0)

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


class AccountcommonJWTBan(Model):
    """Accountcommon JWT ban

    Properties:
        ban: (Ban) REQUIRED str

        disabled_date: (DisabledDate) OPTIONAL str

        enabled: (Enabled) REQUIRED bool

        end_date: (EndDate) REQUIRED str

        targeted_namespace: (TargetedNamespace) REQUIRED str
    """

    # region fields

    ban: str                                                                                       # REQUIRED
    disabled_date: str                                                                             # OPTIONAL
    enabled: bool                                                                                  # REQUIRED
    end_date: str                                                                                  # REQUIRED
    targeted_namespace: str                                                                        # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> AccountcommonJWTBan:
        self.ban = value
        return self

    def with_disabled_date(self, value: str) -> AccountcommonJWTBan:
        self.disabled_date = value
        return self

    def with_enabled(self, value: bool) -> AccountcommonJWTBan:
        self.enabled = value
        return self

    def with_end_date(self, value: str) -> AccountcommonJWTBan:
        self.end_date = value
        return self

    def with_targeted_namespace(self, value: str) -> AccountcommonJWTBan:
        self.targeted_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "ban") and self.ban:
            result["Ban"] = str(self.ban)
        elif include_empty:
            result["Ban"] = str()
        if hasattr(self, "disabled_date") and self.disabled_date:
            result["DisabledDate"] = str(self.disabled_date)
        elif include_empty:
            result["DisabledDate"] = str()
        if hasattr(self, "enabled") and self.enabled:
            result["Enabled"] = bool(self.enabled)
        elif include_empty:
            result["Enabled"] = bool()
        if hasattr(self, "end_date") and self.end_date:
            result["EndDate"] = str(self.end_date)
        elif include_empty:
            result["EndDate"] = str()
        if hasattr(self, "targeted_namespace") and self.targeted_namespace:
            result["TargetedNamespace"] = str(self.targeted_namespace)
        elif include_empty:
            result["TargetedNamespace"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ban: str,
        enabled: bool,
        end_date: str,
        targeted_namespace: str,
        disabled_date: Optional[str] = None,
    ) -> AccountcommonJWTBan:
        instance = cls()
        instance.ban = ban
        instance.enabled = enabled
        instance.end_date = end_date
        instance.targeted_namespace = targeted_namespace
        if disabled_date is not None:
            instance.disabled_date = disabled_date
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonJWTBan:
        instance = cls()
        if not dict_:
            return instance
        if "Ban" in dict_ and dict_["Ban"] is not None:
            instance.ban = str(dict_["Ban"])
        elif include_empty:
            instance.ban = str()
        if "DisabledDate" in dict_ and dict_["DisabledDate"] is not None:
            instance.disabled_date = str(dict_["DisabledDate"])
        elif include_empty:
            instance.disabled_date = str()
        if "Enabled" in dict_ and dict_["Enabled"] is not None:
            instance.enabled = bool(dict_["Enabled"])
        elif include_empty:
            instance.enabled = bool()
        if "EndDate" in dict_ and dict_["EndDate"] is not None:
            instance.end_date = str(dict_["EndDate"])
        elif include_empty:
            instance.end_date = str()
        if "TargetedNamespace" in dict_ and dict_["TargetedNamespace"] is not None:
            instance.targeted_namespace = str(dict_["TargetedNamespace"])
        elif include_empty:
            instance.targeted_namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Ban": "ban",
            "DisabledDate": "disabled_date",
            "Enabled": "enabled",
            "EndDate": "end_date",
            "TargetedNamespace": "targeted_namespace",
        }

    # endregion static methods
