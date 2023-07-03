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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ErrorEntity
from ..models import ExportStoreRequest
from ..models import ImportStoreResult
from ..models import StoreBackupInfo
from ..models import StoreCreate
from ..models import StoreInfo
from ..models import StoreUpdate
from ..models import ValidationErrorEntity

from ..operations.store import CloneStore
from ..operations.store import CreateStore
from ..operations.store import DeletePublishedStore
from ..operations.store import DeleteStore
from ..operations.store import ExportStore
from ..operations.store import ExportStore1
from ..operations.store import GetPublishedStore
from ..operations.store import GetPublishedStoreBackup
from ..operations.store import GetStore
from ..operations.store import ImportStore
from ..operations.store import ImportStore1
from ..operations.store import ListStores
from ..operations.store import PublicListStores
from ..operations.store import RollbackPublishedStore
from ..operations.store import UpdateStore


@same_doc_as(CloneStore)
def clone_store(
    store_id: str,
    target_store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Clone a store (cloneStore)

    This API is used to clone a store. Usually clone a draft store to published store because published store can't directly edit content.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
      *  Returns : clone store info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/clone

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        target_store_id: (targetStoreId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CloneStore.create(
        store_id=store_id,
        target_store_id=target_store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CloneStore)
async def clone_store_async(
    store_id: str,
    target_store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Clone a store (cloneStore)

    This API is used to clone a store. Usually clone a draft store to published store because published store can't directly edit content.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
      *  Returns : clone store info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/clone

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        target_store_id: (targetStoreId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CloneStore.create(
        store_id=store_id,
        target_store_id=target_store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateStore)
def create_store(
    body: Optional[StoreCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a store (createStore)

    This API is used to create a non published store in a namespace.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
      *  Returns : created store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StoreCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StoreInfo (successful operation)

        409: Conflict - ErrorEntity (30174: Draft store already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateStore.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateStore)
async def create_store_async(
    body: Optional[StoreCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a store (createStore)

    This API is used to create a non published store in a namespace.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
      *  Returns : created store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StoreCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StoreInfo (successful operation)

        409: Conflict - ErrorEntity (30174: Draft store already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateStore.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePublishedStore)
def delete_published_store(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete published store (deletePublishedStore)

    This API is used to delete published store including category and items before release to public.

     Warning: Please do not use this API once published to public user.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeletePublishedStore.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePublishedStore)
async def delete_published_store_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete published store (deletePublishedStore)

    This API is used to delete published store including category and items before release to public.

     Warning: Please do not use this API once published to public user.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeletePublishedStore.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteStore)
def delete_store(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a store (deleteStore)

    This API is used to delete a store. Only non published store can be deleted.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
      *  Returns : store

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteStore.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteStore)
async def delete_store_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a store (deleteStore)

    This API is used to delete a store. Only non published store can be deleted.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
      *  Returns : store

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteStore.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ExportStore)
def export_store(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export a store (exportStore)

    This API is used to export a store.

    This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/export to export store.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/export

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/zip"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportStore.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ExportStore)
async def export_store_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export a store (exportStore)

    This API is used to export a store.

    This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/export to export store.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/export

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/zip"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportStore.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExportStore1)
def export_store_1(
    store_id: str,
    body: Optional[ExportStoreRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export a store (exportStore_1)

    This API is used to export a whole or partial store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/zip"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL ExportStoreRequest in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportStore1.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportStore1)
async def export_store_1_async(
    store_id: str,
    body: Optional[ExportStoreRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export a store (exportStore_1)

    This API is used to export a whole or partial store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/zip"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL ExportStoreRequest in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportStore1.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPublishedStore)
def get_published_store(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get published store (getPublishedStore)

    This API is used to get a published store basic info, exclude category and item information.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublishedStore.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPublishedStore)
async def get_published_store_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get published store (getPublishedStore)

    This API is used to get a published store basic info, exclude category and item information.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublishedStore.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPublishedStoreBackup)
def get_published_store_backup(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a published store's backup (getPublishedStoreBackup)

    This API is used to get a store's backup.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : store backup info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/backup

        method: GET

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreBackupInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublishedStoreBackup.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPublishedStoreBackup)
async def get_published_store_backup_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a published store's backup (getPublishedStoreBackup)

    This API is used to get a store's backup.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : store backup info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/backup

        method: GET

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreBackupInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublishedStoreBackup.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStore)
def get_store(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a store (getStore)

    This API is used to get a store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStore.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStore)
async def get_store_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a store (getStore)

    This API is used to get a store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStore.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ImportStore)
def import_store(
    file: Optional[Any] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import a store (importStore)

    This API is used to import a store.

    This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/import to import store.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30122: Item [{itemId}] does not exist in namespace [{namespace}] | 30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}] | 37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportStore.create(
        file=file,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ImportStore)
async def import_store_async(
    file: Optional[Any] = None,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import a store (importStore)

    This API is used to import a store.

    This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/import to import store.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30122: Item [{itemId}] does not exist in namespace [{namespace}] | 30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}] | 37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportStore.create(
        file=file,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImportStore1)
def import_store_1(
    file: Optional[Any] = None,
    store_id: Optional[str] = None,
    strict_mode: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import a store (importStore_1)

    This API is used to import a store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

        strict_mode: (strictMode) OPTIONAL bool in query

    Responses:
        200: OK - ImportStoreResult (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportStore1.create(
        file=file,
        store_id=store_id,
        strict_mode=strict_mode,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportStore1)
async def import_store_1_async(
    file: Optional[Any] = None,
    store_id: Optional[str] = None,
    strict_mode: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import a store (importStore_1)

    This API is used to import a store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

        strict_mode: (strictMode) OPTIONAL bool in query

    Responses:
        200: OK - ImportStoreResult (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportStore1.create(
        file=file,
        store_id=store_id,
        strict_mode=strict_mode,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListStores)
def list_stores(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stores (listStores)

    This API is used to list stores in a namespace.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : the list of stores

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[StoreInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListStores.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListStores)
async def list_stores_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stores (listStores)

    This API is used to list stores in a namespace.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : the list of stores

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[StoreInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListStores.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListStores)
def public_list_stores(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all stores (publicListStores)

    This API is used to list all stores in a namespace.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store)
      *  Returns : the list of stores

    Properties:
        url: /platform/public/namespaces/{namespace}/stores

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[StoreInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListStores.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListStores)
async def public_list_stores_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all stores (publicListStores)

    This API is used to list all stores in a namespace.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store)
      *  Returns : the list of stores

    Properties:
        url: /platform/public/namespaces/{namespace}/stores

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[StoreInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListStores.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RollbackPublishedStore)
def rollback_published_store(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rollback a published store (rollbackPublishedStore)

    This API is used to rollback a published store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
      *  Returns : updated store info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/rollback

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RollbackPublishedStore.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RollbackPublishedStore)
async def rollback_published_store_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rollback a published store (rollbackPublishedStore)

    This API is used to rollback a published store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
      *  Returns : updated store info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/rollback

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RollbackPublishedStore.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateStore)
def update_store(
    store_id: str,
    body: Optional[StoreUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a store (updateStore)

    This API is used to Update a store basic info.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
      *  Returns : updated store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StoreUpdate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30171: Store [{store}] can't change default language to [{language}] | 30172: Store [{store}] can't change default region to [{region}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateStore.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateStore)
async def update_store_async(
    store_id: str,
    body: Optional[StoreUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a store (updateStore)

    This API is used to Update a store basic info.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
      *  Returns : updated store data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StoreUpdate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30171: Store [{store}] can't change default language to [{language}] | 30172: Store [{store}] can't change default region to [{region}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateStore.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
