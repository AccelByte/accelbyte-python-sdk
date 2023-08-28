# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service (7.1.0)

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


class ModelPublicInviteUserRequestV4(Model):
    """Model public invite user request V4 (model.PublicInviteUserRequestV4)

    Properties:
        email_address: (emailAddress) REQUIRED str

        namespace: (namespace) REQUIRED str

        namespace_display_name: (namespaceDisplayName) REQUIRED str
    """

    # region fields

    email_address: str  # REQUIRED
    namespace: str  # REQUIRED
    namespace_display_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_email_address(self, value: str) -> ModelPublicInviteUserRequestV4:
        self.email_address = value
        return self

    def with_namespace(self, value: str) -> ModelPublicInviteUserRequestV4:
        self.namespace = value
        return self

    def with_namespace_display_name(self, value: str) -> ModelPublicInviteUserRequestV4:
        self.namespace_display_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "namespace_display_name"):
            result["namespaceDisplayName"] = str(self.namespace_display_name)
        elif include_empty:
            result["namespaceDisplayName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, email_address: str, namespace: str, namespace_display_name: str, **kwargs
    ) -> ModelPublicInviteUserRequestV4:
        instance = cls()
        instance.email_address = email_address
        instance.namespace = namespace
        instance.namespace_display_name = namespace_display_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPublicInviteUserRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if (
            "namespaceDisplayName" in dict_
            and dict_["namespaceDisplayName"] is not None
        ):
            instance.namespace_display_name = str(dict_["namespaceDisplayName"])
        elif include_empty:
            instance.namespace_display_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPublicInviteUserRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPublicInviteUserRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPublicInviteUserRequestV4,
        List[ModelPublicInviteUserRequestV4],
        Dict[Any, ModelPublicInviteUserRequestV4],
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
            "emailAddress": "email_address",
            "namespace": "namespace",
            "namespaceDisplayName": "namespace_display_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "emailAddress": True,
            "namespace": True,
            "namespaceDisplayName": True,
        }

    # endregion static methods
