# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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


class AccountcommonClientPermissionV3(Model):
    """Accountcommon client permission V3 (accountcommon.ClientPermissionV3)

    Properties:
        action: (action) REQUIRED int

        resource: (resource) REQUIRED str
    """

    # region fields

    action: int                                                                                    # REQUIRED
    resource: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_action(self, value: int) -> AccountcommonClientPermissionV3:
        self.action = value
        return self

    def with_resource(self, value: str) -> AccountcommonClientPermissionV3:
        self.resource = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "action") or self.action is None:
            return False
        if not hasattr(self, "resource") or self.resource is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = int(self.action)
        elif include_empty:
            result["action"] = int()
        if hasattr(self, "resource"):
            result["resource"] = str(self.resource)
        elif include_empty:
            result["resource"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: int,
        resource: str,
    ) -> AccountcommonClientPermissionV3:
        instance = cls()
        instance.action = action
        instance.resource = resource
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonClientPermissionV3:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = int(dict_["action"])
        elif include_empty:
            instance.action = int()
        if "resource" in dict_ and dict_["resource"] is not None:
            instance.resource = str(dict_["resource"])
        elif include_empty:
            instance.resource = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, AccountcommonClientPermissionV3]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[AccountcommonClientPermissionV3]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[AccountcommonClientPermissionV3, List[AccountcommonClientPermissionV3]]:
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
            "action": "action",
            "resource": "resource",
        }

    # endregion static methods
