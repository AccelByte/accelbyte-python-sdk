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
from ..models import StatCreate
from ..models import StatImportInfo
from ..models import StatInfo
from ..models import StatPagingSlicedResult
from ..models import StatUpdate
from ..models import ValidationErrorEntity

from ..operations.stat_configuration import CreateStat
from ..operations.stat_configuration import CreateStat1
from ..operations.stat_configuration import DeleteStat
from ..operations.stat_configuration import DeleteTiedStat
from ..operations.stat_configuration import ExportStats
from ..operations.stat_configuration import GetStat
from ..operations.stat_configuration import GetStats
from ..operations.stat_configuration import ImportStats
from ..operations.stat_configuration import QueryStats
from ..operations.stat_configuration import UpdateStat
from ..models import (
    StatCreateGlobalAggregationMethodEnum,
    StatCreateSetByEnum,
    StatCreateVisibilityEnum,
)
from ..models import (
    StatInfoGlobalAggregationMethodEnum,
    StatInfoSetByEnum,
    StatInfoStatusEnum,
    StatInfoVisibilityEnum,
)
from ..models import StatUpdateGlobalAggregationMethodEnum, StatUpdateVisibilityEnum


@same_doc_as(CreateStat)
def create_stat(
    body: StatCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create stat (createStat)

    Create stat.
    Other detail info:

      *  Returns : created stat template
      * default minimum value is 0
      * default maximum value is 1.7976931348623157e+308
      * Field globalAggregationMethod will be ignored when setAsGlobal field is false

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats

        method: POST

        tags: ["StatConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StatInfo (Create stat successfully)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12271: Stat template with code [{statCode}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateStat.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateStat)
async def create_stat_async(
    body: StatCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create stat (createStat)

    Create stat.
    Other detail info:

      *  Returns : created stat template
      * default minimum value is 0
      * default maximum value is 1.7976931348623157e+308
      * Field globalAggregationMethod will be ignored when setAsGlobal field is false

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats

        method: POST

        tags: ["StatConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StatInfo (Create stat successfully)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12271: Stat template with code [{statCode}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateStat.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateStat1)
def create_stat_1(
    body: StatCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create stat (createStat_1)

    Create stat.
    Other detail info:

      *  Returns : created stat template
      * default minimum value is 0
      * default maximum value is 1.7976931348623157e+308
      * Field globalAggregationMethod will be ignored when setAsGlobal field is false

    Properties:
        url: /social/v1/public/namespaces/{namespace}/stats

        method: POST

        tags: ["StatConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StatInfo (Create stat successfully)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12271: Stat template with code [{statCode}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateStat1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateStat1)
async def create_stat_1_async(
    body: StatCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create stat (createStat_1)

    Create stat.
    Other detail info:

      *  Returns : created stat template
      * default minimum value is 0
      * default maximum value is 1.7976931348623157e+308
      * Field globalAggregationMethod will be ignored when setAsGlobal field is false

    Properties:
        url: /social/v1/public/namespaces/{namespace}/stats

        method: POST

        tags: ["StatConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StatInfo (Create stat successfully)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12271: Stat template with code [{statCode}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateStat1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteStat)
def delete_stat(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes stat (deleteStat)

    Deletes stat template.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}

        method: DELETE

        tags: ["StatConfiguration"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of stat)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteStat)
async def delete_stat_async(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes stat (deleteStat)

    Deletes stat template.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}

        method: DELETE

        tags: ["StatConfiguration"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of stat)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteTiedStat)
def delete_tied_stat(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes tied stat (deleteTiedStat)

    Deletes stat template.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied

        method: DELETE

        tags: ["StatConfiguration"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        204: No Content - (Successfully delete the stat of tied status)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12276:  Stat template with code [{statCode}] in namespace [{namespace}] not deletable due it is in an INIT status )

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTiedStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTiedStat)
async def delete_tied_stat_async(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes tied stat (deleteTiedStat)

    Deletes stat template.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied

        method: DELETE

        tags: ["StatConfiguration"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        204: No Content - (Successfully delete the stat of tied status)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12276:  Stat template with code [{statCode}] in namespace [{namespace}] not deletable due it is in an INIT status )

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTiedStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExportStats)
def export_stats(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export all stat configurations (exportStats)

    Export all stat configurations for a given namespace into file At current, only JSON file is supported.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/export

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (successful export of stat configs)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportStats.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportStats)
async def export_stats_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export all stat configurations (exportStats)

    Export all stat configurations for a given namespace into file At current, only JSON file is supported.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/export

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (successful export of stat configs)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportStats.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStat)
def get_stat(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stat by statCode (getStat)

    Get stat by statCode.
    Other detail info:

      *  Returns : stat info

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - StatInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStat)
async def get_stat_async(
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stat by statCode (getStat)

    Get stat by statCode.
    Other detail info:

      *  Returns : stat info

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - StatInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStats)
def get_stats(
    cycle_ids: Optional[str] = None,
    is_global: Optional[bool] = None,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stats (getStats)

    List stats by pagination.
    Other detail info:

      *  Returns : stats

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        cycle_ids: (cycleIds) OPTIONAL str in query

        is_global: (isGlobal) OPTIONAL bool in query

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - StatPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStats.create(
        cycle_ids=cycle_ids,
        is_global=is_global,
        is_public=is_public,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStats)
async def get_stats_async(
    cycle_ids: Optional[str] = None,
    is_global: Optional[bool] = None,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stats (getStats)

    List stats by pagination.
    Other detail info:

      *  Returns : stats

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        cycle_ids: (cycleIds) OPTIONAL str in query

        is_global: (isGlobal) OPTIONAL bool in query

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - StatPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStats.create(
        cycle_ids=cycle_ids,
        is_global=is_global,
        is_public=is_public,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImportStats)
def import_stats(
    file: Optional[Any] = None,
    replace_existing: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import stat configurations (importStats)

    Import stat configurations for a given namespace from file. At current, only JSON file is supported.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/import

        method: POST

        tags: ["StatConfiguration"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        replace_existing: (replaceExisting) OPTIONAL bool in query

    Responses:
        201: Created - StatImportInfo (Import stats successfully)

        400: Bad Request - ErrorEntity (12222: Stats data for namespace [{namespace}] is invalid)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportStats.create(
        file=file,
        replace_existing=replace_existing,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportStats)
async def import_stats_async(
    file: Optional[Any] = None,
    replace_existing: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import stat configurations (importStats)

    Import stat configurations for a given namespace from file. At current, only JSON file is supported.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/import

        method: POST

        tags: ["StatConfiguration"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        replace_existing: (replaceExisting) OPTIONAL bool in query

    Responses:
        201: Created - StatImportInfo (Import stats successfully)

        400: Bad Request - ErrorEntity (12222: Stats data for namespace [{namespace}] is invalid)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportStats.create(
        file=file,
        replace_existing=replace_existing,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryStats)
def query_stats(
    keyword: str,
    is_global: Optional[bool] = None,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query stats by keyword (queryStats)

    Query stats by keyword.
    Other detail info:

      *  Returns : stats

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/search

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_global: (isGlobal) OPTIONAL bool in query

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        keyword: (keyword) REQUIRED str in query

    Responses:
        200: OK - StatPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryStats.create(
        keyword=keyword,
        is_global=is_global,
        is_public=is_public,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryStats)
async def query_stats_async(
    keyword: str,
    is_global: Optional[bool] = None,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query stats by keyword (queryStats)

    Query stats by keyword.
    Other detail info:

      *  Returns : stats

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/search

        method: GET

        tags: ["StatConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_global: (isGlobal) OPTIONAL bool in query

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        keyword: (keyword) REQUIRED str in query

    Responses:
        200: OK - StatPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryStats.create(
        keyword=keyword,
        is_global=is_global,
        is_public=is_public,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateStat)
def update_stat(
    body: StatUpdate,
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update stat (updateStat)

    Update stat.
    Other detail info:

      *  Returns : updated stat
      *  Field globalAggregationMethod will be ignored when the stat is not set as global
      *  Field globalAggregationMethod is not updatable when the stat status is TIED
      *  Field visibility is not updatable when the stat status is TIED

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}

        method: PATCH

        tags: ["StatConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatUpdate in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - StatInfo (successful update of stat)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateStat.create(
        body=body,
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateStat)
async def update_stat_async(
    body: StatUpdate,
    stat_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update stat (updateStat)

    Update stat.
    Other detail info:

      *  Returns : updated stat
      *  Field globalAggregationMethod will be ignored when the stat is not set as global
      *  Field globalAggregationMethod is not updatable when the stat status is TIED
      *  Field visibility is not updatable when the stat status is TIED

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}

        method: PATCH

        tags: ["StatConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatUpdate in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

    Responses:
        200: OK - StatInfo (successful update of stat)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateStat.create(
        body=body,
        stat_code=stat_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
