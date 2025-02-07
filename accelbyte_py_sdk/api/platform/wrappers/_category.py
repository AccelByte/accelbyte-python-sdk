# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import BasicCategoryInfo
from ..models import CategoryCreate
from ..models import CategoryInfo
from ..models import CategoryUpdate
from ..models import ErrorEntity
from ..models import FullCategoryInfo
from ..models import HierarchicalCategoryInfo
from ..models import ValidationErrorEntity

from ..operations.category import CreateCategory
from ..operations.category import DeleteCategory
from ..operations.category import DownloadCategories
from ..operations.category import GetCategory
from ..operations.category import GetChildCategories
from ..operations.category import GetDescendantCategories
from ..operations.category import GetRootCategories
from ..operations.category import ListCategoriesBasic
from ..operations.category import PublicGetCategory
from ..operations.category import PublicGetChildCategories
from ..operations.category import PublicGetDescendantCategories
from ..operations.category import PublicGetRootCategories
from ..operations.category import UpdateCategory


@same_doc_as(CreateCategory)
def create_category(
    body: CategoryCreate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create category (createCategory)

    This API is used to create category.

    A category is a path separated by "/". A category also has localized display names. Example:


        {

            "categoryPath": "/games",

            "localizationDisplayNames": {"en" : "Games"}

        }

    Other detail info:

      * Returns : created category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories

        method: POST

        tags: ["Category"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CategoryCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullCategoryInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30271: Category [{categoryPath}] already exists in namespace [{namespace}] | 30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateCategory.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateCategory)
async def create_category_async(
    body: CategoryCreate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create category (createCategory)

    This API is used to create category.

    A category is a path separated by "/". A category also has localized display names. Example:


        {

            "categoryPath": "/games",

            "localizationDisplayNames": {"en" : "Games"}

        }

    Other detail info:

      * Returns : created category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories

        method: POST

        tags: ["Category"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CategoryCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullCategoryInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30271: Category [{categoryPath}] already exists in namespace [{namespace}] | 30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateCategory.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteCategory)
def delete_category(
    category_path: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete category (deleteCategory)

    This API is used to delete category by category path.

    Other detail info:

      * Returns : the deleted category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}

        method: DELETE

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullCategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30272: Category [{categoryPath}] is not empty in namespace [{namespace}] | 30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCategory.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteCategory)
async def delete_category_async(
    category_path: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete category (deleteCategory)

    This API is used to delete category by category path.

    Other detail info:

      * Returns : the deleted category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}

        method: DELETE

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullCategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30272: Category [{categoryPath}] is not empty in namespace [{namespace}] | 30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCategory.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DownloadCategories)
def download_categories(
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download store's structured categories (downloadCategories)

    This API is used to download store's structured categories.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store content)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store content)
      *  Returns : structured categories

    Properties:
        url: /platform/public/namespaces/{namespace}/categories/download

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[HierarchicalCategoryInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadCategories.create(
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DownloadCategories)
async def download_categories_async(
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download store's structured categories (downloadCategories)

    This API is used to download store's structured categories.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store content)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store content)
      *  Returns : structured categories

    Properties:
        url: /platform/public/namespaces/{namespace}/categories/download

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[HierarchicalCategoryInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadCategories.create(
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCategory)
def get_category(
    category_path: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get category (getCategory)

    This API is used to get category by category path.

    Other detail info:

      * Returns : category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullCategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCategory.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCategory)
async def get_category_async(
    category_path: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get category (getCategory)

    This API is used to get category by category path.

    Other detail info:

      * Returns : category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullCategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCategory.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetChildCategories)
def get_child_categories(
    category_path: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get child categories (getChildCategories)

    This API is used to get child categories by category path.

    Other detail info:

      * Returns : list of child categories data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}/children

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[FullCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChildCategories.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetChildCategories)
async def get_child_categories_async(
    category_path: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get child categories (getChildCategories)

    This API is used to get child categories by category path.

    Other detail info:

      * Returns : list of child categories data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}/children

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[FullCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChildCategories.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetDescendantCategories)
def get_descendant_categories(
    category_path: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get descendant categories (getDescendantCategories)

    This API is used to get descendant categories by category path.

    Other detail info:

      * Returns : list of descendant categories data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}/descendants

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[FullCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDescendantCategories.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDescendantCategories)
async def get_descendant_categories_async(
    category_path: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get descendant categories (getDescendantCategories)

    This API is used to get descendant categories by category path.

    Other detail info:

      * Returns : list of descendant categories data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}/descendants

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[FullCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDescendantCategories.create(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetRootCategories)
def get_root_categories(
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get root categories (getRootCategories)

    This API is used to get root categories.

    Other detail info:

      * Returns : root category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[FullCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRootCategories.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetRootCategories)
async def get_root_categories_async(
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get root categories (getRootCategories)

    This API is used to get root categories.

    Other detail info:

      * Returns : root category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[FullCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRootCategories.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListCategoriesBasic)
def list_categories_basic(
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List categories' basic info (listCategoriesBasic)

    This API is used to list all categories' basic info of a store ordered by category path.

    Other detail info:

      * Returns : list of categories' paths

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/basic

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[BasicCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListCategoriesBasic.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListCategoriesBasic)
async def list_categories_basic_async(
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List categories' basic info (listCategoriesBasic)

    This API is used to list all categories' basic info of a store ordered by category path.

    Other detail info:

      * Returns : list of categories' paths

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/basic

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[BasicCategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListCategoriesBasic.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetCategory)
def public_get_category(
    category_path: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - CategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCategory.create(
        category_path=category_path,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetCategory)
async def public_get_category_async(
    category_path: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - CategoryInfo (successful operation)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCategory.create(
        category_path=category_path,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetChildCategories)
def public_get_child_categories(
    category_path: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Child Categories (publicGetChildCategories)

    This API is used to get child categories by category path.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
      *  Returns : list of child categories data

    Properties:
        url: /platform/public/namespaces/{namespace}/categories/{categoryPath}/children

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[CategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetChildCategories.create(
        category_path=category_path,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetChildCategories)
async def public_get_child_categories_async(
    category_path: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Child Categories (publicGetChildCategories)

    This API is used to get child categories by category path.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
      *  Returns : list of child categories data

    Properties:
        url: /platform/public/namespaces/{namespace}/categories/{categoryPath}/children

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[CategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetChildCategories.create(
        category_path=category_path,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetDescendantCategories)
def public_get_descendant_categories(
    category_path: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Descendant Categories (publicGetDescendantCategories)

    This API is used to get descendant categories by category path.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
      *  Returns : list of descendant categories data

    Properties:
        url: /platform/public/namespaces/{namespace}/categories/{categoryPath}/descendants

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[CategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetDescendantCategories.create(
        category_path=category_path,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetDescendantCategories)
async def public_get_descendant_categories_async(
    category_path: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Descendant Categories (publicGetDescendantCategories)

    This API is used to get descendant categories by category path.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
      *  Returns : list of descendant categories data

    Properties:
        url: /platform/public/namespaces/{namespace}/categories/{categoryPath}/descendants

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[CategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetDescendantCategories.create(
        category_path=category_path,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetRootCategories)
def public_get_root_categories(
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Root Categories (publicGetRootCategories)

    This API is used to get root categories.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
      *  Returns : root category data

    Properties:
        url: /platform/public/namespaces/{namespace}/categories

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[CategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetRootCategories.create(
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetRootCategories)
async def public_get_root_categories_async(
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Root Categories (publicGetRootCategories)

    This API is used to get root categories.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
      *  Returns : root category data

    Properties:
        url: /platform/public/namespaces/{namespace}/categories

        method: GET

        tags: ["Category"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[CategoryInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetRootCategories.create(
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCategory)
def update_category(
    body: CategoryUpdate,
    category_path: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update category (updateCategory)

    This API is used to update category.

    The category update data is a category object, example as:


        {

            "storeId": "store-id",

            "localizationDisplayNames": {"en" : "Games"}

        }

    Other detail info:

      * Returns : the updated category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}

        method: PUT

        tags: ["Category"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CategoryUpdate in body

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullCategoryInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCategory.create(
        body=body,
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCategory)
async def update_category_async(
    body: CategoryUpdate,
    category_path: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update category (updateCategory)

    This API is used to update category.

    The category update data is a category object, example as:


        {

            "storeId": "store-id",

            "localizationDisplayNames": {"en" : "Games"}

        }

    Other detail info:

      * Returns : the updated category data

    Properties:
        url: /platform/admin/namespaces/{namespace}/categories/{categoryPath}

        method: PUT

        tags: ["Category"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CategoryUpdate in body

        category_path: (categoryPath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullCategoryInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30241: Category [{categoryPath}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCategory.create(
        body=body,
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
