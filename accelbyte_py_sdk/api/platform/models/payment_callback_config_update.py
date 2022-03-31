# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class PaymentCallbackConfigUpdate(Model):
    """Payment callback config update (PaymentCallbackConfigUpdate)

    Properties:
        dry_run: (dryRun) OPTIONAL bool

        notify_url: (notifyUrl) OPTIONAL str

        private_key: (privateKey) OPTIONAL str
    """

    # region fields

    dry_run: bool                                                                                  # OPTIONAL
    notify_url: str                                                                                # OPTIONAL
    private_key: str                                                                               # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_dry_run(self, value: bool) -> PaymentCallbackConfigUpdate:
        self.dry_run = value
        return self

    def with_notify_url(self, value: str) -> PaymentCallbackConfigUpdate:
        self.notify_url = value
        return self

    def with_private_key(self, value: str) -> PaymentCallbackConfigUpdate:
        self.private_key = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        # enum checks
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "dry_run"):
            result["dryRun"] = bool(self.dry_run)
        elif include_empty:
            result["dryRun"] = bool()
        if hasattr(self, "notify_url"):
            result["notifyUrl"] = str(self.notify_url)
        elif include_empty:
            result["notifyUrl"] = str()
        if hasattr(self, "private_key"):
            result["privateKey"] = str(self.private_key)
        elif include_empty:
            result["privateKey"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        dry_run: Optional[bool] = None,
        notify_url: Optional[str] = None,
        private_key: Optional[str] = None,
    ) -> PaymentCallbackConfigUpdate:
        instance = cls()
        if dry_run is not None:
            instance.dry_run = dry_run
        if notify_url is not None:
            instance.notify_url = notify_url
        if private_key is not None:
            instance.private_key = private_key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentCallbackConfigUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "dryRun" in dict_ and dict_["dryRun"] is not None:
            instance.dry_run = bool(dict_["dryRun"])
        elif include_empty:
            instance.dry_run = bool()
        if "notifyUrl" in dict_ and dict_["notifyUrl"] is not None:
            instance.notify_url = str(dict_["notifyUrl"])
        elif include_empty:
            instance.notify_url = str()
        if "privateKey" in dict_ and dict_["privateKey"] is not None:
            instance.private_key = str(dict_["privateKey"])
        elif include_empty:
            instance.private_key = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PaymentCallbackConfigUpdate]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PaymentCallbackConfigUpdate]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PaymentCallbackConfigUpdate, List[PaymentCallbackConfigUpdate]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "dryRun": "dry_run",
            "notifyUrl": "notify_url",
            "privateKey": "private_key",
        }

    # endregion static methods
