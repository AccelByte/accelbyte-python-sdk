# justice-seasonpass-service (1.5.0)

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

from ...models import ErrorEntity
from ...models import Tier
from ...models import TierInput
from ...models import ValidationErrorEntity


class UpdateTier(Operation):
    """Update a tier (updateTier)

    This API is used to update a tier. Only draft season pass can be updated.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:SEASONPASS", action=4 (UPDATE)


    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}

        method: PUT

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL TierInput in body

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - Tier (successful operation)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist | 49145: Pass [{code}] does not exist | 49146: Tier does not exist)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: TierInput                                                                                # OPTIONAL in [body]
    id_: str                                                                                       # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]
    season_id: str                                                                                 # REQUIRED in [path]

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "id_",
            "namespace",
            "season_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "id_"):
            result["id"] = self.id_
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "season_id"):
            result["seasonId"] = self.season_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "id_") or self.id_ is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "season_id") or self.season_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: TierInput) -> UpdateTier:
        self.body = value
        return self

    def with_id_(self, value: str) -> UpdateTier:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> UpdateTier:
        self.namespace = value
        return self

    def with_season_id(self, value: str) -> UpdateTier:
        self.season_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = TierInput()
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "season_id") and self.season_id:
            result["seasonId"] = str(self.season_id)
        elif include_empty:
            result["seasonId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, Tier], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - Tier (successful operation)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist | 49145: Pass [{code}] does not exist | 49146: Tier does not exist)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
        """
        if code == 200:
            return Tier.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
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
        id_: str,
        namespace: str,
        season_id: str,
        body: Optional[TierInput] = None,
    ) -> UpdateTier:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.season_id = season_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateTier:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = TierInput.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = TierInput()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "seasonId" in dict_ and dict_["seasonId"] is not None:
            instance.season_id = str(dict_["seasonId"])
        elif include_empty:
            instance.season_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "id": "id_",
            "namespace": "namespace",
            "seasonId": "season_id",
        }

    # endregion static methods
