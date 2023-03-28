# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service (2.7.3)

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


class ApimodelsUpdateGameSessionMemberStatusResponse(Model):
    """Apimodels update game session member status response (apimodels.UpdateGameSessionMemberStatusResponse)

    Properties:
        status: (status) REQUIRED str

        status_v2: (statusV2) REQUIRED str
    """

    # region fields

    status: str  # REQUIRED
    status_v2: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_status(self, value: str) -> ApimodelsUpdateGameSessionMemberStatusResponse:
        self.status = value
        return self

    def with_status_v2(
        self, value: str
    ) -> ApimodelsUpdateGameSessionMemberStatusResponse:
        self.status_v2 = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "status_v2"):
            result["statusV2"] = str(self.status_v2)
        elif include_empty:
            result["statusV2"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, status: str, status_v2: str, **kwargs
    ) -> ApimodelsUpdateGameSessionMemberStatusResponse:
        instance = cls()
        instance.status = status
        instance.status_v2 = status_v2
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsUpdateGameSessionMemberStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "statusV2" in dict_ and dict_["statusV2"] is not None:
            instance.status_v2 = str(dict_["statusV2"])
        elif include_empty:
            instance.status_v2 = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsUpdateGameSessionMemberStatusResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsUpdateGameSessionMemberStatusResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsUpdateGameSessionMemberStatusResponse,
        List[ApimodelsUpdateGameSessionMemberStatusResponse],
        Dict[Any, ApimodelsUpdateGameSessionMemberStatusResponse],
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
            "status": "status",
            "statusV2": "status_v2",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "status": True,
            "statusV2": True,
        }

    # endregion static methods
