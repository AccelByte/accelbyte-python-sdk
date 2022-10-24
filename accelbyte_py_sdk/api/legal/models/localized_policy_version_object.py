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


class LocalizedPolicyVersionObject(Model):
    """Localized policy version object (LocalizedPolicyVersionObject)

    Properties:
        id_: (id) REQUIRED str

        is_default_selection: (isDefaultSelection) REQUIRED bool

        locale_code: (localeCode) REQUIRED str

        attachment_checksum: (attachmentChecksum) OPTIONAL str

        attachment_location: (attachmentLocation) OPTIONAL str

        attachment_version_identifier: (attachmentVersionIdentifier) OPTIONAL str

        content_type: (contentType) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        published_date: (publishedDate) OPTIONAL str

        status: (status) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    is_default_selection: bool  # REQUIRED
    locale_code: str  # REQUIRED
    attachment_checksum: str  # OPTIONAL
    attachment_location: str  # OPTIONAL
    attachment_version_identifier: str  # OPTIONAL
    content_type: str  # OPTIONAL
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    published_date: str  # OPTIONAL
    status: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> LocalizedPolicyVersionObject:
        self.id_ = value
        return self

    def with_is_default_selection(self, value: bool) -> LocalizedPolicyVersionObject:
        self.is_default_selection = value
        return self

    def with_locale_code(self, value: str) -> LocalizedPolicyVersionObject:
        self.locale_code = value
        return self

    def with_attachment_checksum(self, value: str) -> LocalizedPolicyVersionObject:
        self.attachment_checksum = value
        return self

    def with_attachment_location(self, value: str) -> LocalizedPolicyVersionObject:
        self.attachment_location = value
        return self

    def with_attachment_version_identifier(
        self, value: str
    ) -> LocalizedPolicyVersionObject:
        self.attachment_version_identifier = value
        return self

    def with_content_type(self, value: str) -> LocalizedPolicyVersionObject:
        self.content_type = value
        return self

    def with_created_at(self, value: str) -> LocalizedPolicyVersionObject:
        self.created_at = value
        return self

    def with_description(self, value: str) -> LocalizedPolicyVersionObject:
        self.description = value
        return self

    def with_published_date(self, value: str) -> LocalizedPolicyVersionObject:
        self.published_date = value
        return self

    def with_status(self, value: str) -> LocalizedPolicyVersionObject:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> LocalizedPolicyVersionObject:
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
        if hasattr(self, "is_default_selection"):
            result["isDefaultSelection"] = bool(self.is_default_selection)
        elif include_empty:
            result["isDefaultSelection"] = False
        if hasattr(self, "locale_code"):
            result["localeCode"] = str(self.locale_code)
        elif include_empty:
            result["localeCode"] = ""
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
        if hasattr(self, "published_date"):
            result["publishedDate"] = str(self.published_date)
        elif include_empty:
            result["publishedDate"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
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
        is_default_selection: bool,
        locale_code: str,
        attachment_checksum: Optional[str] = None,
        attachment_location: Optional[str] = None,
        attachment_version_identifier: Optional[str] = None,
        content_type: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        published_date: Optional[str] = None,
        status: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> LocalizedPolicyVersionObject:
        instance = cls()
        instance.id_ = id_
        instance.is_default_selection = is_default_selection
        instance.locale_code = locale_code
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
        if published_date is not None:
            instance.published_date = published_date
        if status is not None:
            instance.status = status
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LocalizedPolicyVersionObject:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isDefaultSelection" in dict_ and dict_["isDefaultSelection"] is not None:
            instance.is_default_selection = bool(dict_["isDefaultSelection"])
        elif include_empty:
            instance.is_default_selection = False
        if "localeCode" in dict_ and dict_["localeCode"] is not None:
            instance.locale_code = str(dict_["localeCode"])
        elif include_empty:
            instance.locale_code = ""
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
        if "publishedDate" in dict_ and dict_["publishedDate"] is not None:
            instance.published_date = str(dict_["publishedDate"])
        elif include_empty:
            instance.published_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LocalizedPolicyVersionObject]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LocalizedPolicyVersionObject]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        LocalizedPolicyVersionObject,
        List[LocalizedPolicyVersionObject],
        Dict[Any, LocalizedPolicyVersionObject],
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
            "isDefaultSelection": "is_default_selection",
            "localeCode": "locale_code",
            "attachmentChecksum": "attachment_checksum",
            "attachmentLocation": "attachment_location",
            "attachmentVersionIdentifier": "attachment_version_identifier",
            "contentType": "content_type",
            "createdAt": "created_at",
            "description": "description",
            "publishedDate": "published_date",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "isDefaultSelection": True,
            "localeCode": True,
            "attachmentChecksum": False,
            "attachmentLocation": False,
            "attachmentVersionIdentifier": False,
            "contentType": False,
            "createdAt": False,
            "description": False,
            "publishedDate": False,
            "status": False,
            "updatedAt": False,
        }

    # endregion static methods
