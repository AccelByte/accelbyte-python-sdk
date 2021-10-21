# justice-iam-service (4.4.1)

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
    """Accountcommon JWT ban (accountcommon.JWTBan)

    Properties:
        ban: (ban) REQUIRED str

        disabled_date: (disabledDate) OPTIONAL str

        enabled: (enabled) REQUIRED bool

        end_date: (endDate) REQUIRED str

        targeted_namespace: (targetedNamespace) REQUIRED str
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
        result: dict = {}
        if hasattr(self, "ban") and self.ban:
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = str()
        if hasattr(self, "disabled_date") and self.disabled_date:
            result["disabledDate"] = str(self.disabled_date)
        elif include_empty:
            result["disabledDate"] = str()
        if hasattr(self, "enabled") and self.enabled:
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = bool()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "targeted_namespace") and self.targeted_namespace:
            result["targetedNamespace"] = str(self.targeted_namespace)
        elif include_empty:
            result["targetedNamespace"] = str()
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
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = str()
        if "disabledDate" in dict_ and dict_["disabledDate"] is not None:
            instance.disabled_date = str(dict_["disabledDate"])
        elif include_empty:
            instance.disabled_date = str()
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = bool()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "targetedNamespace" in dict_ and dict_["targetedNamespace"] is not None:
            instance.targeted_namespace = str(dict_["targetedNamespace"])
        elif include_empty:
            instance.targeted_namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ban": "ban",
            "disabledDate": "disabled_date",
            "enabled": "enabled",
            "endDate": "end_date",
            "targetedNamespace": "targeted_namespace",
        }

    # endregion static methods
