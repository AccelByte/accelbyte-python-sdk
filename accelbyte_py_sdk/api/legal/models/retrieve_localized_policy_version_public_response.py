# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.24.1)

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

from ..models.policy_object import PolicyObject
from ..models.policy_version_object import PolicyVersionObject


class RetrieveLocalizedPolicyVersionPublicResponse(Model):
    """Retrieve localized policy version public response (RetrieveLocalizedPolicyVersionPublicResponse)

    Properties:
        id_: (id) REQUIRED str

        locale_code: (localeCode) REQUIRED str

        namespace: (namespace) REQUIRED str

        policy: (policy) REQUIRED PolicyObject

        policy_version: (policyVersion) REQUIRED PolicyVersionObject

        attachment_checksum: (attachmentChecksum) OPTIONAL str

        attachment_location: (attachmentLocation) OPTIONAL str

        attachment_version_identifier: (attachmentVersionIdentifier) OPTIONAL str

        base_policy_id: (basePolicyId) OPTIONAL str

        base_urls: (baseUrls) OPTIONAL List[str]

        content_type: (contentType) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    locale_code: str  # REQUIRED
    namespace: str  # REQUIRED
    policy: PolicyObject  # REQUIRED
    policy_version: PolicyVersionObject  # REQUIRED
    attachment_checksum: str  # OPTIONAL
    attachment_location: str  # OPTIONAL
    attachment_version_identifier: str  # OPTIONAL
    base_policy_id: str  # OPTIONAL
    base_urls: List[str]  # OPTIONAL
    content_type: str  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.id_ = value
        return self

    def with_locale_code(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.locale_code = value
        return self

    def with_namespace(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.namespace = value
        return self

    def with_policy(
        self, value: PolicyObject
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.policy = value
        return self

    def with_policy_version(
        self, value: PolicyVersionObject
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.policy_version = value
        return self

    def with_attachment_checksum(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.attachment_checksum = value
        return self

    def with_attachment_location(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.attachment_location = value
        return self

    def with_attachment_version_identifier(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.attachment_version_identifier = value
        return self

    def with_base_policy_id(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.base_policy_id = value
        return self

    def with_base_urls(
        self, value: List[str]
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.base_urls = value
        return self

    def with_content_type(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.content_type = value
        return self

    def with_created_at(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.created_at = value
        return self

    def with_description(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.description = value
        return self

    def with_tags(
        self, value: List[str]
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.tags = value
        return self

    def with_updated_at(
        self, value: str
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "locale_code"):
            result["localeCode"] = str(self.locale_code)
        elif include_empty:
            result["localeCode"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "policy"):
            result["policy"] = self.policy.to_dict(include_empty=include_empty)
        elif include_empty:
            result["policy"] = PolicyObject()
        if hasattr(self, "policy_version"):
            result["policyVersion"] = self.policy_version.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["policyVersion"] = PolicyVersionObject()
        if hasattr(self, "attachment_checksum"):
            result["attachmentChecksum"] = str(self.attachment_checksum)
        elif include_empty:
            result["attachmentChecksum"] = ""
        if hasattr(self, "attachment_location"):
            result["attachmentLocation"] = str(self.attachment_location)
        elif include_empty:
            result["attachmentLocation"] = ""
        if hasattr(self, "attachment_version_identifier"):
            result["attachmentVersionIdentifier"] = str(
                self.attachment_version_identifier
            )
        elif include_empty:
            result["attachmentVersionIdentifier"] = ""
        if hasattr(self, "base_policy_id"):
            result["basePolicyId"] = str(self.base_policy_id)
        elif include_empty:
            result["basePolicyId"] = ""
        if hasattr(self, "base_urls"):
            result["baseUrls"] = [str(i0) for i0 in self.base_urls]
        elif include_empty:
            result["baseUrls"] = []
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        locale_code: str,
        namespace: str,
        policy: PolicyObject,
        policy_version: PolicyVersionObject,
        attachment_checksum: Optional[str] = None,
        attachment_location: Optional[str] = None,
        attachment_version_identifier: Optional[str] = None,
        base_policy_id: Optional[str] = None,
        base_urls: Optional[List[str]] = None,
        content_type: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        tags: Optional[List[str]] = None,
        updated_at: Optional[str] = None,
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        instance = cls()
        instance.id_ = id_
        instance.locale_code = locale_code
        instance.namespace = namespace
        instance.policy = policy
        instance.policy_version = policy_version
        if attachment_checksum is not None:
            instance.attachment_checksum = attachment_checksum
        if attachment_location is not None:
            instance.attachment_location = attachment_location
        if attachment_version_identifier is not None:
            instance.attachment_version_identifier = attachment_version_identifier
        if base_policy_id is not None:
            instance.base_policy_id = base_policy_id
        if base_urls is not None:
            instance.base_urls = base_urls
        if content_type is not None:
            instance.content_type = content_type
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if tags is not None:
            instance.tags = tags
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveLocalizedPolicyVersionPublicResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "localeCode" in dict_ and dict_["localeCode"] is not None:
            instance.locale_code = str(dict_["localeCode"])
        elif include_empty:
            instance.locale_code = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "policy" in dict_ and dict_["policy"] is not None:
            instance.policy = PolicyObject.create_from_dict(
                dict_["policy"], include_empty=include_empty
            )
        elif include_empty:
            instance.policy = PolicyObject()
        if "policyVersion" in dict_ and dict_["policyVersion"] is not None:
            instance.policy_version = PolicyVersionObject.create_from_dict(
                dict_["policyVersion"], include_empty=include_empty
            )
        elif include_empty:
            instance.policy_version = PolicyVersionObject()
        if "attachmentChecksum" in dict_ and dict_["attachmentChecksum"] is not None:
            instance.attachment_checksum = str(dict_["attachmentChecksum"])
        elif include_empty:
            instance.attachment_checksum = ""
        if "attachmentLocation" in dict_ and dict_["attachmentLocation"] is not None:
            instance.attachment_location = str(dict_["attachmentLocation"])
        elif include_empty:
            instance.attachment_location = ""
        if (
            "attachmentVersionIdentifier" in dict_
            and dict_["attachmentVersionIdentifier"] is not None
        ):
            instance.attachment_version_identifier = str(
                dict_["attachmentVersionIdentifier"]
            )
        elif include_empty:
            instance.attachment_version_identifier = ""
        if "basePolicyId" in dict_ and dict_["basePolicyId"] is not None:
            instance.base_policy_id = str(dict_["basePolicyId"])
        elif include_empty:
            instance.base_policy_id = ""
        if "baseUrls" in dict_ and dict_["baseUrls"] is not None:
            instance.base_urls = [str(i0) for i0 in dict_["baseUrls"]]
        elif include_empty:
            instance.base_urls = []
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrieveLocalizedPolicyVersionPublicResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrieveLocalizedPolicyVersionPublicResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrieveLocalizedPolicyVersionPublicResponse,
        List[RetrieveLocalizedPolicyVersionPublicResponse],
        Dict[Any, RetrieveLocalizedPolicyVersionPublicResponse],
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
            "id": "id_",
            "localeCode": "locale_code",
            "namespace": "namespace",
            "policy": "policy",
            "policyVersion": "policy_version",
            "attachmentChecksum": "attachment_checksum",
            "attachmentLocation": "attachment_location",
            "attachmentVersionIdentifier": "attachment_version_identifier",
            "basePolicyId": "base_policy_id",
            "baseUrls": "base_urls",
            "contentType": "content_type",
            "createdAt": "created_at",
            "description": "description",
            "tags": "tags",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "localeCode": True,
            "namespace": True,
            "policy": True,
            "policyVersion": True,
            "attachmentChecksum": False,
            "attachmentLocation": False,
            "attachmentVersionIdentifier": False,
            "basePolicyId": False,
            "baseUrls": False,
            "contentType": False,
            "createdAt": False,
            "description": False,
            "tags": False,
            "updatedAt": False,
        }

    # endregion static methods
