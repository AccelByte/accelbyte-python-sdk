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

from ..models import ModelsPlatformCredentials
from ..models import ResponseError

from ..operations.certificate import AdminUploadXBoxCertificate


@deprecated
@same_doc_as(AdminUploadXBoxCertificate)
def admin_upload_x_box_certificate(
    certname: str,
    file: Any,
    password: str,
    description: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload certificates for XBox. (adminUploadXBoxCertificate)

    Upload certificates for XBox. Certificate must be in the valid form of PFX format. 'certname'' must be specified to 'xbl-pfx' for Session Sync to work

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl

        method: PUT

        tags: ["Certificate"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        description: (description) OPTIONAL str in form_data

        certname: (certname) REQUIRED str in form_data

        file: (file) REQUIRED Any in form_data

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlatformCredentials (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUploadXBoxCertificate.create(
        certname=certname,
        file=file,
        password=password,
        description=description,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUploadXBoxCertificate)
async def admin_upload_x_box_certificate_async(
    certname: str,
    file: Any,
    password: str,
    description: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload certificates for XBox. (adminUploadXBoxCertificate)

    Upload certificates for XBox. Certificate must be in the valid form of PFX format. 'certname'' must be specified to 'xbl-pfx' for Session Sync to work

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl

        method: PUT

        tags: ["Certificate"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        description: (description) OPTIONAL str in form_data

        certname: (certname) REQUIRED str in form_data

        file: (file) REQUIRED Any in form_data

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPlatformCredentials (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUploadXBoxCertificate.create(
        certname=certname,
        file=file,
        password=password,
        description=description,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
