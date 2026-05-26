# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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

from ..models.apimodel_key_value_credential_acknowledgements import (
    ApimodelKeyValueCredentialAcknowledgements,
)


class ApimodelIntegrateAppKeyValueRequest(Model):
    """Apimodel integrate app key value request (apimodel.IntegrateAppKeyValueRequest)

    Properties:
        acknowledgements: (acknowledgements) REQUIRED ApimodelKeyValueCredentialAcknowledgements

        password: (password) REQUIRED str

        resource_id: (resourceId) REQUIRED str

        username: (username) REQUIRED str
    """

    # region fields

    acknowledgements: ApimodelKeyValueCredentialAcknowledgements  # REQUIRED
    password: str  # REQUIRED
    resource_id: str  # REQUIRED
    username: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_acknowledgements(
        self, value: ApimodelKeyValueCredentialAcknowledgements
    ) -> ApimodelIntegrateAppKeyValueRequest:
        self.acknowledgements = value
        return self

    def with_password(self, value: str) -> ApimodelIntegrateAppKeyValueRequest:
        self.password = value
        return self

    def with_resource_id(self, value: str) -> ApimodelIntegrateAppKeyValueRequest:
        self.resource_id = value
        return self

    def with_username(self, value: str) -> ApimodelIntegrateAppKeyValueRequest:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "acknowledgements"):
            result["acknowledgements"] = self.acknowledgements.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["acknowledgements"] = ApimodelKeyValueCredentialAcknowledgements()
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "resource_id"):
            result["resourceId"] = str(self.resource_id)
        elif include_empty:
            result["resourceId"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        acknowledgements: ApimodelKeyValueCredentialAcknowledgements,
        password: str,
        resource_id: str,
        username: str,
        **kwargs,
    ) -> ApimodelIntegrateAppKeyValueRequest:
        instance = cls()
        instance.acknowledgements = acknowledgements
        instance.password = password
        instance.resource_id = resource_id
        instance.username = username
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelIntegrateAppKeyValueRequest:
        instance = cls()
        if not dict_:
            return instance
        if "acknowledgements" in dict_ and dict_["acknowledgements"] is not None:
            instance.acknowledgements = (
                ApimodelKeyValueCredentialAcknowledgements.create_from_dict(
                    dict_["acknowledgements"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.acknowledgements = ApimodelKeyValueCredentialAcknowledgements()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "resourceId" in dict_ and dict_["resourceId"] is not None:
            instance.resource_id = str(dict_["resourceId"])
        elif include_empty:
            instance.resource_id = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelIntegrateAppKeyValueRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelIntegrateAppKeyValueRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelIntegrateAppKeyValueRequest,
        List[ApimodelIntegrateAppKeyValueRequest],
        Dict[Any, ApimodelIntegrateAppKeyValueRequest],
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
            "acknowledgements": "acknowledgements",
            "password": "password",
            "resourceId": "resource_id",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "acknowledgements": True,
            "password": True,
            "resourceId": True,
            "username": True,
        }

    # endregion static methods
