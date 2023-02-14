# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Cloudsave Service (3.6.1)

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
        self.store = {}

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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGameRecordRequest:
        instance = cls()
        if not dict_:
            return instance
        instance.store = copy.deepcopy(dict_)
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGameRecordRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGameRecordRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGameRecordRequest,
        List[ModelsGameRecordRequest],
        Dict[Any, ModelsGameRecordRequest],
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
        return {}

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {}

    # endregion static methods
