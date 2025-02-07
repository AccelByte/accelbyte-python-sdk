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

from ..models import ErrorEntity
from ..models import FullViewInfo
from ..models import ListViewInfo
from ..models import ValidationErrorEntity
from ..models import ViewCreate
from ..models import ViewInfo
from ..models import ViewUpdate

from ..operations.view import CreateView
from ..operations.view import DeleteView
from ..operations.view import GetView
from ..operations.view import ListViews
from ..operations.view import PublicListViews
from ..operations.view import UpdateView


@same_doc_as(CreateView)
def create_view(
    body: ViewCreate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a view (createView)

    This API is used to create a view.

    Other detail info:

      * Returns : created a view



    ## Restrictions for localization extension


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/views

        method: POST

        tags: ["View"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ViewCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullViewInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateView.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateView)
async def create_view_async(
    body: ViewCreate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a view (createView)

    This API is used to create a view.

    Other detail info:

      * Returns : created a view



    ## Restrictions for localization extension


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/views

        method: POST

        tags: ["View"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ViewCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullViewInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateView.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteView)
def delete_view(
    store_id: str,
    view_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a view (deleteView)

    This API is used to delete a view.It will also delete all the related sections

    Properties:
        url: /platform/admin/namespaces/{namespace}/views/{viewId}

        method: DELETE

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        view_id: (viewId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (Delete view successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteView.create(
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteView)
async def delete_view_async(
    store_id: str,
    view_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a view (deleteView)

    This API is used to delete a view.It will also delete all the related sections

    Properties:
        url: /platform/admin/namespaces/{namespace}/views/{viewId}

        method: DELETE

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        view_id: (viewId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (Delete view successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteView.create(
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetView)
def get_view(
    view_id: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a view (getView)

    This API is used to get a view.

    Other detail info:

      * Returns : view data

    Properties:
        url: /platform/admin/namespaces/{namespace}/views/{viewId}

        method: GET

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        view_id: (viewId) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullViewInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetView.create(
        view_id=view_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetView)
async def get_view_async(
    view_id: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a view (getView)

    This API is used to get a view.

    Other detail info:

      * Returns : view data

    Properties:
        url: /platform/admin/namespaces/{namespace}/views/{viewId}

        method: GET

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        view_id: (viewId) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullViewInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetView.create(
        view_id=view_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListViews)
def list_views(
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all views (listViews)

    This API is used to list all views.

    Other detail info:

      * Returns : the list of views

    Properties:
        url: /platform/admin/namespaces/{namespace}/views

        method: GET

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[ListViewInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListViews.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListViews)
async def list_views_async(
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all views (listViews)

    This API is used to list all views.

    Other detail info:

      * Returns : the list of views

    Properties:
        url: /platform/admin/namespaces/{namespace}/views

        method: GET

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[ListViewInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListViews.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListViews)
def public_list_views(
    user_id: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all views (publicListViews)

    This API is used to get all views.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store views)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store views)
      *  Returns : all views

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/views

        method: GET

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[ViewInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListViews.create(
        user_id=user_id,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListViews)
async def public_list_views_async(
    user_id: str,
    language: Optional[str] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all views (publicListViews)

    This API is used to get all views.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store views)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store views)
      *  Returns : all views

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/views

        method: GET

        tags: ["View"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        language: (language) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - List[ViewInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListViews.create(
        user_id=user_id,
        language=language,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateView)
def update_view(
    body: ViewUpdate,
    store_id: str,
    view_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a view (updateView)

    This API is used to update a view.

    Other detail info:

      * Returns : updated view data



    ## Restrictions for localization extension


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/views/{viewId}

        method: PUT

        tags: ["View"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ViewUpdate in body

        namespace: (namespace) REQUIRED str in path

        view_id: (viewId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullViewInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateView.create(
        body=body,
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateView)
async def update_view_async(
    body: ViewUpdate,
    store_id: str,
    view_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a view (updateView)

    This API is used to update a view.

    Other detail info:

      * Returns : updated view data



    ## Restrictions for localization extension


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/views/{viewId}

        method: PUT

        tags: ["View"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ViewUpdate in body

        namespace: (namespace) REQUIRED str in path

        view_id: (viewId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullViewInfo (successful operation)

        400: Bad Request - ErrorEntity (30021: Default language [{language}] required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateView.create(
        body=body,
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
