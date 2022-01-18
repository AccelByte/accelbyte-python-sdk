# justice-platform-service (4.1.1)

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

from ...models import ErrorEntity
from ...models import RewardInfo


class GetRewardByCode(Operation):
    """Get a reward by code (getRewardByCode)

    This API is used to get reward by reward code.<br>Other detail info:
    <ul><li><i>Required permission</i>: resource="NAMESPACE:{namespace}:REWARD",
    action=2 (READ)</li><li><i>Returns</i>: reward instance</li></ul>


    Properties:
        url: /platform/public/namespaces/{namespace}/rewards/byCode

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        reward_code: (rewardCode) REQUIRED str in query

    Responses:
        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34043: Reward with code [{rewardCode}] does not exist in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/rewards/byCode"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    reward_code: str                                                                               # REQUIRED in [query]

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

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
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
            "reward_code",
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
        if hasattr(self, "reward_code"):
            result["rewardCode"] = self.reward_code
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "reward_code") or self.reward_code is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetRewardByCode:
        self.namespace = value
        return self

    def with_reward_code(self, value: str) -> GetRewardByCode:
        self.reward_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "reward_code") and self.reward_code:
            result["rewardCode"] = str(self.reward_code)
        elif include_empty:
            result["rewardCode"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, RewardInfo], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - RewardInfo (successful operation)

        404: Not Found - ErrorEntity (34043: Reward with code [{rewardCode}] does not exist in namespace [{namespace}])
        """
        if code == 200:
            return RewardInfo.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
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
        reward_code: str,
    ) -> GetRewardByCode:
        instance = cls()
        instance.namespace = namespace
        instance.reward_code = reward_code
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetRewardByCode:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "rewardCode" in dict_ and dict_["rewardCode"] is not None:
            instance.reward_code = str(dict_["rewardCode"])
        elif include_empty:
            instance.reward_code = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "rewardCode": "reward_code",
        }

    # endregion static methods
