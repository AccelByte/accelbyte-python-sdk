# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

# AccelByte Cloud Legal Service (1.26.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import UploadLocalizedPolicyVersionAttachmentResponse
from ...models import UploadPolicyVersionAttachmentRequest


class RequestPresignedURL(Operation):
    """Request Presigned URL for Upload Document (requestPresignedURL)

    Request presigned URL for upload attachment for a particular localized version of base policy.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LEGAL [CREATE]

    Properties:
        url: /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments

        method: POST

        tags: ["Localized Policy Versions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UploadPolicyVersionAttachmentRequest in body

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

    Responses:
        201: Created - UploadLocalizedPolicyVersionAttachmentResponse (successful operation)

        400: Bad Request - ErrorEntity (40034: errors.net.accelbyte.platform.legal.invalid_file_type | 40037: errors.net.accelbyte.platform.legal.invalid_localized_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)
    """

    # region fields

    _url: str = "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: UploadPolicyVersionAttachmentRequest  # OPTIONAL in [body]
    localized_policy_version_id: str  # REQUIRED in [path]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "localized_policy_version_id"):
            result["localizedPolicyVersionId"] = self.localized_policy_version_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: UploadPolicyVersionAttachmentRequest
    ) -> RequestPresignedURL:
        self.body = value
        return self

    def with_localized_policy_version_id(self, value: str) -> RequestPresignedURL:
        self.localized_policy_version_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = UploadPolicyVersionAttachmentRequest()
        if (
            hasattr(self, "localized_policy_version_id")
            and self.localized_policy_version_id
        ):
            result["localizedPolicyVersionId"] = str(self.localized_policy_version_id)
        elif include_empty:
            result["localizedPolicyVersionId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, UploadLocalizedPolicyVersionAttachmentResponse],
        Union[None, ErrorEntity, HttpResponse],
    ]:
        """Parse the given response.

        201: Created - UploadLocalizedPolicyVersionAttachmentResponse (successful operation)

        400: Bad Request - ErrorEntity (40034: errors.net.accelbyte.platform.legal.invalid_file_type | 40037: errors.net.accelbyte.platform.legal.invalid_localized_policy_version | 40042: errors.net.accelbyte.platform.legal.policy_version_freezed)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 201:
            return (
                UploadLocalizedPolicyVersionAttachmentResponse.create_from_dict(
                    content
                ),
                None,
            )
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        localized_policy_version_id: str,
        body: Optional[UploadPolicyVersionAttachmentRequest] = None,
    ) -> RequestPresignedURL:
        instance = cls()
        instance.localized_policy_version_id = localized_policy_version_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RequestPresignedURL:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = UploadPolicyVersionAttachmentRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = UploadPolicyVersionAttachmentRequest()
        if (
            "localizedPolicyVersionId" in dict_
            and dict_["localizedPolicyVersionId"] is not None
        ):
            instance.localized_policy_version_id = str(
                dict_["localizedPolicyVersionId"]
            )
        elif include_empty:
            instance.localized_policy_version_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "localizedPolicyVersionId": "localized_policy_version_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "localizedPolicyVersionId": True,
        }

    # endregion static methods
