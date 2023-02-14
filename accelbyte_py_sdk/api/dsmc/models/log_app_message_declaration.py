# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

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


class LogAppMessageDeclaration(Model):
    """Log app message declaration (log.AppMessageDeclaration)

    Properties:
        attributes: (Attributes) REQUIRED List[str]

        code: (Code) REQUIRED str

        code_name: (CodeName) REQUIRED str

        section: (Section) REQUIRED str

        service: (Service) REQUIRED str

        text: (Text) REQUIRED str
    """

    # region fields

    attributes: List[str]  # REQUIRED
    code: str  # REQUIRED
    code_name: str  # REQUIRED
    section: str  # REQUIRED
    service: str  # REQUIRED
    text: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: List[str]) -> LogAppMessageDeclaration:
        self.attributes = value
        return self

    def with_code(self, value: str) -> LogAppMessageDeclaration:
        self.code = value
        return self

    def with_code_name(self, value: str) -> LogAppMessageDeclaration:
        self.code_name = value
        return self

    def with_section(self, value: str) -> LogAppMessageDeclaration:
        self.section = value
        return self

    def with_service(self, value: str) -> LogAppMessageDeclaration:
        self.service = value
        return self

    def with_text(self, value: str) -> LogAppMessageDeclaration:
        self.text = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["Attributes"] = [str(i0) for i0 in self.attributes]
        elif include_empty:
            result["Attributes"] = []
        if hasattr(self, "code"):
            result["Code"] = str(self.code)
        elif include_empty:
            result["Code"] = ""
        if hasattr(self, "code_name"):
            result["CodeName"] = str(self.code_name)
        elif include_empty:
            result["CodeName"] = ""
        if hasattr(self, "section"):
            result["Section"] = str(self.section)
        elif include_empty:
            result["Section"] = ""
        if hasattr(self, "service"):
            result["Service"] = str(self.service)
        elif include_empty:
            result["Service"] = ""
        if hasattr(self, "text"):
            result["Text"] = str(self.text)
        elif include_empty:
            result["Text"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: List[str],
        code: str,
        code_name: str,
        section: str,
        service: str,
        text: str,
    ) -> LogAppMessageDeclaration:
        instance = cls()
        instance.attributes = attributes
        instance.code = code
        instance.code_name = code_name
        instance.section = section
        instance.service = service
        instance.text = text
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LogAppMessageDeclaration:
        instance = cls()
        if not dict_:
            return instance
        if "Attributes" in dict_ and dict_["Attributes"] is not None:
            instance.attributes = [str(i0) for i0 in dict_["Attributes"]]
        elif include_empty:
            instance.attributes = []
        if "Code" in dict_ and dict_["Code"] is not None:
            instance.code = str(dict_["Code"])
        elif include_empty:
            instance.code = ""
        if "CodeName" in dict_ and dict_["CodeName"] is not None:
            instance.code_name = str(dict_["CodeName"])
        elif include_empty:
            instance.code_name = ""
        if "Section" in dict_ and dict_["Section"] is not None:
            instance.section = str(dict_["Section"])
        elif include_empty:
            instance.section = ""
        if "Service" in dict_ and dict_["Service"] is not None:
            instance.service = str(dict_["Service"])
        elif include_empty:
            instance.service = ""
        if "Text" in dict_ and dict_["Text"] is not None:
            instance.text = str(dict_["Text"])
        elif include_empty:
            instance.text = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LogAppMessageDeclaration]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LogAppMessageDeclaration]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        LogAppMessageDeclaration,
        List[LogAppMessageDeclaration],
        Dict[Any, LogAppMessageDeclaration],
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
            "Attributes": "attributes",
            "Code": "code",
            "CodeName": "code_name",
            "Section": "section",
            "Service": "service",
            "Text": "text",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Attributes": True,
            "Code": True,
            "CodeName": True,
            "Section": True,
            "Service": True,
            "Text": True,
        }

    # endregion static methods
