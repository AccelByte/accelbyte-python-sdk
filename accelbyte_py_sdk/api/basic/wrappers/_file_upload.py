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
from ..models import FileUploadUrlInfo
from ..models import ValidationErrorEntity

from ..operations.file_upload import GeneratedUploadUrl
from ..operations.file_upload import GeneratedUserUploadContentUrl
from ..operations.file_upload import PublicGeneratedUploadUrl
from ..operations.file_upload import PublicGeneratedUserUploadContentUrl


@same_doc_as(GeneratedUploadUrl)
def generated_upload_url(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL (generatedUploadUrl)

    Generate an upload URL. It's valid for 10 minutes.
    Other detail info:

      * Action code : 11101
      *  Returns : URL data

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        folder: (folder) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GeneratedUploadUrl)
async def generated_upload_url_async(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL (generatedUploadUrl)

    Generate an upload URL. It's valid for 10 minutes.
    Other detail info:

      * Action code : 11101
      *  Returns : URL data

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        folder: (folder) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GeneratedUserUploadContentUrl)
def generated_user_upload_content_url(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL For User Content (generatedUserUploadContentUrl)

    Generate an upload URL for user content. It's valid for 10 minutes.
    Other detail info:

      * Action code : 11102
      *  Default maximum file count per user : 10 files
      *  Default maximum file size per user : 104857600 bytes
      *  Returns : URL data

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        category: (category) OPTIONAL str in query

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11121: Unable to {action}: category {category} is not valid | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11132: Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace})

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GeneratedUserUploadContentUrl)
async def generated_user_upload_content_url_async(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL For User Content (generatedUserUploadContentUrl)

    Generate an upload URL for user content. It's valid for 10 minutes.
    Other detail info:

      * Action code : 11102
      *  Default maximum file count per user : 10 files
      *  Default maximum file size per user : 104857600 bytes
      *  Returns : URL data

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        category: (category) OPTIONAL str in query

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11121: Unable to {action}: category {category} is not valid | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11132: Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace})

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGeneratedUploadUrl)
def public_generated_upload_url(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL (publicGeneratedUploadUrl)

    Generate an upload URL. It's valid for 10 minutes.
    Other detail info:

      * Action code : 11101
      *  Returns : URL data

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/folders/{folder}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        folder: (folder) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGeneratedUploadUrl)
async def public_generated_upload_url_async(
    file_type: str,
    folder: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL (publicGeneratedUploadUrl)

    Generate an upload URL. It's valid for 10 minutes.
    Other detail info:

      * Action code : 11101
      *  Returns : URL data

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/folders/{folder}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        folder: (folder) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGeneratedUploadUrl.create(
        file_type=file_type,
        folder=folder,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGeneratedUserUploadContentUrl)
def public_generated_user_upload_content_url(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL For User Content (publicGeneratedUserUploadContentUrl)

    Generate an upload URL for user content. It's valid for 10 minutes.
    There are 2 kinds of storage limitation per user : maximum file count and maximum file size.
    The threshold of those limitations is different between upload category that is used.
    Other detail info:

      * Action code : 11102
      *  Default maximum file count per user : 10 files
      *  Default maximum file size per user : 104857600 bytes
      *  Returns : URL data

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        category: (category) OPTIONAL str in query

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11121: Unable to {action}: category {category} is not valid | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11132: Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace})

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGeneratedUserUploadContentUrl)
async def public_generated_user_upload_content_url_async(
    file_type: str,
    user_id: str,
    category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate Upload URL For User Content (publicGeneratedUserUploadContentUrl)

    Generate an upload URL for user content. It's valid for 10 minutes.
    There are 2 kinds of storage limitation per user : maximum file count and maximum file size.
    The threshold of those limitations is different between upload category that is used.
    Other detail info:

      * Action code : 11102
      *  Default maximum file count per user : 10 files
      *  Default maximum file size per user : 104857600 bytes
      *  Returns : URL data

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/files

        method: POST

        tags: ["FileUpload"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        category: (category) OPTIONAL str in query

        file_type: (fileType) REQUIRED str in query

    Responses:
        200: OK - FileUploadUrlInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 11121: Unable to {action}: category {category} is not valid | 11131: Unable to {action}: File type is not supported)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11132: Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace})

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGeneratedUserUploadContentUrl.create(
        file_type=file_type,
        user_id=user_id,
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
