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

from ..models import BulkCycleStatsAdd
from ..models import BulkStatCycleOperationResult
from ..models import BulkStatCycleRequest
from ..models import BulkStatCycleResult
from ..models import ErrorEntity
from ..models import StatCycleCreate
from ..models import StatCycleInfo
from ..models import StatCyclePagingSlicedResult
from ..models import StatCycleUpdate

from ..operations.stat_cycle_configuration import BulkAddStats
from ..operations.stat_cycle_configuration import BulkGetStatCycle
from ..operations.stat_cycle_configuration import BulkGetStatCycle1
from ..operations.stat_cycle_configuration import CreateStatCycle
from ..operations.stat_cycle_configuration import DeleteStatCycle
from ..operations.stat_cycle_configuration import GetStatCycle
from ..operations.stat_cycle_configuration import GetStatCycle1
from ..operations.stat_cycle_configuration import GetStatCycles
from ..operations.stat_cycle_configuration import (
    GetStatCyclesCycleTypeEnum,
    GetStatCyclesStatusEnum,
)
from ..operations.stat_cycle_configuration import GetStatCycles1
from ..operations.stat_cycle_configuration import (
    GetStatCycles1CycleTypeEnum,
    GetStatCycles1StatusEnum,
)
from ..operations.stat_cycle_configuration import StopStatCycle
from ..operations.stat_cycle_configuration import UpdateStatCycle
from ..models import StatCycleCreateCycleTypeEnum
from ..models import StatCycleInfoCycleTypeEnum, StatCycleInfoStatusEnum
from ..models import StatCycleUpdateCycleTypeEnum


@same_doc_as(BulkAddStats)
def bulk_add_stats(
    cycle_id: str,
    body: Optional[BulkCycleStatsAdd] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk add stat cycle to stats (bulkAddStats)

    Bulk add stat cycle to stats.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [CREATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkCycleStatsAdd in body

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatCycleOperationResult] (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkAddStats.create(
        cycle_id=cycle_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkAddStats)
async def bulk_add_stats_async(
    cycle_id: str,
    body: Optional[BulkCycleStatsAdd] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk add stat cycle to stats (bulkAddStats)

    Bulk add stat cycle to stats.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [CREATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkCycleStatsAdd in body

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatCycleOperationResult] (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkAddStats.create(
        cycle_id=cycle_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkGetStatCycle)
def bulk_get_stat_cycle(
    body: Optional[BulkStatCycleRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get stat cycle (bulkGetStatCycle)

    Bulk get stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : list of stat cycles

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/bulk

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkStatCycleRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkStatCycleResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkGetStatCycle.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetStatCycle)
async def bulk_get_stat_cycle_async(
    body: Optional[BulkStatCycleRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get stat cycle (bulkGetStatCycle)

    Bulk get stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : list of stat cycles

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/bulk

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkStatCycleRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkStatCycleResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkGetStatCycle.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkGetStatCycle1)
def bulk_get_stat_cycle_1(
    body: Optional[BulkStatCycleRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get stat cycle (bulkGetStatCycle_1)

    Bulk get stat cycle.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : list of stat cycles

    Required Permission(s):
        - NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statCycles/bulk

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkStatCycleRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkStatCycleResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkGetStatCycle1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetStatCycle1)
async def bulk_get_stat_cycle_1_async(
    body: Optional[BulkStatCycleRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get stat cycle (bulkGetStatCycle_1)

    Bulk get stat cycle.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : list of stat cycles

    Required Permission(s):
        - NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statCycles/bulk

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL BulkStatCycleRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkStatCycleResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkGetStatCycle1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateStatCycle)
def create_stat_cycle(
    body: Optional[StatCycleCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create stat cycle (createStatCycle)

    Create stat cycle.
    Fields:

      * name: Cycle name, maximum length is 128 characters. (required).
      * resetTime: Reset time must follow hours:minutes in 24 hours format e.g. 01:30, 23:15. (required)
      * resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Required when cycleType is WEEKLY.
      * resetDate: Reset Date must be a number 1 - 31. Required when cycleType is MONTHLY or ANNUALLY.
      * resetMonth: Reset Month must be a number 1 - 12. Required when cycleType is ANNUALLY.
      * seasonPeriod: Season period must be a number greater than or equal to 1 (days). Required when cycleType is SEASONAL.
      * start: Start time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z. (required)
      * end: End time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z.

    Other detail info:
      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)
      *  Returns : created stat cycle

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [CREATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StatCycleCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StatCycleInfo (successful operation)

        400: Bad Request - ErrorEntity (12225: Invalid time range | 12226: Invalid date [{date}] of month [{month}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateStatCycle.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateStatCycle)
async def create_stat_cycle_async(
    body: Optional[StatCycleCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create stat cycle (createStatCycle)

    Create stat cycle.
    Fields:

      * name: Cycle name, maximum length is 128 characters. (required).
      * resetTime: Reset time must follow hours:minutes in 24 hours format e.g. 01:30, 23:15. (required)
      * resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Required when cycleType is WEEKLY.
      * resetDate: Reset Date must be a number 1 - 31. Required when cycleType is MONTHLY or ANNUALLY.
      * resetMonth: Reset Month must be a number 1 - 12. Required when cycleType is ANNUALLY.
      * seasonPeriod: Season period must be a number greater than or equal to 1 (days). Required when cycleType is SEASONAL.
      * start: Start time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z. (required)
      * end: End time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z.

    Other detail info:
      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=1 (CREATE)
      *  Returns : created stat cycle

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [CREATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles

        method: POST

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StatCycleCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - StatCycleInfo (successful operation)

        400: Bad Request - ErrorEntity (12225: Invalid time range | 12226: Invalid date [{date}] of month [{month}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateStatCycle.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteStatCycle)
def delete_stat_cycle(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes stat cycle (deleteStatCycle)

    Deletes stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [DELETE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}

        method: DELETE

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteStatCycle.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteStatCycle)
async def delete_stat_cycle_async(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes stat cycle (deleteStatCycle)

    Deletes stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [DELETE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}

        method: DELETE

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteStatCycle.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStatCycle)
def get_stat_cycle(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stat cycle (getStatCycle)

    Get stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycle info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycle.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStatCycle)
async def get_stat_cycle_async(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stat cycle (getStatCycle)

    Get stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycle info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycle.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStatCycle1)
def get_stat_cycle_1(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stat cycle (getStatCycle_1)

    Get stat cycle.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycle info

    Required Permission(s):
        - NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statCycles/{cycleId}

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycle1.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStatCycle1)
async def get_stat_cycle_1_async(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stat cycle (getStatCycle_1)

    Get stat cycle.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycle info

    Required Permission(s):
        - NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statCycles/{cycleId}

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycle1.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStatCycles)
def get_stat_cycles(
    cycle_type: Optional[Union[str, GetStatCyclesCycleTypeEnum]] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[Union[str, GetStatCyclesStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stat cycles (getStatCycles)

    List stat cycles by pagination.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycles

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        cycle_type: (cycleType) OPTIONAL Union[str, CycleTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - StatCyclePagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycles.create(
        cycle_type=cycle_type,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStatCycles)
async def get_stat_cycles_async(
    cycle_type: Optional[Union[str, GetStatCyclesCycleTypeEnum]] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[Union[str, GetStatCyclesStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stat cycles (getStatCycles)

    List stat cycles by pagination.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycles

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        cycle_type: (cycleType) OPTIONAL Union[str, CycleTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - StatCyclePagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycles.create(
        cycle_type=cycle_type,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStatCycles1)
def get_stat_cycles_1(
    cycle_type: Optional[Union[str, GetStatCycles1CycleTypeEnum]] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[Union[str, GetStatCycles1StatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stat cycles (getStatCycles_1)

    List stat cycles by pagination.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycles

    Required Permission(s):
        - NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statCycles

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        cycle_type: (cycleType) OPTIONAL Union[str, CycleTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - StatCyclePagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycles1.create(
        cycle_type=cycle_type,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStatCycles1)
async def get_stat_cycles_1_async(
    cycle_type: Optional[Union[str, GetStatCycles1CycleTypeEnum]] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[Union[str, GetStatCycles1StatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List stat cycles (getStatCycles_1)

    List stat cycles by pagination.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:STAT", action=2 (READ)
      *  Returns : stat cycles

    Required Permission(s):
        - NAMESPACE:{namespace}:STAT [READ]

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statCycles

        method: GET

        tags: ["StatCycleConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        cycle_type: (cycleType) OPTIONAL Union[str, CycleTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - StatCyclePagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStatCycles1.create(
        cycle_type=cycle_type,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(StopStatCycle)
def stop_stat_cycle(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stop stat cycle (stopStatCycle)

    Stop stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=4 (UPDATE)
      *  Returns : updated stat cycle

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [UPDATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop

        method: PUT

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12279: Invalid stat cycle status: Stat cycle [{id}], namespace [{namespace}], status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = StopStatCycle.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(StopStatCycle)
async def stop_stat_cycle_async(
    cycle_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stop stat cycle (stopStatCycle)

    Stop stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=4 (UPDATE)
      *  Returns : updated stat cycle

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [UPDATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop

        method: PUT

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12279: Invalid stat cycle status: Stat cycle [{id}], namespace [{namespace}], status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = StopStatCycle.create(
        cycle_id=cycle_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateStatCycle)
def update_stat_cycle(
    cycle_id: str,
    body: Optional[StatCycleUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update stat cycle (updateStatCycle)

    Update stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=4 (UPDATE)
      *  Returns : updated stat cycle

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [UPDATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}

        method: PUT

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StatCycleUpdate in body

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        400: Bad Request - ErrorEntity (12225: Invalid time range | 12226: Invalid date [{date}] of month [{month}])

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12277: Stat cycle [{id}] in namespace [{namespace}] with status [{status}] cannot be updated)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateStatCycle.create(
        cycle_id=cycle_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateStatCycle)
async def update_stat_cycle_async(
    cycle_id: str,
    body: Optional[StatCycleUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update stat cycle (updateStatCycle)

    Update stat cycle.
    Other detail info:

      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:STAT", action=4 (UPDATE)
      *  Returns : updated stat cycle

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STAT [UPDATE]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}

        method: PUT

        tags: ["StatCycleConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL StatCycleUpdate in body

        cycle_id: (cycleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - StatCycleInfo (successful operation)

        400: Bad Request - ErrorEntity (12225: Invalid time range | 12226: Invalid date [{date}] of month [{month}])

        404: Not Found - ErrorEntity (12245: Stat cycle [{id}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12277: Stat cycle [{id}] in namespace [{namespace}] with status [{status}] cannot be updated)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateStatCycle.create(
        cycle_id=cycle_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
