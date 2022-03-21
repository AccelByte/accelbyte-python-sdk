# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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


class PlatformDlcEntry(Model):
    """Platform dlc entry (PlatformDlcEntry)

    Properties:
        platform: (platform) OPTIONAL str

        platform_dlc_id_map: (platformDlcIdMap) OPTIONAL Dict[str, str]
    """

    # region fields

    platform: str                                                                                  # OPTIONAL
    platform_dlc_id_map: Dict[str, str]                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform(self, value: str) -> PlatformDlcEntry:
        self.platform = value
        return self

    def with_platform_dlc_id_map(self, value: Dict[str, str]) -> PlatformDlcEntry:
        self.platform_dlc_id_map = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = str()
        if hasattr(self, "platform_dlc_id_map"):
            result["platformDlcIdMap"] = {str(k0): str(v0) for k0, v0 in self.platform_dlc_id_map.items()}
        elif include_empty:
            result["platformDlcIdMap"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform: Optional[str] = None,
        platform_dlc_id_map: Optional[Dict[str, str]] = None,
    ) -> PlatformDlcEntry:
        instance = cls()
        if platform is not None:
            instance.platform = platform
        if platform_dlc_id_map is not None:
            instance.platform_dlc_id_map = platform_dlc_id_map
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PlatformDlcEntry:
        instance = cls()
        if not dict_:
            return instance
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = str()
        if "platformDlcIdMap" in dict_ and dict_["platformDlcIdMap"] is not None:
            instance.platform_dlc_id_map = {str(k0): str(v0) for k0, v0 in dict_["platformDlcIdMap"].items()}
        elif include_empty:
            instance.platform_dlc_id_map = {}
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PlatformDlcEntry]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PlatformDlcEntry]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PlatformDlcEntry, List[PlatformDlcEntry]]:
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
            "platform": "platform",
            "platformDlcIdMap": "platform_dlc_id_map",
        }

    # endregion static methods
