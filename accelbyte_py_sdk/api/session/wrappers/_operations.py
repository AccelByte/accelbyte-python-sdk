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


from ..operations.operations import AllocsHandler
from ..operations.operations import BlockHandler
from ..operations.operations import CmdlineHandler
from ..operations.operations import GetHealthcheckInfo
from ..operations.operations import GetHealthcheckInfoV1
from ..operations.operations import GoroutineHandler
from ..operations.operations import HeapHandler
from ..operations.operations import MutexHandler
from ..operations.operations import PprofHandler
from ..operations.operations import Profile
from ..operations.operations import SymbolHandler
from ..operations.operations import ThreadcreateHandler
from ..operations.operations import TraceHandler


@same_doc_as(AllocsHandler)
def allocs_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Allocs handler (allocsHandler)

    Properties:
        url: /session/admin/internal/pprof/allocs

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = AllocsHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AllocsHandler)
async def allocs_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Allocs handler (allocsHandler)

    Properties:
        url: /session/admin/internal/pprof/allocs

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = AllocsHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BlockHandler)
def block_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Block handler (blockHandler)

    Properties:
        url: /session/admin/internal/pprof/block

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = BlockHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BlockHandler)
async def block_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Block handler (blockHandler)

    Properties:
        url: /session/admin/internal/pprof/block

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = BlockHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CmdlineHandler)
def cmdline_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Cmdline handler (cmdlineHandler)

    Properties:
        url: /session/admin/internal/pprof/cmdline

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = CmdlineHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CmdlineHandler)
async def cmdline_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Cmdline handler (cmdlineHandler)

    Properties:
        url: /session/admin/internal/pprof/cmdline

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = CmdlineHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetHealthcheckInfo)
def get_healthcheck_info(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get healthcheck info (GetHealthcheckInfo)

    Properties:
        url: /healthz

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GetHealthcheckInfo.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetHealthcheckInfo)
async def get_healthcheck_info_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get healthcheck info (GetHealthcheckInfo)

    Properties:
        url: /healthz

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GetHealthcheckInfo.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetHealthcheckInfoV1)
def get_healthcheck_info_v1(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get healthcheck info V1 (GetHealthcheckInfoV1)

    Properties:
        url: /session/healthz

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GetHealthcheckInfoV1.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetHealthcheckInfoV1)
async def get_healthcheck_info_v1_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get healthcheck info V1 (GetHealthcheckInfoV1)

    Properties:
        url: /session/healthz

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GetHealthcheckInfoV1.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GoroutineHandler)
def goroutine_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Goroutine handler (goroutineHandler)

    Properties:
        url: /session/admin/internal/pprof/goroutine

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GoroutineHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GoroutineHandler)
async def goroutine_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Goroutine handler (goroutineHandler)

    Properties:
        url: /session/admin/internal/pprof/goroutine

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GoroutineHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(HeapHandler)
def heap_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Heap handler (heapHandler)

    Properties:
        url: /session/admin/internal/pprof/heap

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = HeapHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(HeapHandler)
async def heap_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Heap handler (heapHandler)

    Properties:
        url: /session/admin/internal/pprof/heap

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = HeapHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(MutexHandler)
def mutex_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Mutex handler (mutexHandler)

    Properties:
        url: /session/admin/internal/pprof/mutex

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = MutexHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MutexHandler)
async def mutex_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Mutex handler (mutexHandler)

    Properties:
        url: /session/admin/internal/pprof/mutex

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = MutexHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PprofHandler)
def pprof_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Pprof handler (pprofHandler)

    Properties:
        url: /session/admin/internal/pprof

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = PprofHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PprofHandler)
async def pprof_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Pprof handler (pprofHandler)

    Properties:
        url: /session/admin/internal/pprof

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = PprofHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Profile)
def profile(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Profile (profile)

    Properties:
        url: /session/admin/internal/pprof/profile

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Profile.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Profile)
async def profile_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Profile (profile)

    Properties:
        url: /session/admin/internal/pprof/profile

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Profile.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SymbolHandler)
def symbol_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Symbol handler (symbolHandler)

    Properties:
        url: /session/admin/internal/pprof/symbol

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = SymbolHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SymbolHandler)
async def symbol_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Symbol handler (symbolHandler)

    Properties:
        url: /session/admin/internal/pprof/symbol

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = SymbolHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ThreadcreateHandler)
def threadcreate_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Threadcreate handler (threadcreateHandler)

    Properties:
        url: /session/admin/internal/pprof/threadcreate

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = ThreadcreateHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ThreadcreateHandler)
async def threadcreate_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Threadcreate handler (threadcreateHandler)

    Properties:
        url: /session/admin/internal/pprof/threadcreate

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = ThreadcreateHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TraceHandler)
def trace_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Trace handler (traceHandler)

    Properties:
        url: /session/admin/internal/pprof/trace

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = TraceHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TraceHandler)
async def trace_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Trace handler (traceHandler)

    Properties:
        url: /session/admin/internal/pprof/trace

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = TraceHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
