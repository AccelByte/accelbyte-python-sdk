# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.18.1)

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


class RecurringChargeResult(Model):
    """Recurring charge result (RecurringChargeResult)

    Properties:
        triggered: (triggered) REQUIRED bool

        code: (code) OPTIONAL str

        detail: (detail) OPTIONAL str
    """

    # region fields

    triggered: bool  # REQUIRED
    code: str  # OPTIONAL
    detail: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_triggered(self, value: bool) -> RecurringChargeResult:
        self.triggered = value
        return self

    def with_code(self, value: str) -> RecurringChargeResult:
        self.code = value
        return self

    def with_detail(self, value: str) -> RecurringChargeResult:
        self.detail = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "triggered"):
            result["triggered"] = bool(self.triggered)
        elif include_empty:
            result["triggered"] = False
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "detail"):
            result["detail"] = str(self.detail)
        elif include_empty:
            result["detail"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        triggered: bool,
        code: Optional[str] = None,
        detail: Optional[str] = None,
    ) -> RecurringChargeResult:
        instance = cls()
        instance.triggered = triggered
        if code is not None:
            instance.code = code
        if detail is not None:
            instance.detail = detail
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RecurringChargeResult:
        instance = cls()
        if not dict_:
            return instance
        if "triggered" in dict_ and dict_["triggered"] is not None:
            instance.triggered = bool(dict_["triggered"])
        elif include_empty:
            instance.triggered = False
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "detail" in dict_ and dict_["detail"] is not None:
            instance.detail = str(dict_["detail"])
        elif include_empty:
            instance.detail = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RecurringChargeResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RecurringChargeResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RecurringChargeResult,
        List[RecurringChargeResult],
        Dict[Any, RecurringChargeResult],
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
            "triggered": "triggered",
            "code": "code",
            "detail": "detail",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "triggered": True,
            "code": False,
            "detail": False,
        }

    # endregion static methods
