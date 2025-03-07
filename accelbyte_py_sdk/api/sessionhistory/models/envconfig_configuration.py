# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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


class EnvconfigConfiguration(Model):
    """Envconfig configuration (envconfig.Configuration)

    Properties:
        session_deletion_grace_period: (SESSION_DELETION_GRACE_PERIOD) OPTIONAL int
    """

    # region fields

    session_deletion_grace_period: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_session_deletion_grace_period(self, value: int) -> EnvconfigConfiguration:
        self.session_deletion_grace_period = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "session_deletion_grace_period"):
            result["SESSION_DELETION_GRACE_PERIOD"] = int(
                self.session_deletion_grace_period
            )
        elif include_empty:
            result["SESSION_DELETION_GRACE_PERIOD"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, session_deletion_grace_period: Optional[int] = None, **kwargs
    ) -> EnvconfigConfiguration:
        instance = cls()
        if session_deletion_grace_period is not None:
            instance.session_deletion_grace_period = session_deletion_grace_period
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EnvconfigConfiguration:
        instance = cls()
        if not dict_:
            return instance
        if (
            "SESSION_DELETION_GRACE_PERIOD" in dict_
            and dict_["SESSION_DELETION_GRACE_PERIOD"] is not None
        ):
            instance.session_deletion_grace_period = int(
                dict_["SESSION_DELETION_GRACE_PERIOD"]
            )
        elif include_empty:
            instance.session_deletion_grace_period = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EnvconfigConfiguration]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EnvconfigConfiguration]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EnvconfigConfiguration,
        List[EnvconfigConfiguration],
        Dict[Any, EnvconfigConfiguration],
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
            "SESSION_DELETION_GRACE_PERIOD": "session_deletion_grace_period",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "SESSION_DELETION_GRACE_PERIOD": False,
        }

    # endregion static methods
