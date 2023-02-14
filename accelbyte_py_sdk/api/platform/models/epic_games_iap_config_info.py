# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class EpicGamesIAPConfigInfo(Model):
    """Epic games IAP config info (EpicGamesIAPConfigInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        sandbox_id: (sandboxId) REQUIRED str
    """

    # region fields

    namespace: str  # REQUIRED
    sandbox_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> EpicGamesIAPConfigInfo:
        self.namespace = value
        return self

    def with_sandbox_id(self, value: str) -> EpicGamesIAPConfigInfo:
        self.sandbox_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "sandbox_id"):
            result["sandboxId"] = str(self.sandbox_id)
        elif include_empty:
            result["sandboxId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        sandbox_id: str,
    ) -> EpicGamesIAPConfigInfo:
        instance = cls()
        instance.namespace = namespace
        instance.sandbox_id = sandbox_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EpicGamesIAPConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "sandboxId" in dict_ and dict_["sandboxId"] is not None:
            instance.sandbox_id = str(dict_["sandboxId"])
        elif include_empty:
            instance.sandbox_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EpicGamesIAPConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EpicGamesIAPConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EpicGamesIAPConfigInfo,
        List[EpicGamesIAPConfigInfo],
        Dict[Any, EpicGamesIAPConfigInfo],
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
            "namespace": "namespace",
            "sandboxId": "sandbox_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "sandboxId": True,
        }

    # endregion static methods
