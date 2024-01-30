# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class BaseTLSConfig(Model):
    """Base TLS config (BaseTLSConfig)

    Properties:
        root_cert_file_name: (rootCertFileName) OPTIONAL str
    """

    # region fields

    root_cert_file_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_root_cert_file_name(self, value: str) -> BaseTLSConfig:
        self.root_cert_file_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "root_cert_file_name"):
            result["rootCertFileName"] = str(self.root_cert_file_name)
        elif include_empty:
            result["rootCertFileName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, root_cert_file_name: Optional[str] = None, **kwargs
    ) -> BaseTLSConfig:
        instance = cls()
        if root_cert_file_name is not None:
            instance.root_cert_file_name = root_cert_file_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BaseTLSConfig:
        instance = cls()
        if not dict_:
            return instance
        if "rootCertFileName" in dict_ and dict_["rootCertFileName"] is not None:
            instance.root_cert_file_name = str(dict_["rootCertFileName"])
        elif include_empty:
            instance.root_cert_file_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BaseTLSConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BaseTLSConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[BaseTLSConfig, List[BaseTLSConfig], Dict[Any, BaseTLSConfig]]:
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
            "rootCertFileName": "root_cert_file_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "rootCertFileName": False,
        }

    # endregion static methods
