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

from ..models import ModelInputValidationUpdatePayload
from ..models import ModelInputValidationsPublicResponse
from ..models import ModelInputValidationsResponse
from ..models import RestErrorResponse

from ..operations.input_validations import AdminGetInputValidations
from ..operations.input_validations import AdminResetInputValidations
from ..operations.input_validations import AdminUpdateInputValidations
from ..operations.input_validations import PublicGetInputValidations


@same_doc_as(AdminGetInputValidations)
def admin_get_input_validations(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetInputValidations.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInputValidations)
async def admin_get_input_validations_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetInputValidations.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminResetInputValidations)
def admin_reset_input_validations(
    field: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminResetInputValidations.create(
        field=field,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminResetInputValidations)
async def admin_reset_input_validations_async(
    field: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminResetInputValidations.create(
        field=field,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateInputValidations)
def admin_update_input_validations(
    body: List[ModelInputValidationUpdatePayload],
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateInputValidations.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateInputValidations)
async def admin_update_input_validations_async(
    body: List[ModelInputValidationUpdatePayload],
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateInputValidations.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetInputValidations)
def public_get_input_validations(
    default_on_empty: Optional[bool] = None,
    language_code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PublicGetInputValidations.create(
        default_on_empty=default_on_empty,
        language_code=language_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetInputValidations)
async def public_get_input_validations_async(
    default_on_empty: Optional[bool] = None,
    language_code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PublicGetInputValidations.create(
        default_on_empty=default_on_empty,
        language_code=language_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
