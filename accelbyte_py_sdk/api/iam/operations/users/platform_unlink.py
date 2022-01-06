# justice-iam-service (4.10.0)

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

from .....core import Operation
from .....core import HttpResponse


class PlatformUnlink(Operation):
    """Unlink user's account with platform (PlatformUnlink)

    <p>Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.</p>
    <h2>Supported platforms:</h2> <ul> <li><strong>steam</strong></li>
    <li><strong>steamopenid</strong></li> <li><strong>facebook</strong></li>
    <li><strong>google</strong></li> <li><strong>oculus</strong></li>
    <li><strong>twitch</strong></li> <li><strong>android</strong></li>
    <li><strong>ios</strong></li> <li><strong>device</strong></li>
    <li><strong>justice</strong>: A user might have several 'justice’ platform on
    different namespaces. That’s why the platform_namespace need to be specified
    when the platform ID is ‘justice’. The platform_namespace is the designated
    user’s namespace.</li> </ul> <p>Unlink user's account with platform. 'justice'
    platform might have multiple accounts from different namespaces linked.
    platform_namespace need to be specified when the platform ID is 'justice'.
    <br>Unlinking justice platform will enable password token grant and password
    update. </p>


    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        security_type: bearer

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded", "text/plain"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    platform_namespace: str                                                                        # OPTIONAL in [form_data]
    namespace: str                                                                                 # REQUIRED in [path]
    platform_id: str                                                                               # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "platform_id",
            "user_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "platform_namespace"):
            result["platform_namespace"] = self.platform_namespace
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "platform_id") or self.platform_id is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_platform_namespace(self, value: str) -> PlatformUnlink:
        self.platform_namespace = value
        return self

    def with_namespace(self, value: str) -> PlatformUnlink:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> PlatformUnlink:
        self.platform_id = value
        return self

    def with_user_id(self, value: str) -> PlatformUnlink:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_namespace") and self.platform_namespace:
            result["platform_namespace"] = str(self.platform_namespace)
        elif include_empty:
            result["platform_namespace"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[None, Union[None, HttpResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
        """
        if code == 204:
            return None, None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
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
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        platform_id: str,
        user_id: str,
        platform_namespace: Optional[str] = None,
    ) -> PlatformUnlink:
        instance = cls()
        instance.namespace = namespace
        instance.platform_id = platform_id
        instance.user_id = user_id
        if platform_namespace is not None:
            instance.platform_namespace = platform_namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PlatformUnlink:
        instance = cls()
        if "platform_namespace" in dict_ and dict_["platform_namespace"] is not None:
            instance.platform_namespace = str(dict_["platform_namespace"])
        elif include_empty:
            instance.platform_namespace = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platform_namespace": "platform_namespace",
            "namespace": "namespace",
            "platformId": "platform_id",
            "userId": "user_id",
        }

    # endregion static methods
