# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (1.4.1)

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


class ApiMatchPool(Model):
    """Api match pool (api.MatchPool)

    Properties:
        backfill_ticket_expiration_seconds: (backfill_ticket_expiration_seconds) REQUIRED int

        match_function: (match_function) REQUIRED str

        name: (name) REQUIRED str

        rule_set: (rule_set) REQUIRED str

        session_template: (session_template) REQUIRED str

        ticket_expiration_seconds: (ticket_expiration_seconds) REQUIRED int
    """

    # region fields

    backfill_ticket_expiration_seconds: int  # REQUIRED
    match_function: str  # REQUIRED
    name: str  # REQUIRED
    rule_set: str  # REQUIRED
    session_template: str  # REQUIRED
    ticket_expiration_seconds: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_backfill_ticket_expiration_seconds(self, value: int) -> ApiMatchPool:
        self.backfill_ticket_expiration_seconds = value
        return self

    def with_match_function(self, value: str) -> ApiMatchPool:
        self.match_function = value
        return self

    def with_name(self, value: str) -> ApiMatchPool:
        self.name = value
        return self

    def with_rule_set(self, value: str) -> ApiMatchPool:
        self.rule_set = value
        return self

    def with_session_template(self, value: str) -> ApiMatchPool:
        self.session_template = value
        return self

    def with_ticket_expiration_seconds(self, value: int) -> ApiMatchPool:
        self.ticket_expiration_seconds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill_ticket_expiration_seconds"):
            result["backfill_ticket_expiration_seconds"] = int(
                self.backfill_ticket_expiration_seconds
            )
        elif include_empty:
            result["backfill_ticket_expiration_seconds"] = 0
        if hasattr(self, "match_function"):
            result["match_function"] = str(self.match_function)
        elif include_empty:
            result["match_function"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "rule_set"):
            result["rule_set"] = str(self.rule_set)
        elif include_empty:
            result["rule_set"] = ""
        if hasattr(self, "session_template"):
            result["session_template"] = str(self.session_template)
        elif include_empty:
            result["session_template"] = ""
        if hasattr(self, "ticket_expiration_seconds"):
            result["ticket_expiration_seconds"] = int(self.ticket_expiration_seconds)
        elif include_empty:
            result["ticket_expiration_seconds"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill_ticket_expiration_seconds: int,
        match_function: str,
        name: str,
        rule_set: str,
        session_template: str,
        ticket_expiration_seconds: int,
    ) -> ApiMatchPool:
        instance = cls()
        instance.backfill_ticket_expiration_seconds = backfill_ticket_expiration_seconds
        instance.match_function = match_function
        instance.name = name
        instance.rule_set = rule_set
        instance.session_template = session_template
        instance.ticket_expiration_seconds = ticket_expiration_seconds
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ApiMatchPool:
        instance = cls()
        if not dict_:
            return instance
        if (
            "backfill_ticket_expiration_seconds" in dict_
            and dict_["backfill_ticket_expiration_seconds"] is not None
        ):
            instance.backfill_ticket_expiration_seconds = int(
                dict_["backfill_ticket_expiration_seconds"]
            )
        elif include_empty:
            instance.backfill_ticket_expiration_seconds = 0
        if "match_function" in dict_ and dict_["match_function"] is not None:
            instance.match_function = str(dict_["match_function"])
        elif include_empty:
            instance.match_function = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "rule_set" in dict_ and dict_["rule_set"] is not None:
            instance.rule_set = str(dict_["rule_set"])
        elif include_empty:
            instance.rule_set = ""
        if "session_template" in dict_ and dict_["session_template"] is not None:
            instance.session_template = str(dict_["session_template"])
        elif include_empty:
            instance.session_template = ""
        if (
            "ticket_expiration_seconds" in dict_
            and dict_["ticket_expiration_seconds"] is not None
        ):
            instance.ticket_expiration_seconds = int(dict_["ticket_expiration_seconds"])
        elif include_empty:
            instance.ticket_expiration_seconds = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiMatchPool]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiMatchPool]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiMatchPool, List[ApiMatchPool], Dict[Any, ApiMatchPool]]:
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
            "backfill_ticket_expiration_seconds": "backfill_ticket_expiration_seconds",
            "match_function": "match_function",
            "name": "name",
            "rule_set": "rule_set",
            "session_template": "session_template",
            "ticket_expiration_seconds": "ticket_expiration_seconds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "backfill_ticket_expiration_seconds": True,
            "match_function": True,
            "name": True,
            "rule_set": True,
            "session_template": True,
            "ticket_expiration_seconds": True,
        }

    # endregion static methods
