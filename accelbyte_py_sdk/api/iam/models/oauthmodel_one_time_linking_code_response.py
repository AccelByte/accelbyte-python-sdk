# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class OauthmodelOneTimeLinkingCodeResponse(Model):
    """Oauthmodel one time linking code response (oauthmodel.OneTimeLinkingCodeResponse)

    Properties:
        exp: (exp) REQUIRED int

        one_time_link_code: (oneTimeLinkCode) REQUIRED str

        one_time_link_url: (oneTimeLinkUrl) REQUIRED str
    """

    # region fields

    exp: int  # REQUIRED
    one_time_link_code: str  # REQUIRED
    one_time_link_url: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_exp(self, value: int) -> OauthmodelOneTimeLinkingCodeResponse:
        self.exp = value
        return self

    def with_one_time_link_code(
        self, value: str
    ) -> OauthmodelOneTimeLinkingCodeResponse:
        self.one_time_link_code = value
        return self

    def with_one_time_link_url(
        self, value: str
    ) -> OauthmodelOneTimeLinkingCodeResponse:
        self.one_time_link_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "exp"):
            result["exp"] = int(self.exp)
        elif include_empty:
            result["exp"] = 0
        if hasattr(self, "one_time_link_code"):
            result["oneTimeLinkCode"] = str(self.one_time_link_code)
        elif include_empty:
            result["oneTimeLinkCode"] = ""
        if hasattr(self, "one_time_link_url"):
            result["oneTimeLinkUrl"] = str(self.one_time_link_url)
        elif include_empty:
            result["oneTimeLinkUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        exp: int,
        one_time_link_code: str,
        one_time_link_url: str,
    ) -> OauthmodelOneTimeLinkingCodeResponse:
        instance = cls()
        instance.exp = exp
        instance.one_time_link_code = one_time_link_code
        instance.one_time_link_url = one_time_link_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelOneTimeLinkingCodeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "exp" in dict_ and dict_["exp"] is not None:
            instance.exp = int(dict_["exp"])
        elif include_empty:
            instance.exp = 0
        if "oneTimeLinkCode" in dict_ and dict_["oneTimeLinkCode"] is not None:
            instance.one_time_link_code = str(dict_["oneTimeLinkCode"])
        elif include_empty:
            instance.one_time_link_code = ""
        if "oneTimeLinkUrl" in dict_ and dict_["oneTimeLinkUrl"] is not None:
            instance.one_time_link_url = str(dict_["oneTimeLinkUrl"])
        elif include_empty:
            instance.one_time_link_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelOneTimeLinkingCodeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelOneTimeLinkingCodeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelOneTimeLinkingCodeResponse,
        List[OauthmodelOneTimeLinkingCodeResponse],
        Dict[Any, OauthmodelOneTimeLinkingCodeResponse],
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
            "exp": "exp",
            "oneTimeLinkCode": "one_time_link_code",
            "oneTimeLinkUrl": "one_time_link_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "exp": True,
            "oneTimeLinkCode": True,
            "oneTimeLinkUrl": True,
        }

    # endregion static methods
