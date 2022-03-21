# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-social-service (1.26.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class GlobalStatItemInfo(Model):
    """Global stat item info (GlobalStatItemInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        stat_code: (statCode) REQUIRED str

        stat_name: (statName) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        value: (value) REQUIRED float

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    created_at: str                                                                                # REQUIRED
    namespace: str                                                                                 # REQUIRED
    stat_code: str                                                                                 # REQUIRED
    stat_name: str                                                                                 # REQUIRED
    updated_at: str                                                                                # REQUIRED
    value: float                                                                                   # REQUIRED
    tags: List[str]                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> GlobalStatItemInfo:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> GlobalStatItemInfo:
        self.namespace = value
        return self

    def with_stat_code(self, value: str) -> GlobalStatItemInfo:
        self.stat_code = value
        return self

    def with_stat_name(self, value: str) -> GlobalStatItemInfo:
        self.stat_name = value
        return self

    def with_updated_at(self, value: str) -> GlobalStatItemInfo:
        self.updated_at = value
        return self

    def with_value(self, value: float) -> GlobalStatItemInfo:
        self.value = value
        return self

    def with_tags(self, value: List[str]) -> GlobalStatItemInfo:
        self.tags = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "created_at") or self.created_at is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "stat_code") or self.stat_code is None:
            return False
        if not hasattr(self, "stat_name") or self.stat_name is None:
            return False
        if not hasattr(self, "updated_at") or self.updated_at is None:
            return False
        if not hasattr(self, "value") or self.value is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = str()
        if hasattr(self, "stat_name"):
            result["statName"] = str(self.stat_name)
        elif include_empty:
            result["statName"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "value"):
            result["value"] = float(self.value)
        elif include_empty:
            result["value"] = float()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        namespace: str,
        stat_code: str,
        stat_name: str,
        updated_at: str,
        value: float,
        tags: Optional[List[str]] = None,
    ) -> GlobalStatItemInfo:
        instance = cls()
        instance.created_at = created_at
        instance.namespace = namespace
        instance.stat_code = stat_code
        instance.stat_name = stat_name
        instance.updated_at = updated_at
        instance.value = value
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GlobalStatItemInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = str()
        if "statName" in dict_ and dict_["statName"] is not None:
            instance.stat_name = str(dict_["statName"])
        elif include_empty:
            instance.stat_name = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = float(dict_["value"])
        elif include_empty:
            instance.value = float()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, GlobalStatItemInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[GlobalStatItemInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[GlobalStatItemInfo, List[GlobalStatItemInfo]]:
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
            "createdAt": "created_at",
            "namespace": "namespace",
            "statCode": "stat_code",
            "statName": "stat_name",
            "updatedAt": "updated_at",
            "value": "value",
            "tags": "tags",
        }

    # endregion static methods
