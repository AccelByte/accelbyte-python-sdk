# justice-basic-service (1.28.0)

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

from .....core import Operation
from .....core import HttpResponse

from ...models import UserProfilePublicInfo
from ...models import ValidationErrorEntity


class PublicGetUserProfilePublicInfoByIds(Operation):
    """Get user profile public info by ids (publicGetUserProfilePublicInfoByIds)

    Get user public profile by ids.<br>Other detail info: <ul><li><i>Action
    code</i>: 11405</li><li><i>Returns</i>: user public profiles</li></ul>


    Properties:
        url: /basic/v1/public/namespaces/{namespace}/profiles/public

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/basic/v1/public/namespaces/{namespace}/profiles/public"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_ids: str                                                                                  # REQUIRED in [query]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "user_ids",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "user_ids"):
            result["userIds"] = self.user_ids
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_ids") or self.user_ids is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicGetUserProfilePublicInfoByIds:
        self.namespace = value
        return self

    def with_user_ids(self, value: str) -> PublicGetUserProfilePublicInfoByIds:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_ids") and self.user_ids:
            result["userIds"] = str(self.user_ids)
        elif include_empty:
            result["userIds"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, List[UserProfilePublicInfo]], Union[None, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
        """
        if code == 200:
            return [UserProfilePublicInfo.create_from_dict(i) for i in content], None
        if code == 400:
            return None, ValidationErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_ids: str,
    ) -> PublicGetUserProfilePublicInfoByIds:
        instance = cls()
        instance.namespace = namespace
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicGetUserProfilePublicInfoByIds:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = str(dict_["userIds"])
        elif include_empty:
            instance.user_ids = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userIds": "user_ids",
        }

    # endregion static methods
