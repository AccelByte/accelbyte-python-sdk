# justice-legal-service (1.17.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class LegalReadinessStatusResponse(Model):
    """Legal readiness status response (LegalReadinessStatusResponse)

    Properties:
        is_ready: (isReady) OPTIONAL bool
    """

    # region fields

    is_ready: bool                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_is_ready(self, value: bool) -> LegalReadinessStatusResponse:
        self.is_ready = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_ready"):
            result["isReady"] = bool(self.is_ready)
        elif include_empty:
            result["isReady"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_ready: Optional[bool] = None,
    ) -> LegalReadinessStatusResponse:
        instance = cls()
        if is_ready is not None:
            instance.is_ready = is_ready
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> LegalReadinessStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "isReady" in dict_ and dict_["isReady"] is not None:
            instance.is_ready = bool(dict_["isReady"])
        elif include_empty:
            instance.is_ready = bool()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, LegalReadinessStatusResponse]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[LegalReadinessStatusResponse]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[LegalReadinessStatusResponse, List[LegalReadinessStatusResponse]]:
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
            "isReady": "is_ready",
        }

    # endregion static methods
