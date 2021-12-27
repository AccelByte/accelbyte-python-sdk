# justice-iam-service (4.9.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class AccountcommonJWTBanV3(Model):
    """Accountcommon JWT ban V3 (accountcommon.JWTBanV3)

    Properties:
        ban: (ban) REQUIRED str

        enabled: (enabled) REQUIRED bool

        end_date: (endDate) REQUIRED str

        targeted_namespace: (targetedNamespace) REQUIRED str

        disabled_date: (disabledDate) OPTIONAL str
    """

    # region fields

    ban: str                                                                                       # REQUIRED
    enabled: bool                                                                                  # REQUIRED
    end_date: str                                                                                  # REQUIRED
    targeted_namespace: str                                                                        # REQUIRED
    disabled_date: str                                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ban(self, value: str) -> AccountcommonJWTBanV3:
        self.ban = value
        return self

    def with_enabled(self, value: bool) -> AccountcommonJWTBanV3:
        self.enabled = value
        return self

    def with_end_date(self, value: str) -> AccountcommonJWTBanV3:
        self.end_date = value
        return self

    def with_targeted_namespace(self, value: str) -> AccountcommonJWTBanV3:
        self.targeted_namespace = value
        return self

    def with_disabled_date(self, value: str) -> AccountcommonJWTBanV3:
        self.disabled_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ban"):
            result["ban"] = str(self.ban)
        elif include_empty:
            result["ban"] = str()
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = bool()
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "targeted_namespace"):
            result["targetedNamespace"] = str(self.targeted_namespace)
        elif include_empty:
            result["targetedNamespace"] = str()
        if hasattr(self, "disabled_date"):
            result["disabledDate"] = str(self.disabled_date)
        elif include_empty:
            result["disabledDate"] = str()
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
    ) -> AccountcommonJWTBanV3:
        instance = cls()
        instance.ban = ban
        instance.enabled = enabled
        instance.end_date = end_date
        instance.targeted_namespace = targeted_namespace
        if disabled_date is not None:
            instance.disabled_date = disabled_date
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonJWTBanV3:
        instance = cls()
        if not dict_:
            return instance
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = str(dict_["ban"])
        elif include_empty:
            instance.ban = str()
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
        if "disabledDate" in dict_ and dict_["disabledDate"] is not None:
            instance.disabled_date = str(dict_["disabledDate"])
        elif include_empty:
            instance.disabled_date = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ban": "ban",
            "enabled": "enabled",
            "endDate": "end_date",
            "targetedNamespace": "targeted_namespace",
            "disabledDate": "disabled_date",
        }

    # endregion static methods
