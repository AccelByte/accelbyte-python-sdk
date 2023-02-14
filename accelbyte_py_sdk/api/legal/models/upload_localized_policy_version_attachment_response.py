# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.26.0)

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


class UploadLocalizedPolicyVersionAttachmentResponse(Model):
    """Upload localized policy version attachment response (UploadLocalizedPolicyVersionAttachmentResponse)

    Properties:
        attachment_checksum: (attachmentChecksum) OPTIONAL str

        attachment_location: (attachmentLocation) OPTIONAL str

        attachment_upload_url: (attachmentUploadUrl) OPTIONAL str
    """

    # region fields

    attachment_checksum: str  # OPTIONAL
    attachment_location: str  # OPTIONAL
    attachment_upload_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_attachment_checksum(
        self, value: str
    ) -> UploadLocalizedPolicyVersionAttachmentResponse:
        self.attachment_checksum = value
        return self

    def with_attachment_location(
        self, value: str
    ) -> UploadLocalizedPolicyVersionAttachmentResponse:
        self.attachment_location = value
        return self

    def with_attachment_upload_url(
        self, value: str
    ) -> UploadLocalizedPolicyVersionAttachmentResponse:
        self.attachment_upload_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attachment_checksum"):
            result["attachmentChecksum"] = str(self.attachment_checksum)
        elif include_empty:
            result["attachmentChecksum"] = ""
        if hasattr(self, "attachment_location"):
            result["attachmentLocation"] = str(self.attachment_location)
        elif include_empty:
            result["attachmentLocation"] = ""
        if hasattr(self, "attachment_upload_url"):
            result["attachmentUploadUrl"] = str(self.attachment_upload_url)
        elif include_empty:
            result["attachmentUploadUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attachment_checksum: Optional[str] = None,
        attachment_location: Optional[str] = None,
        attachment_upload_url: Optional[str] = None,
    ) -> UploadLocalizedPolicyVersionAttachmentResponse:
        instance = cls()
        if attachment_checksum is not None:
            instance.attachment_checksum = attachment_checksum
        if attachment_location is not None:
            instance.attachment_location = attachment_location
        if attachment_upload_url is not None:
            instance.attachment_upload_url = attachment_upload_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UploadLocalizedPolicyVersionAttachmentResponse:
        instance = cls()
        if not dict_:
            return instance
        if "attachmentChecksum" in dict_ and dict_["attachmentChecksum"] is not None:
            instance.attachment_checksum = str(dict_["attachmentChecksum"])
        elif include_empty:
            instance.attachment_checksum = ""
        if "attachmentLocation" in dict_ and dict_["attachmentLocation"] is not None:
            instance.attachment_location = str(dict_["attachmentLocation"])
        elif include_empty:
            instance.attachment_location = ""
        if "attachmentUploadUrl" in dict_ and dict_["attachmentUploadUrl"] is not None:
            instance.attachment_upload_url = str(dict_["attachmentUploadUrl"])
        elif include_empty:
            instance.attachment_upload_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UploadLocalizedPolicyVersionAttachmentResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UploadLocalizedPolicyVersionAttachmentResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UploadLocalizedPolicyVersionAttachmentResponse,
        List[UploadLocalizedPolicyVersionAttachmentResponse],
        Dict[Any, UploadLocalizedPolicyVersionAttachmentResponse],
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
            "attachmentChecksum": "attachment_checksum",
            "attachmentLocation": "attachment_location",
            "attachmentUploadUrl": "attachment_upload_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attachmentChecksum": False,
            "attachmentLocation": False,
            "attachmentUploadUrl": False,
        }

    # endregion static methods
