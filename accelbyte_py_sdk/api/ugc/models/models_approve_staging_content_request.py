# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ugc Service

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


class ModelsApproveStagingContentRequest(Model):
    """Models approve staging content request (models.ApproveStagingContentRequest)

    Properties:
        approved: (approved) REQUIRED bool

        note: (note) OPTIONAL str
    """

    # region fields

    approved: bool  # REQUIRED
    note: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_approved(self, value: bool) -> ModelsApproveStagingContentRequest:
        self.approved = value
        return self

    def with_note(self, value: str) -> ModelsApproveStagingContentRequest:
        self.note = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "approved"):
            result["approved"] = bool(self.approved)
        elif include_empty:
            result["approved"] = False
        if hasattr(self, "note"):
            result["note"] = str(self.note)
        elif include_empty:
            result["note"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, approved: bool, note: Optional[str] = None, **kwargs
    ) -> ModelsApproveStagingContentRequest:
        instance = cls()
        instance.approved = approved
        if note is not None:
            instance.note = note
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsApproveStagingContentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "approved" in dict_ and dict_["approved"] is not None:
            instance.approved = bool(dict_["approved"])
        elif include_empty:
            instance.approved = False
        if "note" in dict_ and dict_["note"] is not None:
            instance.note = str(dict_["note"])
        elif include_empty:
            instance.note = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsApproveStagingContentRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsApproveStagingContentRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsApproveStagingContentRequest,
        List[ModelsApproveStagingContentRequest],
        Dict[Any, ModelsApproveStagingContentRequest],
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
            "approved": "approved",
            "note": "note",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "approved": True,
            "note": False,
        }

    # endregion static methods
