# justice-cloudsave-service (2.1.0)

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
import copy
from collections.abc import MutableMapping
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelsGameRecordRequest(Model, MutableMapping):
    """Models game record request (models.GameRecordRequest)

    Properties:
    """

    # region mutable mapping

    def __init__(self):
        self.store = dict()

    def __getitem__(self, key):
        return self.store[self._keytransform(key)]

    def __setitem__(self, key, value):
        self.store[self._keytransform(key)] = value

    def __delitem__(self, key):
        del self.store[self._keytransform(key)]

    def __iter__(self):
        return iter(self.store)

    def __len__(self):
        return len(self.store)

    # noinspection PyMethodMayBeStatic
    def _keytransform(self, key):
        return key

    # endregion mutable mapping

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        return copy.deepcopy(self.store)

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        dict_: Optional[dict] = None,
    ) -> ModelsGameRecordRequest:
        instance = cls()
        if dict_ is not None:
            instance.store = copy.deepcopy(dict_)
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGameRecordRequest:
        instance = cls()
        if not dict_:
            return instance
        instance.store = copy.deepcopy(dict_)
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
        }

    # endregion static methods
