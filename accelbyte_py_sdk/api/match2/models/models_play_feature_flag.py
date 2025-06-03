# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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


class ModelsPlayFeatureFlag(Model):
    """Models play feature flag (models.PlayFeatureFlag)

    Properties:
        enable_auto_cancel_match_user_disconnect: (ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT) REQUIRED bool

        enable_auto_cancel_match_user_leave: (ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE) REQUIRED bool
    """

    # region fields

    enable_auto_cancel_match_user_disconnect: bool  # REQUIRED
    enable_auto_cancel_match_user_leave: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_enable_auto_cancel_match_user_disconnect(
        self, value: bool
    ) -> ModelsPlayFeatureFlag:
        self.enable_auto_cancel_match_user_disconnect = value
        return self

    def with_enable_auto_cancel_match_user_leave(
        self, value: bool
    ) -> ModelsPlayFeatureFlag:
        self.enable_auto_cancel_match_user_leave = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enable_auto_cancel_match_user_disconnect"):
            result["ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT"] = bool(
                self.enable_auto_cancel_match_user_disconnect
            )
        elif include_empty:
            result["ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT"] = False
        if hasattr(self, "enable_auto_cancel_match_user_leave"):
            result["ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE"] = bool(
                self.enable_auto_cancel_match_user_leave
            )
        elif include_empty:
            result["ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enable_auto_cancel_match_user_disconnect: bool,
        enable_auto_cancel_match_user_leave: bool,
        **kwargs,
    ) -> ModelsPlayFeatureFlag:
        instance = cls()
        instance.enable_auto_cancel_match_user_disconnect = (
            enable_auto_cancel_match_user_disconnect
        )
        instance.enable_auto_cancel_match_user_leave = (
            enable_auto_cancel_match_user_leave
        )
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayFeatureFlag:
        instance = cls()
        if not dict_:
            return instance
        if (
            "ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT" in dict_
            and dict_["ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT"] is not None
        ):
            instance.enable_auto_cancel_match_user_disconnect = bool(
                dict_["ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT"]
            )
        elif include_empty:
            instance.enable_auto_cancel_match_user_disconnect = False
        if (
            "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE" in dict_
            and dict_["ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE"] is not None
        ):
            instance.enable_auto_cancel_match_user_leave = bool(
                dict_["ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE"]
            )
        elif include_empty:
            instance.enable_auto_cancel_match_user_leave = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayFeatureFlag]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayFeatureFlag]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayFeatureFlag,
        List[ModelsPlayFeatureFlag],
        Dict[Any, ModelsPlayFeatureFlag],
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
            "ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": "enable_auto_cancel_match_user_disconnect",
            "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": "enable_auto_cancel_match_user_leave",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": True,
            "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": True,
        }

    # endregion static methods
