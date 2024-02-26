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

from ..models.clientmodel_client_template import ClientmodelClientTemplate


class ClientmodelListTemplatesResponse(Model):
    """Clientmodel list templates response (clientmodel.ListTemplatesResponse)

    Properties:
        client_templates: (clientTemplates) REQUIRED List[ClientmodelClientTemplate]
    """

    # region fields

    client_templates: List[ClientmodelClientTemplate]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_templates(
        self, value: List[ClientmodelClientTemplate]
    ) -> ClientmodelListTemplatesResponse:
        self.client_templates = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_templates"):
            result["clientTemplates"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.client_templates
            ]
        elif include_empty:
            result["clientTemplates"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, client_templates: List[ClientmodelClientTemplate], **kwargs
    ) -> ClientmodelListTemplatesResponse:
        instance = cls()
        instance.client_templates = client_templates
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientmodelListTemplatesResponse:
        instance = cls()
        if not dict_:
            return instance
        if "clientTemplates" in dict_ and dict_["clientTemplates"] is not None:
            instance.client_templates = [
                ClientmodelClientTemplate.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["clientTemplates"]
            ]
        elif include_empty:
            instance.client_templates = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientmodelListTemplatesResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientmodelListTemplatesResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientmodelListTemplatesResponse,
        List[ClientmodelListTemplatesResponse],
        Dict[Any, ClientmodelListTemplatesResponse],
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
            "clientTemplates": "client_templates",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientTemplates": True,
        }

    # endregion static methods
