# Auto-generated at 2021-09-21T14:10:38.846170+08:00
# from: Justice Platform Service (3.24.0)

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

from ...models import CategoryUpdate
from ...models import ErrorEntity
from ...models import FullCategoryInfo
from ...models import ValidationErrorEntity


class UpdateCategory(Operation):
    """Update category (updateCategory)

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}

        method: PUT

        tags: Category

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL CategoryUpdate in body

        namespace: (namespace) REQUIRED str in path

        category_path: (categoryPath) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullCategoryInfo (successful operation)

        400: Bad Request - ErrorEntity (ErrorCode: 30021 | ErrorMessage: Default language [{language}] required)

        404: Not Found - ErrorEntity (ErrorCode: 30241 | ErrorMessage: Category [{categoryPath}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (ErrorCode: 30173 | ErrorMessage: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (ErrorCode: 20002 | ErrorMessage: validation error)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/categories/{categoryPath}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: CategoryUpdate                                                                           # OPTIONAL in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    category_path: str                                                                             # REQUIRED in [path]
    store_id: str                                                                                  # REQUIRED in [query]

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
            url = url.replace(f"{{{k}}}", v)
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "category_path",
            "store_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "category_path"):
            result["categoryPath"] = self.category_path
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "category_path") or self.category_path is None:
            return False
        if not hasattr(self, "store_id") or self.store_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: CategoryUpdate) -> UpdateCategory:
        self.body = value
        return self

    def with_namespace(self, value: str) -> UpdateCategory:
        self.namespace = value
        return self

    def with_category_path(self, value: str) -> UpdateCategory:
        self.category_path = value
        return self

    def with_store_id(self, value: str) -> UpdateCategory:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = CategoryUpdate()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "category_path") and self.category_path:
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = str()
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, FullCategoryInfo], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - FullCategoryInfo (successful operation)

        400: Bad Request - ErrorEntity (ErrorCode: 30021 | ErrorMessage: Default language [{language}] required)

        404: Not Found - ErrorEntity (ErrorCode: 30241 | ErrorMessage: Category [{categoryPath}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (ErrorCode: 30173 | ErrorMessage: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (ErrorCode: 20002 | ErrorMessage: validation error)
        """
        if code == 200:
            return FullCategoryInfo.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        category_path: str,
        store_id: str,
        body: Optional[CategoryUpdate] = None,
    ) -> UpdateCategory:
        instance = cls()
        instance.namespace = namespace
        instance.category_path = category_path
        instance.store_id = store_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateCategory:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = CategoryUpdate.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = CategoryUpdate()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "categoryPath": "category_path",
            "storeId": "store_id",
        }

    # endregion static methods
