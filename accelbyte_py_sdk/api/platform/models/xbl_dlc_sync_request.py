# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service (4.32.1)

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


class XblDLCSyncRequest(Model):
    """Xbl DLC sync request (XblDLCSyncRequest)

    Properties:
        xsts_token: (xstsToken) OPTIONAL str
    """

    # region fields

    xsts_token: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_xsts_token(self, value: str) -> XblDLCSyncRequest:
        self.xsts_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "xsts_token"):
            result["xstsToken"] = str(self.xsts_token)
        elif include_empty:
            result["xstsToken"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, xsts_token: Optional[str] = None, **kwargs) -> XblDLCSyncRequest:
        instance = cls()
        if xsts_token is not None:
            instance.xsts_token = xsts_token
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblDLCSyncRequest:
        instance = cls()
        if not dict_:
            return instance
        if "xstsToken" in dict_ and dict_["xstsToken"] is not None:
            instance.xsts_token = str(dict_["xstsToken"])
        elif include_empty:
            instance.xsts_token = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblDLCSyncRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblDLCSyncRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XblDLCSyncRequest, List[XblDLCSyncRequest], Dict[Any, XblDLCSyncRequest]
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
            "xstsToken": "xsts_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "xstsToken": False,
        }

    # endregion static methods
