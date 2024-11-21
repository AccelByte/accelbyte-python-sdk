# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiTimeout(Model):
    """Api timeout (api.Timeout)

    Properties:
        claim: (claim) OPTIONAL int

        creation: (creation) OPTIONAL int

        drain: (drain) OPTIONAL int

        session: (session) OPTIONAL int

        unresponsive: (unresponsive) OPTIONAL int
    """

    # region fields

    claim: int  # OPTIONAL
    creation: int  # OPTIONAL
    drain: int  # OPTIONAL
    session: int  # OPTIONAL
    unresponsive: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_claim(self, value: int) -> ApiTimeout:
        self.claim = value
        return self

    def with_creation(self, value: int) -> ApiTimeout:
        self.creation = value
        return self

    def with_drain(self, value: int) -> ApiTimeout:
        self.drain = value
        return self

    def with_session(self, value: int) -> ApiTimeout:
        self.session = value
        return self

    def with_unresponsive(self, value: int) -> ApiTimeout:
        self.unresponsive = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claim"):
            result["claim"] = int(self.claim)
        elif include_empty:
            result["claim"] = 0
        if hasattr(self, "creation"):
            result["creation"] = int(self.creation)
        elif include_empty:
            result["creation"] = 0
        if hasattr(self, "drain"):
            result["drain"] = int(self.drain)
        elif include_empty:
            result["drain"] = 0
        if hasattr(self, "session"):
            result["session"] = int(self.session)
        elif include_empty:
            result["session"] = 0
        if hasattr(self, "unresponsive"):
            result["unresponsive"] = int(self.unresponsive)
        elif include_empty:
            result["unresponsive"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        claim: Optional[int] = None,
        creation: Optional[int] = None,
        drain: Optional[int] = None,
        session: Optional[int] = None,
        unresponsive: Optional[int] = None,
        **kwargs,
    ) -> ApiTimeout:
        instance = cls()
        if claim is not None:
            instance.claim = claim
        if creation is not None:
            instance.creation = creation
        if drain is not None:
            instance.drain = drain
        if session is not None:
            instance.session = session
        if unresponsive is not None:
            instance.unresponsive = unresponsive
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ApiTimeout:
        instance = cls()
        if not dict_:
            return instance
        if "claim" in dict_ and dict_["claim"] is not None:
            instance.claim = int(dict_["claim"])
        elif include_empty:
            instance.claim = 0
        if "creation" in dict_ and dict_["creation"] is not None:
            instance.creation = int(dict_["creation"])
        elif include_empty:
            instance.creation = 0
        if "drain" in dict_ and dict_["drain"] is not None:
            instance.drain = int(dict_["drain"])
        elif include_empty:
            instance.drain = 0
        if "session" in dict_ and dict_["session"] is not None:
            instance.session = int(dict_["session"])
        elif include_empty:
            instance.session = 0
        if "unresponsive" in dict_ and dict_["unresponsive"] is not None:
            instance.unresponsive = int(dict_["unresponsive"])
        elif include_empty:
            instance.unresponsive = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiTimeout]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiTimeout]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiTimeout, List[ApiTimeout], Dict[Any, ApiTimeout]]:
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
            "claim": "claim",
            "creation": "creation",
            "drain": "drain",
            "session": "session",
            "unresponsive": "unresponsive",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claim": False,
            "creation": False,
            "drain": False,
            "session": False,
            "unresponsive": False,
        }

    # endregion static methods
