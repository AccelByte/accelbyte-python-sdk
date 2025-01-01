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


class ModelOneTimeCodeLinkRedirectionResponse(Model):
    """Model one time code link redirection response (model.OneTimeCodeLinkRedirectionResponse)

    Properties:
        redirect_uri: (redirectUri) REQUIRED str
    """

    # region fields

    redirect_uri: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_redirect_uri(self, value: str) -> ModelOneTimeCodeLinkRedirectionResponse:
        self.redirect_uri = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "redirect_uri"):
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, redirect_uri: str, **kwargs
    ) -> ModelOneTimeCodeLinkRedirectionResponse:
        instance = cls()
        instance.redirect_uri = redirect_uri
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelOneTimeCodeLinkRedirectionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelOneTimeCodeLinkRedirectionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelOneTimeCodeLinkRedirectionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelOneTimeCodeLinkRedirectionResponse,
        List[ModelOneTimeCodeLinkRedirectionResponse],
        Dict[Any, ModelOneTimeCodeLinkRedirectionResponse],
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
            "redirectUri": "redirect_uri",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "redirectUri": True,
        }

    # endregion static methods
