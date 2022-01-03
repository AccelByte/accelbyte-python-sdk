# justice-legal-service (1.15.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class UpdateLocalizedPolicyVersionResponse(Model):
    """Update localized policy version response (UpdateLocalizedPolicyVersionResponse)

    Properties:
        id_: (id) REQUIRED str

        attachment_checksum: (attachmentChecksum) OPTIONAL str

        attachment_location: (attachmentLocation) OPTIONAL str

        attachment_version_identifier: (attachmentVersionIdentifier) OPTIONAL str

        content_type: (contentType) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        locale_code: (localeCode) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    attachment_checksum: str                                                                       # OPTIONAL
    attachment_location: str                                                                       # OPTIONAL
    attachment_version_identifier: str                                                             # OPTIONAL
    content_type: str                                                                              # OPTIONAL
    created_at: str                                                                                # OPTIONAL
    description: str                                                                               # OPTIONAL
    locale_code: str                                                                               # OPTIONAL
    updated_at: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.id_ = value
        return self

    def with_attachment_checksum(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.attachment_checksum = value
        return self

    def with_attachment_location(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.attachment_location = value
        return self

    def with_attachment_version_identifier(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.attachment_version_identifier = value
        return self

    def with_content_type(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.content_type = value
        return self

    def with_created_at(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.description = value
        return self

    def with_locale_code(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.locale_code = value
        return self

    def with_updated_at(self, value: str) -> UpdateLocalizedPolicyVersionResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "attachment_checksum"):
            result["attachmentChecksum"] = str(self.attachment_checksum)
        elif include_empty:
            result["attachmentChecksum"] = str()
        if hasattr(self, "attachment_location"):
            result["attachmentLocation"] = str(self.attachment_location)
        elif include_empty:
            result["attachmentLocation"] = str()
        if hasattr(self, "attachment_version_identifier"):
            result["attachmentVersionIdentifier"] = str(self.attachment_version_identifier)
        elif include_empty:
            result["attachmentVersionIdentifier"] = str()
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "locale_code"):
            result["localeCode"] = str(self.locale_code)
        elif include_empty:
            result["localeCode"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        attachment_checksum: Optional[str] = None,
        attachment_location: Optional[str] = None,
        attachment_version_identifier: Optional[str] = None,
        content_type: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        locale_code: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> UpdateLocalizedPolicyVersionResponse:
        instance = cls()
        instance.id_ = id_
        if attachment_checksum is not None:
            instance.attachment_checksum = attachment_checksum
        if attachment_location is not None:
            instance.attachment_location = attachment_location
        if attachment_version_identifier is not None:
            instance.attachment_version_identifier = attachment_version_identifier
        if content_type is not None:
            instance.content_type = content_type
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if locale_code is not None:
            instance.locale_code = locale_code
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateLocalizedPolicyVersionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "attachmentChecksum" in dict_ and dict_["attachmentChecksum"] is not None:
            instance.attachment_checksum = str(dict_["attachmentChecksum"])
        elif include_empty:
            instance.attachment_checksum = str()
        if "attachmentLocation" in dict_ and dict_["attachmentLocation"] is not None:
            instance.attachment_location = str(dict_["attachmentLocation"])
        elif include_empty:
            instance.attachment_location = str()
        if "attachmentVersionIdentifier" in dict_ and dict_["attachmentVersionIdentifier"] is not None:
            instance.attachment_version_identifier = str(dict_["attachmentVersionIdentifier"])
        elif include_empty:
            instance.attachment_version_identifier = str()
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "localeCode" in dict_ and dict_["localeCode"] is not None:
            instance.locale_code = str(dict_["localeCode"])
        elif include_empty:
            instance.locale_code = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "attachmentChecksum": "attachment_checksum",
            "attachmentLocation": "attachment_location",
            "attachmentVersionIdentifier": "attachment_version_identifier",
            "contentType": "content_type",
            "createdAt": "created_at",
            "description": "description",
            "localeCode": "locale_code",
            "updatedAt": "updated_at",
        }

    # endregion static methods
