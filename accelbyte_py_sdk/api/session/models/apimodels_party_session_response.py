# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Service (2.6.1)

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

from ..models.apimodels_public_configuration import ApimodelsPublicConfiguration
from ..models.apimodels_user_response import ApimodelsUserResponse


class ApimodelsPartySessionResponse(Model):
    """Apimodels party session response (apimodels.PartySessionResponse)

    Properties:
        attributes: (attributes) REQUIRED Dict[str, Any]

        configuration: (configuration) REQUIRED ApimodelsPublicConfiguration

        created_at: (createdAt) REQUIRED str

        created_by: (createdBy) REQUIRED str

        id_: (id) REQUIRED str

        is_active: (isActive) REQUIRED bool

        is_full: (isFull) REQUIRED bool

        leader_id: (leaderID) REQUIRED str

        members: (members) REQUIRED List[ApimodelsUserResponse]

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        version: (version) REQUIRED int

        code: (code) OPTIONAL str

        expired_at: (expiredAt) OPTIONAL str
    """

    # region fields

    attributes: Dict[str, Any]  # REQUIRED
    configuration: ApimodelsPublicConfiguration  # REQUIRED
    created_at: str  # REQUIRED
    created_by: str  # REQUIRED
    id_: str  # REQUIRED
    is_active: bool  # REQUIRED
    is_full: bool  # REQUIRED
    leader_id: str  # REQUIRED
    members: List[ApimodelsUserResponse]  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    version: int  # REQUIRED
    code: str  # OPTIONAL
    expired_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, Any]) -> ApimodelsPartySessionResponse:
        self.attributes = value
        return self

    def with_configuration(
        self, value: ApimodelsPublicConfiguration
    ) -> ApimodelsPartySessionResponse:
        self.configuration = value
        return self

    def with_created_at(self, value: str) -> ApimodelsPartySessionResponse:
        self.created_at = value
        return self

    def with_created_by(self, value: str) -> ApimodelsPartySessionResponse:
        self.created_by = value
        return self

    def with_id(self, value: str) -> ApimodelsPartySessionResponse:
        self.id_ = value
        return self

    def with_is_active(self, value: bool) -> ApimodelsPartySessionResponse:
        self.is_active = value
        return self

    def with_is_full(self, value: bool) -> ApimodelsPartySessionResponse:
        self.is_full = value
        return self

    def with_leader_id(self, value: str) -> ApimodelsPartySessionResponse:
        self.leader_id = value
        return self

    def with_members(
        self, value: List[ApimodelsUserResponse]
    ) -> ApimodelsPartySessionResponse:
        self.members = value
        return self

    def with_namespace(self, value: str) -> ApimodelsPartySessionResponse:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsPartySessionResponse:
        self.updated_at = value
        return self

    def with_version(self, value: int) -> ApimodelsPartySessionResponse:
        self.version = value
        return self

    def with_code(self, value: str) -> ApimodelsPartySessionResponse:
        self.code = value
        return self

    def with_expired_at(self, value: str) -> ApimodelsPartySessionResponse:
        self.expired_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "configuration"):
            result["configuration"] = self.configuration.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["configuration"] = ApimodelsPublicConfiguration()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "created_by"):
            result["createdBy"] = str(self.created_by)
        elif include_empty:
            result["createdBy"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "is_active"):
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = False
        if hasattr(self, "is_full"):
            result["isFull"] = bool(self.is_full)
        elif include_empty:
            result["isFull"] = False
        if hasattr(self, "leader_id"):
            result["leaderID"] = str(self.leader_id)
        elif include_empty:
            result["leaderID"] = ""
        if hasattr(self, "members"):
            result["members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["members"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "version"):
            result["version"] = int(self.version)
        elif include_empty:
            result["version"] = 0
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "expired_at"):
            result["expiredAt"] = str(self.expired_at)
        elif include_empty:
            result["expiredAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Dict[str, Any],
        configuration: ApimodelsPublicConfiguration,
        created_at: str,
        created_by: str,
        id_: str,
        is_active: bool,
        is_full: bool,
        leader_id: str,
        members: List[ApimodelsUserResponse],
        namespace: str,
        updated_at: str,
        version: int,
        code: Optional[str] = None,
        expired_at: Optional[str] = None,
    ) -> ApimodelsPartySessionResponse:
        instance = cls()
        instance.attributes = attributes
        instance.configuration = configuration
        instance.created_at = created_at
        instance.created_by = created_by
        instance.id_ = id_
        instance.is_active = is_active
        instance.is_full = is_full
        instance.leader_id = leader_id
        instance.members = members
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.version = version
        if code is not None:
            instance.code = code
        if expired_at is not None:
            instance.expired_at = expired_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsPartySessionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = ApimodelsPublicConfiguration.create_from_dict(
                dict_["configuration"], include_empty=include_empty
            )
        elif include_empty:
            instance.configuration = ApimodelsPublicConfiguration()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "createdBy" in dict_ and dict_["createdBy"] is not None:
            instance.created_by = str(dict_["createdBy"])
        elif include_empty:
            instance.created_by = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = False
        if "isFull" in dict_ and dict_["isFull"] is not None:
            instance.is_full = bool(dict_["isFull"])
        elif include_empty:
            instance.is_full = False
        if "leaderID" in dict_ and dict_["leaderID"] is not None:
            instance.leader_id = str(dict_["leaderID"])
        elif include_empty:
            instance.leader_id = ""
        if "members" in dict_ and dict_["members"] is not None:
            instance.members = [
                ApimodelsUserResponse.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["members"]
            ]
        elif include_empty:
            instance.members = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = 0
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = str(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsPartySessionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsPartySessionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsPartySessionResponse,
        List[ApimodelsPartySessionResponse],
        Dict[Any, ApimodelsPartySessionResponse],
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
            "attributes": "attributes",
            "configuration": "configuration",
            "createdAt": "created_at",
            "createdBy": "created_by",
            "id": "id_",
            "isActive": "is_active",
            "isFull": "is_full",
            "leaderID": "leader_id",
            "members": "members",
            "namespace": "namespace",
            "updatedAt": "updated_at",
            "version": "version",
            "code": "code",
            "expiredAt": "expired_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attributes": True,
            "configuration": True,
            "createdAt": True,
            "createdBy": True,
            "id": True,
            "isActive": True,
            "isFull": True,
            "leaderID": True,
            "members": True,
            "namespace": True,
            "updatedAt": True,
            "version": True,
            "code": False,
            "expiredAt": False,
        }

    # endregion static methods
