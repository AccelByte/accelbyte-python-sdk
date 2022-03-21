# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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


class ModelUserCreateRequest(Model):
    """Model user create request (model.UserCreateRequest)

    Properties:
        auth_type: (AuthType) REQUIRED str

        country: (Country) REQUIRED str

        display_name: (DisplayName) REQUIRED str

        login_id: (LoginId) REQUIRED str

        password: (Password) REQUIRED str

        password_md5_sum: (PasswordMD5Sum) OPTIONAL str
    """

    # region fields

    auth_type: str                                                                                 # REQUIRED
    country: str                                                                                   # REQUIRED
    display_name: str                                                                              # REQUIRED
    login_id: str                                                                                  # REQUIRED
    password: str                                                                                  # REQUIRED
    password_md5_sum: str                                                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auth_type(self, value: str) -> ModelUserCreateRequest:
        self.auth_type = value
        return self

    def with_country(self, value: str) -> ModelUserCreateRequest:
        self.country = value
        return self

    def with_display_name(self, value: str) -> ModelUserCreateRequest:
        self.display_name = value
        return self

    def with_login_id(self, value: str) -> ModelUserCreateRequest:
        self.login_id = value
        return self

    def with_password(self, value: str) -> ModelUserCreateRequest:
        self.password = value
        return self

    def with_password_md5_sum(self, value: str) -> ModelUserCreateRequest:
        self.password_md5_sum = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "auth_type") or self.auth_type is None:
            return False
        if not hasattr(self, "country") or self.country is None:
            return False
        if not hasattr(self, "display_name") or self.display_name is None:
            return False
        if not hasattr(self, "login_id") or self.login_id is None:
            return False
        if not hasattr(self, "password") or self.password is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_type"):
            result["AuthType"] = str(self.auth_type)
        elif include_empty:
            result["AuthType"] = str()
        if hasattr(self, "country"):
            result["Country"] = str(self.country)
        elif include_empty:
            result["Country"] = str()
        if hasattr(self, "display_name"):
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = str()
        if hasattr(self, "login_id"):
            result["LoginId"] = str(self.login_id)
        elif include_empty:
            result["LoginId"] = str()
        if hasattr(self, "password"):
            result["Password"] = str(self.password)
        elif include_empty:
            result["Password"] = str()
        if hasattr(self, "password_md5_sum"):
            result["PasswordMD5Sum"] = str(self.password_md5_sum)
        elif include_empty:
            result["PasswordMD5Sum"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auth_type: str,
        country: str,
        display_name: str,
        login_id: str,
        password: str,
        password_md5_sum: Optional[str] = None,
    ) -> ModelUserCreateRequest:
        instance = cls()
        instance.auth_type = auth_type
        instance.country = country
        instance.display_name = display_name
        instance.login_id = login_id
        instance.password = password
        if password_md5_sum is not None:
            instance.password_md5_sum = password_md5_sum
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserCreateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "AuthType" in dict_ and dict_["AuthType"] is not None:
            instance.auth_type = str(dict_["AuthType"])
        elif include_empty:
            instance.auth_type = str()
        if "Country" in dict_ and dict_["Country"] is not None:
            instance.country = str(dict_["Country"])
        elif include_empty:
            instance.country = str()
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = str()
        if "LoginId" in dict_ and dict_["LoginId"] is not None:
            instance.login_id = str(dict_["LoginId"])
        elif include_empty:
            instance.login_id = str()
        if "Password" in dict_ and dict_["Password"] is not None:
            instance.password = str(dict_["Password"])
        elif include_empty:
            instance.password = str()
        if "PasswordMD5Sum" in dict_ and dict_["PasswordMD5Sum"] is not None:
            instance.password_md5_sum = str(dict_["PasswordMD5Sum"])
        elif include_empty:
            instance.password_md5_sum = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelUserCreateRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelUserCreateRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelUserCreateRequest, List[ModelUserCreateRequest]]:
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
            "AuthType": "auth_type",
            "Country": "country",
            "DisplayName": "display_name",
            "LoginId": "login_id",
            "Password": "password",
            "PasswordMD5Sum": "password_md5_sum",
        }

    # endregion static methods
