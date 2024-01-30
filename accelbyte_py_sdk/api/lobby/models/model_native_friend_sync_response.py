# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Lobby Server

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


class ModelNativeFriendSyncResponse(Model):
    """Model native friend sync response (model.NativeFriendSyncResponse)

    Properties:
        platform_id: (platformId) REQUIRED str

        status: (status) REQUIRED str

        detail: (detail) OPTIONAL str
    """

    # region fields

    platform_id: str  # REQUIRED
    status: str  # REQUIRED
    detail: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform_id(self, value: str) -> ModelNativeFriendSyncResponse:
        self.platform_id = value
        return self

    def with_status(self, value: str) -> ModelNativeFriendSyncResponse:
        self.status = value
        return self

    def with_detail(self, value: str) -> ModelNativeFriendSyncResponse:
        self.detail = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "detail"):
            result["detail"] = str(self.detail)
        elif include_empty:
            result["detail"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, platform_id: str, status: str, detail: Optional[str] = None, **kwargs
    ) -> ModelNativeFriendSyncResponse:
        instance = cls()
        instance.platform_id = platform_id
        instance.status = status
        if detail is not None:
            instance.detail = detail
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelNativeFriendSyncResponse:
        instance = cls()
        if not dict_:
            return instance
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "detail" in dict_ and dict_["detail"] is not None:
            instance.detail = str(dict_["detail"])
        elif include_empty:
            instance.detail = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelNativeFriendSyncResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelNativeFriendSyncResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelNativeFriendSyncResponse,
        List[ModelNativeFriendSyncResponse],
        Dict[Any, ModelNativeFriendSyncResponse],
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
            "platformId": "platform_id",
            "status": "status",
            "detail": "detail",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformId": True,
            "status": True,
            "detail": False,
        }

    # endregion static methods
