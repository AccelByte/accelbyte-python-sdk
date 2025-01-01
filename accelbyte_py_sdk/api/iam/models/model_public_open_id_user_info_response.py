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


class ModelPublicOpenIDUserInfoResponse(Model):
    """Model public open ID user info response (model.PublicOpenIDUserInfoResponse)

    Properties:
        email: (email) REQUIRED str

        name: (name) REQUIRED str

        picture: (picture) REQUIRED str

        sub: (sub) REQUIRED str
    """

    # region fields

    email: str  # REQUIRED
    name: str  # REQUIRED
    picture: str  # REQUIRED
    sub: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_email(self, value: str) -> ModelPublicOpenIDUserInfoResponse:
        self.email = value
        return self

    def with_name(self, value: str) -> ModelPublicOpenIDUserInfoResponse:
        self.name = value
        return self

    def with_picture(self, value: str) -> ModelPublicOpenIDUserInfoResponse:
        self.picture = value
        return self

    def with_sub(self, value: str) -> ModelPublicOpenIDUserInfoResponse:
        self.sub = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email"):
            result["email"] = str(self.email)
        elif include_empty:
            result["email"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "picture"):
            result["picture"] = str(self.picture)
        elif include_empty:
            result["picture"] = ""
        if hasattr(self, "sub"):
            result["sub"] = str(self.sub)
        elif include_empty:
            result["sub"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, email: str, name: str, picture: str, sub: str, **kwargs
    ) -> ModelPublicOpenIDUserInfoResponse:
        instance = cls()
        instance.email = email
        instance.name = name
        instance.picture = picture
        instance.sub = sub
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPublicOpenIDUserInfoResponse:
        instance = cls()
        if not dict_:
            return instance
        if "email" in dict_ and dict_["email"] is not None:
            instance.email = str(dict_["email"])
        elif include_empty:
            instance.email = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "picture" in dict_ and dict_["picture"] is not None:
            instance.picture = str(dict_["picture"])
        elif include_empty:
            instance.picture = ""
        if "sub" in dict_ and dict_["sub"] is not None:
            instance.sub = str(dict_["sub"])
        elif include_empty:
            instance.sub = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPublicOpenIDUserInfoResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPublicOpenIDUserInfoResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPublicOpenIDUserInfoResponse,
        List[ModelPublicOpenIDUserInfoResponse],
        Dict[Any, ModelPublicOpenIDUserInfoResponse],
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
            "email": "email",
            "name": "name",
            "picture": "picture",
            "sub": "sub",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "email": True,
            "name": True,
            "picture": True,
            "sub": True,
        }

    # endregion static methods
