# justice-platform-service (3.39.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class CodeCreateResult(Model):
    """Code create result (CodeCreateResult)

    Properties:
        num_created: (numCreated) REQUIRED int
    """

    # region fields

    num_created: int                                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_num_created(self, value: int) -> CodeCreateResult:
        self.num_created = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "num_created"):
            result["numCreated"] = int(self.num_created)
        elif include_empty:
            result["numCreated"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        num_created: int,
    ) -> CodeCreateResult:
        instance = cls()
        instance.num_created = num_created
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CodeCreateResult:
        instance = cls()
        if not dict_:
            return instance
        if "numCreated" in dict_ and dict_["numCreated"] is not None:
            instance.num_created = int(dict_["numCreated"])
        elif include_empty:
            instance.num_created = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "numCreated": "num_created",
        }

    # endregion static methods
