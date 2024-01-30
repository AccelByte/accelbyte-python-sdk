# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class OauthmodelTokenThirdPartyResponse(Model):
    """Oauthmodel token third party response (oauthmodel.TokenThirdPartyResponse)

    Properties:
        platform_token: (platform_token) REQUIRED str

        platform_token_expires_at: (platform_token_expires_at) OPTIONAL int

        platform_user_id: (platformUserId) OPTIONAL str

        sand_box_id: (sand_box_id) OPTIONAL str
    """

    # region fields

    platform_token: str  # REQUIRED
    platform_token_expires_at: int  # OPTIONAL
    platform_user_id: str  # OPTIONAL
    sand_box_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform_token(self, value: str) -> OauthmodelTokenThirdPartyResponse:
        self.platform_token = value
        return self

    def with_platform_token_expires_at(
        self, value: int
    ) -> OauthmodelTokenThirdPartyResponse:
        self.platform_token_expires_at = value
        return self

    def with_platform_user_id(self, value: str) -> OauthmodelTokenThirdPartyResponse:
        self.platform_user_id = value
        return self

    def with_sand_box_id(self, value: str) -> OauthmodelTokenThirdPartyResponse:
        self.sand_box_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_token"):
            result["platform_token"] = str(self.platform_token)
        elif include_empty:
            result["platform_token"] = ""
        if hasattr(self, "platform_token_expires_at"):
            result["platform_token_expires_at"] = int(self.platform_token_expires_at)
        elif include_empty:
            result["platform_token_expires_at"] = 0
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        if hasattr(self, "sand_box_id"):
            result["sand_box_id"] = str(self.sand_box_id)
        elif include_empty:
            result["sand_box_id"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_token: str,
        platform_token_expires_at: Optional[int] = None,
        platform_user_id: Optional[str] = None,
        sand_box_id: Optional[str] = None,
        **kwargs,
    ) -> OauthmodelTokenThirdPartyResponse:
        instance = cls()
        instance.platform_token = platform_token
        if platform_token_expires_at is not None:
            instance.platform_token_expires_at = platform_token_expires_at
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        if sand_box_id is not None:
            instance.sand_box_id = sand_box_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelTokenThirdPartyResponse:
        instance = cls()
        if not dict_:
            return instance
        if "platform_token" in dict_ and dict_["platform_token"] is not None:
            instance.platform_token = str(dict_["platform_token"])
        elif include_empty:
            instance.platform_token = ""
        if (
            "platform_token_expires_at" in dict_
            and dict_["platform_token_expires_at"] is not None
        ):
            instance.platform_token_expires_at = int(dict_["platform_token_expires_at"])
        elif include_empty:
            instance.platform_token_expires_at = 0
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        if "sand_box_id" in dict_ and dict_["sand_box_id"] is not None:
            instance.sand_box_id = str(dict_["sand_box_id"])
        elif include_empty:
            instance.sand_box_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelTokenThirdPartyResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelTokenThirdPartyResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelTokenThirdPartyResponse,
        List[OauthmodelTokenThirdPartyResponse],
        Dict[Any, OauthmodelTokenThirdPartyResponse],
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
            "platform_token": "platform_token",
            "platform_token_expires_at": "platform_token_expires_at",
            "platformUserId": "platform_user_id",
            "sand_box_id": "sand_box_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platform_token": True,
            "platform_token_expires_at": False,
            "platformUserId": False,
            "sand_box_id": False,
        }

    # endregion static methods
