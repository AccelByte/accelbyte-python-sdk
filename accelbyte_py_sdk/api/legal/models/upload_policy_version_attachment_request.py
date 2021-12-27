# justice-legal-service (1.15.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class UploadPolicyVersionAttachmentRequest(Model):
    """Upload policy version attachment request (UploadPolicyVersionAttachmentRequest)

    Properties:
        content_md5: (contentMD5) OPTIONAL str

        content_type: (contentType) OPTIONAL str
    """

    # region fields

    content_md5: str                                                                               # OPTIONAL
    content_type: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_content_md5(self, value: str) -> UploadPolicyVersionAttachmentRequest:
        self.content_md5 = value
        return self

    def with_content_type(self, value: str) -> UploadPolicyVersionAttachmentRequest:
        self.content_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_md5"):
            result["contentMD5"] = str(self.content_md5)
        elif include_empty:
            result["contentMD5"] = str()
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_md5: Optional[str] = None,
        content_type: Optional[str] = None,
    ) -> UploadPolicyVersionAttachmentRequest:
        instance = cls()
        if content_md5 is not None:
            instance.content_md5 = content_md5
        if content_type is not None:
            instance.content_type = content_type
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UploadPolicyVersionAttachmentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "contentMD5" in dict_ and dict_["contentMD5"] is not None:
            instance.content_md5 = str(dict_["contentMD5"])
        elif include_empty:
            instance.content_md5 = str()
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "contentMD5": "content_md5",
            "contentType": "content_type",
        }

    # endregion static methods
