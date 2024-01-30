# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service

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


class ModelsCustomFunction(Model):
    """Models custom function (models.CustomFunction)

    Properties:
        after_bulk_read_game_binary_record: (afterBulkReadGameBinaryRecord) REQUIRED bool

        after_bulk_read_game_record: (afterBulkReadGameRecord) REQUIRED bool

        after_bulk_read_player_binary_record: (afterBulkReadPlayerBinaryRecord) REQUIRED bool

        after_bulk_read_player_record: (afterBulkReadPlayerRecord) REQUIRED bool

        after_read_game_binary_record: (afterReadGameBinaryRecord) REQUIRED bool

        after_read_game_record: (afterReadGameRecord) REQUIRED bool

        after_read_player_binary_record: (afterReadPlayerBinaryRecord) REQUIRED bool

        after_read_player_record: (afterReadPlayerRecord) REQUIRED bool

        before_write_admin_game_record: (beforeWriteAdminGameRecord) REQUIRED bool

        before_write_admin_player_record: (beforeWriteAdminPlayerRecord) REQUIRED bool

        before_write_game_binary_record: (beforeWriteGameBinaryRecord) REQUIRED bool

        before_write_game_record: (beforeWriteGameRecord) REQUIRED bool

        before_write_player_binary_record: (beforeWritePlayerBinaryRecord) REQUIRED bool

        before_write_player_record: (beforeWritePlayerRecord) REQUIRED bool
    """

    # region fields

    after_bulk_read_game_binary_record: bool  # REQUIRED
    after_bulk_read_game_record: bool  # REQUIRED
    after_bulk_read_player_binary_record: bool  # REQUIRED
    after_bulk_read_player_record: bool  # REQUIRED
    after_read_game_binary_record: bool  # REQUIRED
    after_read_game_record: bool  # REQUIRED
    after_read_player_binary_record: bool  # REQUIRED
    after_read_player_record: bool  # REQUIRED
    before_write_admin_game_record: bool  # REQUIRED
    before_write_admin_player_record: bool  # REQUIRED
    before_write_game_binary_record: bool  # REQUIRED
    before_write_game_record: bool  # REQUIRED
    before_write_player_binary_record: bool  # REQUIRED
    before_write_player_record: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_after_bulk_read_game_binary_record(
        self, value: bool
    ) -> ModelsCustomFunction:
        self.after_bulk_read_game_binary_record = value
        return self

    def with_after_bulk_read_game_record(self, value: bool) -> ModelsCustomFunction:
        self.after_bulk_read_game_record = value
        return self

    def with_after_bulk_read_player_binary_record(
        self, value: bool
    ) -> ModelsCustomFunction:
        self.after_bulk_read_player_binary_record = value
        return self

    def with_after_bulk_read_player_record(self, value: bool) -> ModelsCustomFunction:
        self.after_bulk_read_player_record = value
        return self

    def with_after_read_game_binary_record(self, value: bool) -> ModelsCustomFunction:
        self.after_read_game_binary_record = value
        return self

    def with_after_read_game_record(self, value: bool) -> ModelsCustomFunction:
        self.after_read_game_record = value
        return self

    def with_after_read_player_binary_record(self, value: bool) -> ModelsCustomFunction:
        self.after_read_player_binary_record = value
        return self

    def with_after_read_player_record(self, value: bool) -> ModelsCustomFunction:
        self.after_read_player_record = value
        return self

    def with_before_write_admin_game_record(self, value: bool) -> ModelsCustomFunction:
        self.before_write_admin_game_record = value
        return self

    def with_before_write_admin_player_record(
        self, value: bool
    ) -> ModelsCustomFunction:
        self.before_write_admin_player_record = value
        return self

    def with_before_write_game_binary_record(self, value: bool) -> ModelsCustomFunction:
        self.before_write_game_binary_record = value
        return self

    def with_before_write_game_record(self, value: bool) -> ModelsCustomFunction:
        self.before_write_game_record = value
        return self

    def with_before_write_player_binary_record(
        self, value: bool
    ) -> ModelsCustomFunction:
        self.before_write_player_binary_record = value
        return self

    def with_before_write_player_record(self, value: bool) -> ModelsCustomFunction:
        self.before_write_player_record = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "after_bulk_read_game_binary_record"):
            result["afterBulkReadGameBinaryRecord"] = bool(
                self.after_bulk_read_game_binary_record
            )
        elif include_empty:
            result["afterBulkReadGameBinaryRecord"] = False
        if hasattr(self, "after_bulk_read_game_record"):
            result["afterBulkReadGameRecord"] = bool(self.after_bulk_read_game_record)
        elif include_empty:
            result["afterBulkReadGameRecord"] = False
        if hasattr(self, "after_bulk_read_player_binary_record"):
            result["afterBulkReadPlayerBinaryRecord"] = bool(
                self.after_bulk_read_player_binary_record
            )
        elif include_empty:
            result["afterBulkReadPlayerBinaryRecord"] = False
        if hasattr(self, "after_bulk_read_player_record"):
            result["afterBulkReadPlayerRecord"] = bool(
                self.after_bulk_read_player_record
            )
        elif include_empty:
            result["afterBulkReadPlayerRecord"] = False
        if hasattr(self, "after_read_game_binary_record"):
            result["afterReadGameBinaryRecord"] = bool(
                self.after_read_game_binary_record
            )
        elif include_empty:
            result["afterReadGameBinaryRecord"] = False
        if hasattr(self, "after_read_game_record"):
            result["afterReadGameRecord"] = bool(self.after_read_game_record)
        elif include_empty:
            result["afterReadGameRecord"] = False
        if hasattr(self, "after_read_player_binary_record"):
            result["afterReadPlayerBinaryRecord"] = bool(
                self.after_read_player_binary_record
            )
        elif include_empty:
            result["afterReadPlayerBinaryRecord"] = False
        if hasattr(self, "after_read_player_record"):
            result["afterReadPlayerRecord"] = bool(self.after_read_player_record)
        elif include_empty:
            result["afterReadPlayerRecord"] = False
        if hasattr(self, "before_write_admin_game_record"):
            result["beforeWriteAdminGameRecord"] = bool(
                self.before_write_admin_game_record
            )
        elif include_empty:
            result["beforeWriteAdminGameRecord"] = False
        if hasattr(self, "before_write_admin_player_record"):
            result["beforeWriteAdminPlayerRecord"] = bool(
                self.before_write_admin_player_record
            )
        elif include_empty:
            result["beforeWriteAdminPlayerRecord"] = False
        if hasattr(self, "before_write_game_binary_record"):
            result["beforeWriteGameBinaryRecord"] = bool(
                self.before_write_game_binary_record
            )
        elif include_empty:
            result["beforeWriteGameBinaryRecord"] = False
        if hasattr(self, "before_write_game_record"):
            result["beforeWriteGameRecord"] = bool(self.before_write_game_record)
        elif include_empty:
            result["beforeWriteGameRecord"] = False
        if hasattr(self, "before_write_player_binary_record"):
            result["beforeWritePlayerBinaryRecord"] = bool(
                self.before_write_player_binary_record
            )
        elif include_empty:
            result["beforeWritePlayerBinaryRecord"] = False
        if hasattr(self, "before_write_player_record"):
            result["beforeWritePlayerRecord"] = bool(self.before_write_player_record)
        elif include_empty:
            result["beforeWritePlayerRecord"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        after_bulk_read_game_binary_record: bool,
        after_bulk_read_game_record: bool,
        after_bulk_read_player_binary_record: bool,
        after_bulk_read_player_record: bool,
        after_read_game_binary_record: bool,
        after_read_game_record: bool,
        after_read_player_binary_record: bool,
        after_read_player_record: bool,
        before_write_admin_game_record: bool,
        before_write_admin_player_record: bool,
        before_write_game_binary_record: bool,
        before_write_game_record: bool,
        before_write_player_binary_record: bool,
        before_write_player_record: bool,
        **kwargs,
    ) -> ModelsCustomFunction:
        instance = cls()
        instance.after_bulk_read_game_binary_record = after_bulk_read_game_binary_record
        instance.after_bulk_read_game_record = after_bulk_read_game_record
        instance.after_bulk_read_player_binary_record = (
            after_bulk_read_player_binary_record
        )
        instance.after_bulk_read_player_record = after_bulk_read_player_record
        instance.after_read_game_binary_record = after_read_game_binary_record
        instance.after_read_game_record = after_read_game_record
        instance.after_read_player_binary_record = after_read_player_binary_record
        instance.after_read_player_record = after_read_player_record
        instance.before_write_admin_game_record = before_write_admin_game_record
        instance.before_write_admin_player_record = before_write_admin_player_record
        instance.before_write_game_binary_record = before_write_game_binary_record
        instance.before_write_game_record = before_write_game_record
        instance.before_write_player_binary_record = before_write_player_binary_record
        instance.before_write_player_record = before_write_player_record
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCustomFunction:
        instance = cls()
        if not dict_:
            return instance
        if (
            "afterBulkReadGameBinaryRecord" in dict_
            and dict_["afterBulkReadGameBinaryRecord"] is not None
        ):
            instance.after_bulk_read_game_binary_record = bool(
                dict_["afterBulkReadGameBinaryRecord"]
            )
        elif include_empty:
            instance.after_bulk_read_game_binary_record = False
        if (
            "afterBulkReadGameRecord" in dict_
            and dict_["afterBulkReadGameRecord"] is not None
        ):
            instance.after_bulk_read_game_record = bool(
                dict_["afterBulkReadGameRecord"]
            )
        elif include_empty:
            instance.after_bulk_read_game_record = False
        if (
            "afterBulkReadPlayerBinaryRecord" in dict_
            and dict_["afterBulkReadPlayerBinaryRecord"] is not None
        ):
            instance.after_bulk_read_player_binary_record = bool(
                dict_["afterBulkReadPlayerBinaryRecord"]
            )
        elif include_empty:
            instance.after_bulk_read_player_binary_record = False
        if (
            "afterBulkReadPlayerRecord" in dict_
            and dict_["afterBulkReadPlayerRecord"] is not None
        ):
            instance.after_bulk_read_player_record = bool(
                dict_["afterBulkReadPlayerRecord"]
            )
        elif include_empty:
            instance.after_bulk_read_player_record = False
        if (
            "afterReadGameBinaryRecord" in dict_
            and dict_["afterReadGameBinaryRecord"] is not None
        ):
            instance.after_read_game_binary_record = bool(
                dict_["afterReadGameBinaryRecord"]
            )
        elif include_empty:
            instance.after_read_game_binary_record = False
        if "afterReadGameRecord" in dict_ and dict_["afterReadGameRecord"] is not None:
            instance.after_read_game_record = bool(dict_["afterReadGameRecord"])
        elif include_empty:
            instance.after_read_game_record = False
        if (
            "afterReadPlayerBinaryRecord" in dict_
            and dict_["afterReadPlayerBinaryRecord"] is not None
        ):
            instance.after_read_player_binary_record = bool(
                dict_["afterReadPlayerBinaryRecord"]
            )
        elif include_empty:
            instance.after_read_player_binary_record = False
        if (
            "afterReadPlayerRecord" in dict_
            and dict_["afterReadPlayerRecord"] is not None
        ):
            instance.after_read_player_record = bool(dict_["afterReadPlayerRecord"])
        elif include_empty:
            instance.after_read_player_record = False
        if (
            "beforeWriteAdminGameRecord" in dict_
            and dict_["beforeWriteAdminGameRecord"] is not None
        ):
            instance.before_write_admin_game_record = bool(
                dict_["beforeWriteAdminGameRecord"]
            )
        elif include_empty:
            instance.before_write_admin_game_record = False
        if (
            "beforeWriteAdminPlayerRecord" in dict_
            and dict_["beforeWriteAdminPlayerRecord"] is not None
        ):
            instance.before_write_admin_player_record = bool(
                dict_["beforeWriteAdminPlayerRecord"]
            )
        elif include_empty:
            instance.before_write_admin_player_record = False
        if (
            "beforeWriteGameBinaryRecord" in dict_
            and dict_["beforeWriteGameBinaryRecord"] is not None
        ):
            instance.before_write_game_binary_record = bool(
                dict_["beforeWriteGameBinaryRecord"]
            )
        elif include_empty:
            instance.before_write_game_binary_record = False
        if (
            "beforeWriteGameRecord" in dict_
            and dict_["beforeWriteGameRecord"] is not None
        ):
            instance.before_write_game_record = bool(dict_["beforeWriteGameRecord"])
        elif include_empty:
            instance.before_write_game_record = False
        if (
            "beforeWritePlayerBinaryRecord" in dict_
            and dict_["beforeWritePlayerBinaryRecord"] is not None
        ):
            instance.before_write_player_binary_record = bool(
                dict_["beforeWritePlayerBinaryRecord"]
            )
        elif include_empty:
            instance.before_write_player_binary_record = False
        if (
            "beforeWritePlayerRecord" in dict_
            and dict_["beforeWritePlayerRecord"] is not None
        ):
            instance.before_write_player_record = bool(dict_["beforeWritePlayerRecord"])
        elif include_empty:
            instance.before_write_player_record = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCustomFunction]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCustomFunction]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCustomFunction,
        List[ModelsCustomFunction],
        Dict[Any, ModelsCustomFunction],
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
            "afterBulkReadGameBinaryRecord": "after_bulk_read_game_binary_record",
            "afterBulkReadGameRecord": "after_bulk_read_game_record",
            "afterBulkReadPlayerBinaryRecord": "after_bulk_read_player_binary_record",
            "afterBulkReadPlayerRecord": "after_bulk_read_player_record",
            "afterReadGameBinaryRecord": "after_read_game_binary_record",
            "afterReadGameRecord": "after_read_game_record",
            "afterReadPlayerBinaryRecord": "after_read_player_binary_record",
            "afterReadPlayerRecord": "after_read_player_record",
            "beforeWriteAdminGameRecord": "before_write_admin_game_record",
            "beforeWriteAdminPlayerRecord": "before_write_admin_player_record",
            "beforeWriteGameBinaryRecord": "before_write_game_binary_record",
            "beforeWriteGameRecord": "before_write_game_record",
            "beforeWritePlayerBinaryRecord": "before_write_player_binary_record",
            "beforeWritePlayerRecord": "before_write_player_record",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "afterBulkReadGameBinaryRecord": True,
            "afterBulkReadGameRecord": True,
            "afterBulkReadPlayerBinaryRecord": True,
            "afterBulkReadPlayerRecord": True,
            "afterReadGameBinaryRecord": True,
            "afterReadGameRecord": True,
            "afterReadPlayerBinaryRecord": True,
            "afterReadPlayerRecord": True,
            "beforeWriteAdminGameRecord": True,
            "beforeWriteAdminPlayerRecord": True,
            "beforeWriteGameBinaryRecord": True,
            "beforeWriteGameRecord": True,
            "beforeWritePlayerBinaryRecord": True,
            "beforeWritePlayerRecord": True,
        }

    # endregion static methods
