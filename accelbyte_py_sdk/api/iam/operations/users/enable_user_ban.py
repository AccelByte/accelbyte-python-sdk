# justice-iam-service (4.4.1)

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

from ...models import ModelUserBanResponse


class EnableUserBan(Operation):
    """Enable ban for a single user (EnableUserBan)

    Required permission 'ADMIN:NAMESPACE:{namespace}:BAN:USER:{userId} [UPDATE]'.


    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        ban_id: (banId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found | 10144: user has no bans)

        500: Internal Server Error - (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable"
    _method: str = "PUT"
    _consumes: List[str] = ["*/*"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    ban_id: str                                                                                    # REQUIRED in [path]

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
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", str(v))
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "user_id",
            "ban_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        if hasattr(self, "ban_id"):
            result["banId"] = self.ban_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        if not hasattr(self, "ban_id") or self.ban_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> EnableUserBan:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> EnableUserBan:
        self.user_id = value
        return self

    def with_ban_id(self, value: str) -> EnableUserBan:
        self.ban_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "ban_id") and self.ban_id:
            result["banId"] = str(self.ban_id)
        elif include_empty:
            result["banId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelUserBanResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found | 10144: user has no bans)

        500: Internal Server Error - (20000: internal server error)
        """
        if code == 200:
            return ModelUserBanResponse.create_from_dict(content), None
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")
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
        user_id: str,
        ban_id: str,
    ) -> EnableUserBan:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.ban_id = ban_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EnableUserBan:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "banId" in dict_ and dict_["banId"] is not None:
            instance.ban_id = str(dict_["banId"])
        elif include_empty:
            instance.ban_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "banId": "ban_id",
        }

    # endregion static methods
