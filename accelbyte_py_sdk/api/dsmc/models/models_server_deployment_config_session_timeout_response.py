# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Dsm Controller Service

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


class ModelsServerDeploymentConfigSessionTimeoutResponse(Model):
    """Models server deployment config session timeout response (models.ServerDeploymentConfigSessionTimeoutResponse)

    Properties:
        session_timeout: (session_timeout) REQUIRED int
    """

    # region fields

    session_timeout: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_session_timeout(
        self, value: int
    ) -> ModelsServerDeploymentConfigSessionTimeoutResponse:
        self.session_timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "session_timeout"):
            result["session_timeout"] = int(self.session_timeout)
        elif include_empty:
            result["session_timeout"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, session_timeout: int, **kwargs
    ) -> ModelsServerDeploymentConfigSessionTimeoutResponse:
        instance = cls()
        instance.session_timeout = session_timeout
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsServerDeploymentConfigSessionTimeoutResponse:
        instance = cls()
        if not dict_:
            return instance
        if "session_timeout" in dict_ and dict_["session_timeout"] is not None:
            instance.session_timeout = int(dict_["session_timeout"])
        elif include_empty:
            instance.session_timeout = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsServerDeploymentConfigSessionTimeoutResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsServerDeploymentConfigSessionTimeoutResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsServerDeploymentConfigSessionTimeoutResponse,
        List[ModelsServerDeploymentConfigSessionTimeoutResponse],
        Dict[Any, ModelsServerDeploymentConfigSessionTimeoutResponse],
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
            "session_timeout": "session_timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "session_timeout": True,
        }

    # endregion static methods
