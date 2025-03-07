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

from ..models import CatalogConfigInfo
from ..models import CatalogConfigUpdate
from ..models import CatalogDefinitionInfo
from ..models import ErrorEntity
from ..models import ExportStoreRequest
from ..models import ExportStoreToCSVRequest
from ..models import ImportStoreHistoryPagingResult
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
from ..operations.store import DownloadCSVTemplates
from ..operations.store import ExportStore
from ..operations.store import ExportStore1
from ..operations.store import ExportStoreByCSV
from ..operations.store import GetCatalogConfig
from ..operations.store import GetCatalogDefinition
from ..operations.store import GetCatalogDefinitionCatalogTypeEnum
from ..operations.store import GetPublishedStore
from ..operations.store import GetPublishedStoreBackup
from ..operations.store import GetStore
from ..operations.store import ImportStore
from ..operations.store import ImportStore1
from ..operations.store import ImportStoreByCSV
from ..operations.store import ListStores
from ..operations.store import PublicListStores
from ..operations.store import QueryImportHistory
from ..operations.store import RollbackPublishedStore
from ..operations.store import UpdateCatalogConfig
from ..operations.store import UpdateStore
from ..models import CatalogConfigInfoItemDeletionCheckConfigEnum
from ..models import CatalogConfigUpdateItemDeletionCheckConfigEnum
from ..models import CatalogDefinitionInfoItemTypeEnum
from ..models import ExportStoreToCSVRequestCatalogTypeEnum


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

      * Returns : clone store info

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/clone

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        target_store_id: (targetStoreId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : clone store info

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/clone

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        target_store_id: (targetStoreId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30122: Store's meta mismatch)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: StoreCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a store (createStore)

    This API is used to create a non published store in a namespace.

    Other detail info:

      * Returns : created store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StoreCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StoreInfo (successful operation)

        409: Conflict - ErrorEntity (30174: Draft store already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateStore.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateStore)
async def create_store_async(
    body: StoreCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a store (createStore)

    This API is used to create a non published store in a namespace.

    Other detail info:

      * Returns : created store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StoreCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StoreInfo (successful operation)

        409: Conflict - ErrorEntity (30174: Draft store already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : store

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : store

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: DELETE

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteStore.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DownloadCSVTemplates)
def download_csv_templates(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download store csv templates (downloadCSVTemplates)

    This API is used to download store csv templates for store importing by CSV feature

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/downloadCSVTemplates

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/zip"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadCSVTemplates.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DownloadCSVTemplates)
async def download_csv_templates_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download store csv templates (downloadCSVTemplates)

    This API is used to download store csv templates for store importing by CSV feature

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/downloadCSVTemplates

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/zip"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadCSVTemplates.create(
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

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/export

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/zip"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/export

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/zip"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/zip"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ExportStoreRequest in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/zip"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ExportStoreRequest in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(ExportStoreByCSV)
def export_store_by_csv(
    body: ExportStoreToCSVRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export a store to CSV format (exportStoreByCSV)

    This API is used to export a store to CSV format

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/exportByCSV

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["text/csv"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ExportStoreToCSVRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        400: Bad Request - ErrorEntity (30025: [{header}] is required by CSV import/export for catalogType [{catalogType}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30076: CSV header [{headerName}] is not supported for CatalogType [{catalogType}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportStoreByCSV.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportStoreByCSV)
async def export_store_by_csv_async(
    body: ExportStoreToCSVRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export a store to CSV format (exportStoreByCSV)

    This API is used to export a store to CSV format

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/exportByCSV

        method: POST

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["text/csv"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ExportStoreToCSVRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        400: Bad Request - ErrorEntity (30025: [{header}] is required by CSV import/export for catalogType [{catalogType}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30076: CSV header [{headerName}] is not supported for CatalogType [{catalogType}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportStoreByCSV.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCatalogConfig)
def get_catalog_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get catalog config (getCatalogConfig)

    Get catalog config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/configs

        method: GET

        tags: ["Store"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CatalogConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCatalogConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCatalogConfig)
async def get_catalog_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get catalog config (getCatalogConfig)

    Get catalog config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/configs

        method: GET

        tags: ["Store"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CatalogConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCatalogConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCatalogDefinition)
def get_catalog_definition(
    catalog_type: Union[str, GetCatalogDefinitionCatalogTypeEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get catalog definition (getCatalogDefinition)

    This API is used to get catalog definition for import/export store by CSV

    Other detail info:

      * Returns : catalog definition

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/catalogDefinition

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        catalog_type: (catalogType) REQUIRED Union[str, CatalogTypeEnum] in query

    Responses:
        200: OK - List[CatalogDefinitionInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCatalogDefinition.create(
        catalog_type=catalog_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCatalogDefinition)
async def get_catalog_definition_async(
    catalog_type: Union[str, GetCatalogDefinitionCatalogTypeEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get catalog definition (getCatalogDefinition)

    This API is used to get catalog definition for import/export store by CSV

    Other detail info:

      * Returns : catalog definition

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/catalogDefinition

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        catalog_type: (catalogType) REQUIRED Union[str, CatalogTypeEnum] in query

    Responses:
        200: OK - List[CatalogDefinitionInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCatalogDefinition.create(
        catalog_type=catalog_type,
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

      * Returns : store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : store backup info

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/backup

        method: GET

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreBackupInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : store backup info

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/backup

        method: GET

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreBackupInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30122: Item [{itemId}] does not exist in namespace [{namespace}] | 30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}] | 37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30122: Item [{itemId}] does not exist in namespace [{namespace}] | 30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}] | 37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(ImportStoreByCSV)
def import_store_by_csv(
    category: Any,
    display: Any,
    item: Any,
    notes: str,
    section: Any,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import store using CSV format (importStoreByCSV)

    This API is used to import a store by CSV format.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV

        method: POST

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category: (category) REQUIRED Any in form_data

        display: (display) REQUIRED Any in form_data

        item: (item) REQUIRED Any in form_data

        notes: (notes) REQUIRED str in form_data

        section: (section) REQUIRED Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - ImportStoreResult (successful operation)

        400: Bad Request - ErrorEntity (30024: Unable to parse CSV cell [{content}] | 30025: [{header}] is required by CSV import/export for catalogType [{catalogType}] | 30121: Store data is invalid)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30076: CSV header [{headerName}] is not supported for CatalogType [{catalogType}] | 30382: Duplicated Item sku [{sku}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportStoreByCSV.create(
        category=category,
        display=display,
        item=item,
        notes=notes,
        section=section,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportStoreByCSV)
async def import_store_by_csv_async(
    category: Any,
    display: Any,
    item: Any,
    notes: str,
    section: Any,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import store using CSV format (importStoreByCSV)

    This API is used to import a store by CSV format.

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV

        method: POST

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category: (category) REQUIRED Any in form_data

        display: (display) REQUIRED Any in form_data

        item: (item) REQUIRED Any in form_data

        notes: (notes) REQUIRED str in form_data

        section: (section) REQUIRED Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - ImportStoreResult (successful operation)

        400: Bad Request - ErrorEntity (30024: Unable to parse CSV cell [{content}] | 30025: [{header}] is required by CSV import/export for catalogType [{catalogType}] | 30121: Store data is invalid)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30076: CSV header [{headerName}] is not supported for CatalogType [{catalogType}] | 30382: Duplicated Item sku [{sku}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportStoreByCSV.create(
        category=category,
        display=display,
        item=item,
        notes=notes,
        section=section,
        store_id=store_id,
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

      * Returns : the list of stores

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : the list of stores

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListStores.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryImportHistory)
def query_import_history(
    store_id: str,
    end: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    start: Optional[str] = None,
    success: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query import store history (queryImportHistory)

    This API is used to query import store history

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/import/history

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        end: (end) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        start: (start) OPTIONAL str in query

        success: (success) OPTIONAL bool in query

    Responses:
        200: OK - ImportStoreHistoryPagingResult (successful operation)

        400: Bad Request - ErrorEntity (20027: Invalid time range)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryImportHistory.create(
        store_id=store_id,
        end=end,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        start=start,
        success=success,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryImportHistory)
async def query_import_history_async(
    store_id: str,
    end: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    start: Optional[str] = None,
    success: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query import store history (queryImportHistory)

    This API is used to query import store history

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/import/history

        method: GET

        tags: ["Store"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        end: (end) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        start: (start) OPTIONAL str in query

        success: (success) OPTIONAL bool in query

    Responses:
        200: OK - ImportStoreHistoryPagingResult (successful operation)

        400: Bad Request - ErrorEntity (20027: Invalid time range)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryImportHistory.create(
        store_id=store_id,
        end=end,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        start=start,
        success=success,
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

      * Returns : updated store info

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/rollback

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : updated store info

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/published/rollback

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30142: Published store does not exist in namespace [{namespace}] | 30143: Published store [{storeId}] backup does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RollbackPublishedStore.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCatalogConfig)
def update_catalog_config(
    body: CatalogConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update catalog config (updateCatalogConfig)

    Update catalog config. Other detail info:

      * Returns : updated catalog config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/configs

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CatalogConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CatalogConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCatalogConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCatalogConfig)
async def update_catalog_config_async(
    body: CatalogConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update catalog config (updateCatalogConfig)

    Update catalog config. Other detail info:

      * Returns : updated catalog config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/configs

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CatalogConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CatalogConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCatalogConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateStore)
def update_store(
    body: StoreUpdate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a store (updateStore)

    This API is used to Update a store basic info.

    Other detail info:

      * Returns : updated store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StoreUpdate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30171: Store [{store}] can't change default language to [{language}] | 30172: Store [{store}] can't change default region to [{region}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateStore.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateStore)
async def update_store_async(
    body: StoreUpdate,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a store (updateStore)

    This API is used to Update a store basic info.

    Other detail info:

      * Returns : updated store data

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}

        method: PUT

        tags: ["Store"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StoreUpdate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        200: OK - StoreInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30171: Store [{store}] can't change default language to [{language}] | 30172: Store [{store}] can't change default region to [{region}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateStore.create(
        body=body,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
