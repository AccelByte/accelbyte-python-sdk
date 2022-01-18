# justice-dsm-controller-service (2.13.1)

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


class ModelsDefaultProvider(Model):
    """Models default provider (models.DefaultProvider)

    Properties:
        provider_name: (provider_name) REQUIRED str
    """

    # region fields

    provider_name: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_provider_name(self, value: str) -> ModelsDefaultProvider:
        self.provider_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "provider_name"):
            result["provider_name"] = str(self.provider_name)
        elif include_empty:
            result["provider_name"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        provider_name: str,
    ) -> ModelsDefaultProvider:
        instance = cls()
        instance.provider_name = provider_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDefaultProvider:
        instance = cls()
        if not dict_:
            return instance
        if "provider_name" in dict_ and dict_["provider_name"] is not None:
            instance.provider_name = str(dict_["provider_name"])
        elif include_empty:
            instance.provider_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "provider_name": "provider_name",
        }

    # endregion static methods
