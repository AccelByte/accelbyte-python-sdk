# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Basic Service (2.5.0)

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


class UserZipCodeUpdate(Model):
    """User zip code update (UserZipCodeUpdate)

    Properties:
        zip_code: (zipCode) REQUIRED str
    """

    # region fields

    zip_code: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_zip_code(self, value: str) -> UserZipCodeUpdate:
        self.zip_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "zip_code"):
            result["zipCode"] = str(self.zip_code)
        elif include_empty:
            result["zipCode"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        zip_code: str,
    ) -> UserZipCodeUpdate:
        instance = cls()
        instance.zip_code = zip_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserZipCodeUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "zipCode" in dict_ and dict_["zipCode"] is not None:
            instance.zip_code = str(dict_["zipCode"])
        elif include_empty:
            instance.zip_code = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserZipCodeUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserZipCodeUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UserZipCodeUpdate, List[UserZipCodeUpdate], Dict[Any, UserZipCodeUpdate]
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
            "zipCode": "zip_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "zipCode": True,
        }

    # endregion static methods
