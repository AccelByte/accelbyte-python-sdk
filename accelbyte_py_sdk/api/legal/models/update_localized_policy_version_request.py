# justice-legal-service (1.14.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class UpdateLocalizedPolicyVersionRequest(Model):
    """Update localized policy version request (UpdateLocalizedPolicyVersionRequest)

    Properties:
        attachment_checksum: (attachmentChecksum) OPTIONAL str

        attachment_location: (attachmentLocation) OPTIONAL str

        attachment_version_identifier: (attachmentVersionIdentifier) OPTIONAL str

        content_type: (contentType) OPTIONAL str

        description: (description) OPTIONAL str
    """

    # region fields

    attachment_checksum: str                                                                       # OPTIONAL
    attachment_location: str                                                                       # OPTIONAL
    attachment_version_identifier: str                                                             # OPTIONAL
    content_type: str                                                                              # OPTIONAL
    description: str                                                                               # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_attachment_checksum(self, value: str) -> UpdateLocalizedPolicyVersionRequest:
        self.attachment_checksum = value
        return self

    def with_attachment_location(self, value: str) -> UpdateLocalizedPolicyVersionRequest:
        self.attachment_location = value
        return self

    def with_attachment_version_identifier(self, value: str) -> UpdateLocalizedPolicyVersionRequest:
        self.attachment_version_identifier = value
        return self

    def with_content_type(self, value: str) -> UpdateLocalizedPolicyVersionRequest:
        self.content_type = value
        return self

    def with_description(self, value: str) -> UpdateLocalizedPolicyVersionRequest:
        self.description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attachment_checksum: Optional[str] = None,
        attachment_location: Optional[str] = None,
        attachment_version_identifier: Optional[str] = None,
        content_type: Optional[str] = None,
        description: Optional[str] = None,
    ) -> UpdateLocalizedPolicyVersionRequest:
        instance = cls()
        if attachment_checksum is not None:
            instance.attachment_checksum = attachment_checksum
        if attachment_location is not None:
            instance.attachment_location = attachment_location
        if attachment_version_identifier is not None:
            instance.attachment_version_identifier = attachment_version_identifier
        if content_type is not None:
            instance.content_type = content_type
        if description is not None:
            instance.description = description
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateLocalizedPolicyVersionRequest:
        instance = cls()
        if not dict_:
            return instance
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
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "attachmentChecksum": "attachment_checksum",
            "attachmentLocation": "attachment_location",
            "attachmentVersionIdentifier": "attachment_version_identifier",
            "contentType": "content_type",
            "description": "description",
        }

    # endregion static methods