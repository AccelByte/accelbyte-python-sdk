# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service (4.43.0)

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


class XblIAPConfigRequest(Model):
    """Xbl IAP config request (XblIAPConfigRequest)

    Properties:
        relying_party_cert: (relyingPartyCert) REQUIRED str
    """

    # region fields

    relying_party_cert: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_relying_party_cert(self, value: str) -> XblIAPConfigRequest:
        self.relying_party_cert = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "relying_party_cert"):
            result["relyingPartyCert"] = str(self.relying_party_cert)
        elif include_empty:
            result["relyingPartyCert"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, relying_party_cert: str, **kwargs) -> XblIAPConfigRequest:
        instance = cls()
        instance.relying_party_cert = relying_party_cert
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblIAPConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "relyingPartyCert" in dict_ and dict_["relyingPartyCert"] is not None:
            instance.relying_party_cert = str(dict_["relyingPartyCert"])
        elif include_empty:
            instance.relying_party_cert = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblIAPConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblIAPConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XblIAPConfigRequest, List[XblIAPConfigRequest], Dict[Any, XblIAPConfigRequest]
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
            "relyingPartyCert": "relying_party_cert",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "relyingPartyCert": True,
        }

    # endregion static methods
