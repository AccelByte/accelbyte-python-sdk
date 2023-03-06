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
from ..models import FullSectionInfo
from ..models import SectionCreate
from ..models import SectionInfo
from ..models import SectionPagingSlicedResult
from ..models import SectionUpdate
from ..models import ValidationErrorEntity

from ..operations.section import CreateSection
from ..operations.section import DeleteSection
from ..operations.section import GetSection
from ..operations.section import PublicListActiveSections
from ..operations.section import PurgeExpiredSection
from ..operations.section import QuerySections
from ..operations.section import UpdateSection
from ..models import FullSectionInfoRotationTypeEnum
from ..models import SectionCreateRotationTypeEnum
from ..models import SectionUpdateRotationTypeEnum


@same_doc_as(CreateSection)
def create_section(
    store_id: str,
    body: Optional[SectionCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a section (createSection)

    This API is used to create a section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
      *  Returns : created a section

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections

        method: POST

        tags: ["Section"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL SectionCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullSectionInfo (successful operation)

        400: Bad Request - ErrorEntity (20027: Invalid time range | 30021: Default language [{language}] required | 30023: Catalog plugin grpc server address required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateSection.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateSection)
async def create_section_async(
    store_id: str,
    body: Optional[SectionCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a section (createSection)

    This API is used to create a section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
      *  Returns : created a section

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections

        method: POST

        tags: ["Section"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL SectionCreate in body

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        201: Created - FullSectionInfo (successful operation)

        400: Bad Request - ErrorEntity (20027: Invalid time range | 30021: Default language [{language}] required | 30023: Catalog plugin grpc server address required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateSection.create(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSection)
def delete_section(
    section_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a section (deleteSection)

    This API is used to delete s section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/{sectionId}

        method: DELETE

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        section_id: (sectionId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (Delete section successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSection.create(
        section_id=section_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSection)
async def delete_section_async(
    section_id: str,
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a section (deleteSection)

    This API is used to delete s section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/{sectionId}

        method: DELETE

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        section_id: (sectionId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (Delete section successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSection.create(
        section_id=section_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSection)
def get_section(
    section_id: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a section (getSection)

    This API is used to get a section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : section data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/{sectionId}

        method: GET

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        section_id: (sectionId) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullSectionInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSection.create(
        section_id=section_id,
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSection)
async def get_section_async(
    section_id: str,
    store_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a section (getSection)

    This API is used to get a section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : section data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/{sectionId}

        method: GET

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        section_id: (sectionId) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - FullSectionInfo (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSection.create(
        section_id=section_id,
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListActiveSections)
def public_list_active_sections(
    user_id: str,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    view_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List active section contents (publicListActiveSections)

    This API is used to list active section contents.

    Other detail info:

      * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:STORE, action=2 (READ)
      *  Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store sections)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store sections)
      *  Returns : active section contents

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/sections

        method: GET

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        view_id: (viewId) OPTIONAL str in query

    Responses:
        200: OK - List[SectionInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListActiveSections.create(
        user_id=user_id,
        language=language,
        region=region,
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListActiveSections)
async def public_list_active_sections_async(
    user_id: str,
    language: Optional[str] = None,
    region: Optional[str] = None,
    store_id: Optional[str] = None,
    view_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List active section contents (publicListActiveSections)

    This API is used to list active section contents.

    Other detail info:

      * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:STORE, action=2 (READ)
      *  Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store sections)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store sections)
      *  Returns : active section contents

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/sections

        method: GET

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        language: (language) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        view_id: (viewId) OPTIONAL str in query

    Responses:
        200: OK - List[SectionInfo] (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListActiveSections.create(
        user_id=user_id,
        language=language,
        region=region,
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PurgeExpiredSection)
def purge_expired_section(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """purge expired section (purgeExpiredSection)

    This API is used to purge expired section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/purge/expired

        method: DELETE

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (purge expired section successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PurgeExpiredSection.create(
        store_id=store_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PurgeExpiredSection)
async def purge_expired_section_async(
    store_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """purge expired section (purgeExpiredSection)

    This API is used to purge expired section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/purge/expired

        method: DELETE

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (purge expired section successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PurgeExpiredSection.create(
        store_id=store_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QuerySections)
def query_sections(
    end: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start: Optional[str] = None,
    store_id: Optional[str] = None,
    view_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List sections (querySections)

    This API is used to query sections.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : paginated sections

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections

        method: GET

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start: (start) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        view_id: (viewId) OPTIONAL str in query

    Responses:
        200: OK - SectionPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QuerySections.create(
        end=end,
        limit=limit,
        offset=offset,
        start=start,
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QuerySections)
async def query_sections_async(
    end: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start: Optional[str] = None,
    store_id: Optional[str] = None,
    view_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List sections (querySections)

    This API is used to query sections.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : paginated sections

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections

        method: GET

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start: (start) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        view_id: (viewId) OPTIONAL str in query

    Responses:
        200: OK - SectionPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QuerySections.create(
        end=end,
        limit=limit,
        offset=offset,
        start=start,
        store_id=store_id,
        view_id=view_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSection)
def update_section(
    section_id: str,
    store_id: str,
    body: Optional[SectionUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update s section (updateSection)

    This API is used to update s section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
      *  Returns : updated section data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/{sectionId}

        method: PUT

        tags: ["Section"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL SectionUpdate in body

        namespace: (namespace) REQUIRED str in path

        section_id: (sectionId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullSectionInfo (successful operation)

        400: Bad Request - ErrorEntity (20027: Invalid time range | 30021: Default language [{language}] required | 30023: Catalog plugin grpc server address required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateSection.create(
        section_id=section_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSection)
async def update_section_async(
    section_id: str,
    store_id: str,
    body: Optional[SectionUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update s section (updateSection)

    This API is used to update s section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
      *  Returns : updated section data

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/{sectionId}

        method: PUT

        tags: ["Section"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL SectionUpdate in body

        namespace: (namespace) REQUIRED str in path

        section_id: (sectionId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        200: OK - FullSectionInfo (successful operation)

        400: Bad Request - ErrorEntity (20027: Invalid time range | 30021: Default language [{language}] required | 30023: Catalog plugin grpc server address required)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30641: View [{viewId}] does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateSection.create(
        section_id=section_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
