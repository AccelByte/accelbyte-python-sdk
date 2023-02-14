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
from ...models import RetrieveLocalizedPolicyVersionPublicResponse


class RetrieveSingleLocalizedPolicyVersion3(Operation):
    """Retrieve a Localized Version (retrieveSingleLocalizedPolicyVersion_3)

    Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
    Other detail info:

    Properties:
        url: /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}

        method: GET

        tags: ["Localized Policy Versions With Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        localized_policy_version_id: (localizedPolicyVersionId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RetrieveLocalizedPolicyVersionPublicResponse (successful operation)

        404: Not Found - ErrorEntity (40038: errors.net.accelbyte.platform.legal.localized_policy_version_not_found)
    """

    # region fields

    _url: str = "/agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    localized_policy_version_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]

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
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "localized_policy_version_id"):
            result["localizedPolicyVersionId"] = self.localized_policy_version_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_localized_policy_version_id(
        self, value: str
    ) -> RetrieveSingleLocalizedPolicyVersion3:
        self.localized_policy_version_id = value
        return self

    def with_namespace(self, value: str) -> RetrieveSingleLocalizedPolicyVersion3:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if (
            hasattr(self, "localized_policy_version_id")
            and self.localized_policy_version_id
        ):
            result["localizedPolicyVersionId"] = str(self.localized_policy_version_id)
        elif include_empty:
            result["localizedPolicyVersionId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, RetrieveLocalizedPolicyVersionPublicResponse],
        Union[None, ErrorEntity, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - RetrieveLocalizedPolicyVersionPublicResponse (successful operation)

        404: Not Found - ErrorEntity (40038: errors.net.accelbyte.platform.legal.localized_policy_version_not_found)

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

        if code == 200:
            return (
                RetrieveLocalizedPolicyVersionPublicResponse.create_from_dict(content),
                None,
            )
        if code == 404:
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
        namespace: str,
    ) -> RetrieveSingleLocalizedPolicyVersion3:
        instance = cls()
        instance.localized_policy_version_id = localized_policy_version_id
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveSingleLocalizedPolicyVersion3:
        instance = cls()
        if (
            "localizedPolicyVersionId" in dict_
            and dict_["localizedPolicyVersionId"] is not None
        ):
            instance.localized_policy_version_id = str(
                dict_["localizedPolicyVersionId"]
            )
        elif include_empty:
            instance.localized_policy_version_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "localizedPolicyVersionId": "localized_policy_version_id",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "localizedPolicyVersionId": True,
            "namespace": True,
        }

    # endregion static methods
