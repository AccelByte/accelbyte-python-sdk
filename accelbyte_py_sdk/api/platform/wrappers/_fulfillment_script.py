# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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
from ..models import FulfillmentScriptCreate
from ..models import FulfillmentScriptEvalTestRequest
from ..models import FulfillmentScriptEvalTestResult
from ..models import FulfillmentScriptInfo
from ..models import FulfillmentScriptUpdate

from ..operations.fulfillment_script import CreateFulfillmentScript
from ..operations.fulfillment_script import DeleteFulfillmentScript
from ..operations.fulfillment_script import GetFulfillmentScript
from ..operations.fulfillment_script import ListFulfillmentScripts
from ..operations.fulfillment_script import TestFulfillmentScriptEval
from ..operations.fulfillment_script import UpdateFulfillmentScript
from ..models import FulfillmentScriptEvalTestRequestTypeEnum


@same_doc_as(CreateFulfillmentScript)
def create_fulfillment_script(
    id_: str,
    body: Optional[FulfillmentScriptCreate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateFulfillmentScript)
async def create_fulfillment_script_async(
    id_: str,
    body: Optional[FulfillmentScriptCreate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteFulfillmentScript)
def delete_fulfillment_script(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = DeleteFulfillmentScript.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteFulfillmentScript)
async def delete_fulfillment_script_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = DeleteFulfillmentScript.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetFulfillmentScript)
def get_fulfillment_script(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetFulfillmentScript.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetFulfillmentScript)
async def get_fulfillment_script_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetFulfillmentScript.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListFulfillmentScripts)
def list_fulfillment_scripts(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = ListFulfillmentScripts.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListFulfillmentScripts)
async def list_fulfillment_scripts_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = ListFulfillmentScripts.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TestFulfillmentScriptEval)
def test_fulfillment_script_eval(
    body: Optional[FulfillmentScriptEvalTestRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestFulfillmentScriptEval.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TestFulfillmentScriptEval)
async def test_fulfillment_script_eval_async(
    body: Optional[FulfillmentScriptEvalTestRequest] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TestFulfillmentScriptEval.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateFulfillmentScript)
def update_fulfillment_script(
    id_: str,
    body: Optional[FulfillmentScriptUpdate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateFulfillmentScript)
async def update_fulfillment_script_async(
    id_: str,
    body: Optional[FulfillmentScriptUpdate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
