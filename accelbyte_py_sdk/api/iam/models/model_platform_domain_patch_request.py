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

from ..models.accountcommon_sso_config_patch_req import AccountcommonSsoConfigPatchReq


class ModelPlatformDomainPatchRequest(Model):
    """Model platform domain patch request (model.PlatformDomainPatchRequest)

    Properties:
        domain: (domain) REQUIRED str

        affected_client_i_ds: (affectedClientIDs) OPTIONAL List[str]

        assigned_namespaces: (assignedNamespaces) OPTIONAL List[str]

        role_id: (roleId) OPTIONAL str

        sso_cfg: (ssoCfg) OPTIONAL AccountcommonSsoConfigPatchReq
    """

    # region fields

    domain: str  # REQUIRED
    affected_client_i_ds: List[str]  # OPTIONAL
    assigned_namespaces: List[str]  # OPTIONAL
    role_id: str  # OPTIONAL
    sso_cfg: AccountcommonSsoConfigPatchReq  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_domain(self, value: str) -> ModelPlatformDomainPatchRequest:
        self.domain = value
        return self

    def with_affected_client_i_ds(
        self, value: List[str]
    ) -> ModelPlatformDomainPatchRequest:
        self.affected_client_i_ds = value
        return self

    def with_assigned_namespaces(
        self, value: List[str]
    ) -> ModelPlatformDomainPatchRequest:
        self.assigned_namespaces = value
        return self

    def with_role_id(self, value: str) -> ModelPlatformDomainPatchRequest:
        self.role_id = value
        return self

    def with_sso_cfg(
        self, value: AccountcommonSsoConfigPatchReq
    ) -> ModelPlatformDomainPatchRequest:
        self.sso_cfg = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "domain"):
            result["domain"] = str(self.domain)
        elif include_empty:
            result["domain"] = ""
        if hasattr(self, "affected_client_i_ds"):
            result["affectedClientIDs"] = [str(i0) for i0 in self.affected_client_i_ds]
        elif include_empty:
            result["affectedClientIDs"] = []
        if hasattr(self, "assigned_namespaces"):
            result["assignedNamespaces"] = [str(i0) for i0 in self.assigned_namespaces]
        elif include_empty:
            result["assignedNamespaces"] = []
        if hasattr(self, "role_id"):
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = ""
        if hasattr(self, "sso_cfg"):
            result["ssoCfg"] = self.sso_cfg.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ssoCfg"] = AccountcommonSsoConfigPatchReq()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        domain: str,
        affected_client_i_ds: Optional[List[str]] = None,
        assigned_namespaces: Optional[List[str]] = None,
        role_id: Optional[str] = None,
        sso_cfg: Optional[AccountcommonSsoConfigPatchReq] = None,
        **kwargs,
    ) -> ModelPlatformDomainPatchRequest:
        instance = cls()
        instance.domain = domain
        if affected_client_i_ds is not None:
            instance.affected_client_i_ds = affected_client_i_ds
        if assigned_namespaces is not None:
            instance.assigned_namespaces = assigned_namespaces
        if role_id is not None:
            instance.role_id = role_id
        if sso_cfg is not None:
            instance.sso_cfg = sso_cfg
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPlatformDomainPatchRequest:
        instance = cls()
        if not dict_:
            return instance
        if "domain" in dict_ and dict_["domain"] is not None:
            instance.domain = str(dict_["domain"])
        elif include_empty:
            instance.domain = ""
        if "affectedClientIDs" in dict_ and dict_["affectedClientIDs"] is not None:
            instance.affected_client_i_ds = [
                str(i0) for i0 in dict_["affectedClientIDs"]
            ]
        elif include_empty:
            instance.affected_client_i_ds = []
        if "assignedNamespaces" in dict_ and dict_["assignedNamespaces"] is not None:
            instance.assigned_namespaces = [
                str(i0) for i0 in dict_["assignedNamespaces"]
            ]
        elif include_empty:
            instance.assigned_namespaces = []
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        if "ssoCfg" in dict_ and dict_["ssoCfg"] is not None:
            instance.sso_cfg = AccountcommonSsoConfigPatchReq.create_from_dict(
                dict_["ssoCfg"], include_empty=include_empty
            )
        elif include_empty:
            instance.sso_cfg = AccountcommonSsoConfigPatchReq()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPlatformDomainPatchRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPlatformDomainPatchRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPlatformDomainPatchRequest,
        List[ModelPlatformDomainPatchRequest],
        Dict[Any, ModelPlatformDomainPatchRequest],
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
            "domain": "domain",
            "affectedClientIDs": "affected_client_i_ds",
            "assignedNamespaces": "assigned_namespaces",
            "roleId": "role_id",
            "ssoCfg": "sso_cfg",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "domain": True,
            "affectedClientIDs": False,
            "assignedNamespaces": False,
            "roleId": False,
            "ssoCfg": False,
        }

    # endregion static methods
