# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-platform-service (4.2.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import CategoryInfo
from ...models import ErrorEntity


class PublicGetCategory(Operation):
    """Get Category (publicGetCategory)

    This API is used to get category by category path.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
      *  Optional permission : resource="SANDBOX", action=1 (CREATE)(user with this permission can view draft store category)
      *  Returns : category data


    Properties:
        url: /platform/public/namespaces/{namespace}/categories/{categoryPath}

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - CategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/categories/{categoryPath}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    category_path: str                                                                             # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]
    language: str                                                                                  # OPTIONAL in [query]
    store_id: str                                                                                  # OPTIONAL in [query]

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
            "category_path",
            "namespace",
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
        if hasattr(self, "category_path"):
            result["categoryPath"] = self.category_path
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "language"):
            result["language"] = self.language
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "category_path") or self.category_path is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_category_path(self, value: str) -> PublicGetCategory:
        self.category_path = value
        return self

    def with_namespace(self, value: str) -> PublicGetCategory:
        self.namespace = value
        return self

    def with_language(self, value: str) -> PublicGetCategory:
        self.language = value
        return self

    def with_store_id(self, value: str) -> PublicGetCategory:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category_path") and self.category_path:
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, CategoryInfo], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - CategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])
        """
        if code == 200:
            return CategoryInfo.create_from_dict(content), None
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
        category_path: str,
        namespace: str,
        language: Optional[str] = None,
        store_id: Optional[str] = None,
    ) -> PublicGetCategory:
        instance = cls()
        instance.category_path = category_path
        instance.namespace = namespace
        if language is not None:
            instance.language = language
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicGetCategory:
        instance = cls()
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "categoryPath": "category_path",
            "namespace": "namespace",
            "language": "language",
            "storeId": "store_id",
        }

    # endregion static methods
