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

from ..models.accountcommon_client_module_permission import (
    AccountcommonClientModulePermission,
)
from ..models.clientmodel_default_field_value import ClientmodelDefaultFieldValue


class ClientmodelClientTemplate(Model):
    """Clientmodel client template (clientmodel.ClientTemplate)

    Properties:
        basic_required_permissions: (basicRequiredPermissions) REQUIRED List[AccountcommonClientModulePermission]

        default_values: (defaultValues) REQUIRED List[ClientmodelDefaultFieldValue]

        description: (description) REQUIRED str

        id_: (id) REQUIRED str

        required_fields: (requiredFields) REQUIRED List[str]

        type_: (type) REQUIRED str
    """

    # region fields

    basic_required_permissions: List[AccountcommonClientModulePermission]  # REQUIRED
    default_values: List[ClientmodelDefaultFieldValue]  # REQUIRED
    description: str  # REQUIRED
    id_: str  # REQUIRED
    required_fields: List[str]  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_basic_required_permissions(
        self, value: List[AccountcommonClientModulePermission]
    ) -> ClientmodelClientTemplate:
        self.basic_required_permissions = value
        return self

    def with_default_values(
        self, value: List[ClientmodelDefaultFieldValue]
    ) -> ClientmodelClientTemplate:
        self.default_values = value
        return self

    def with_description(self, value: str) -> ClientmodelClientTemplate:
        self.description = value
        return self

    def with_id(self, value: str) -> ClientmodelClientTemplate:
        self.id_ = value
        return self

    def with_required_fields(self, value: List[str]) -> ClientmodelClientTemplate:
        self.required_fields = value
        return self

    def with_type(self, value: str) -> ClientmodelClientTemplate:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "basic_required_permissions"):
            result["basicRequiredPermissions"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.basic_required_permissions
            ]
        elif include_empty:
            result["basicRequiredPermissions"] = []
        if hasattr(self, "default_values"):
            result["defaultValues"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.default_values
            ]
        elif include_empty:
            result["defaultValues"] = []
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "required_fields"):
            result["requiredFields"] = [str(i0) for i0 in self.required_fields]
        elif include_empty:
            result["requiredFields"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        basic_required_permissions: List[AccountcommonClientModulePermission],
        default_values: List[ClientmodelDefaultFieldValue],
        description: str,
        id_: str,
        required_fields: List[str],
        type_: str,
        **kwargs,
    ) -> ClientmodelClientTemplate:
        instance = cls()
        instance.basic_required_permissions = basic_required_permissions
        instance.default_values = default_values
        instance.description = description
        instance.id_ = id_
        instance.required_fields = required_fields
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientmodelClientTemplate:
        instance = cls()
        if not dict_:
            return instance
        if (
            "basicRequiredPermissions" in dict_
            and dict_["basicRequiredPermissions"] is not None
        ):
            instance.basic_required_permissions = [
                AccountcommonClientModulePermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["basicRequiredPermissions"]
            ]
        elif include_empty:
            instance.basic_required_permissions = []
        if "defaultValues" in dict_ and dict_["defaultValues"] is not None:
            instance.default_values = [
                ClientmodelDefaultFieldValue.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["defaultValues"]
            ]
        elif include_empty:
            instance.default_values = []
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "requiredFields" in dict_ and dict_["requiredFields"] is not None:
            instance.required_fields = [str(i0) for i0 in dict_["requiredFields"]]
        elif include_empty:
            instance.required_fields = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientmodelClientTemplate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientmodelClientTemplate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientmodelClientTemplate,
        List[ClientmodelClientTemplate],
        Dict[Any, ClientmodelClientTemplate],
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
            "basicRequiredPermissions": "basic_required_permissions",
            "defaultValues": "default_values",
            "description": "description",
            "id": "id_",
            "requiredFields": "required_fields",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "basicRequiredPermissions": True,
            "defaultValues": True,
            "description": True,
            "id": True,
            "requiredFields": True,
            "type": True,
        }

    # endregion static methods
