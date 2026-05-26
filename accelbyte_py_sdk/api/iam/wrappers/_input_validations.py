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

from ..models import ModelInputValidationConfigVersion
from ..models import ModelInputValidationUpdatePayload
from ..models import ModelInputValidationsPublicResponse
from ..models import ModelInputValidationsResponse
from ..models import RestErrorResponse

from ..operations.input_validations import AdminGetInputValidations
from ..operations.input_validations import AdminGetNamespaceScopedInputValidations
from ..operations.input_validations import AdminResetInputValidations
from ..operations.input_validations import AdminResetNamespaceScopedInputValidations
from ..operations.input_validations import AdminUpdateInputValidations
from ..operations.input_validations import AdminUpdateNamespaceScopedInputValidations
from ..operations.input_validations import PublicGetInputValidationByField
from ..operations.input_validations import PublicGetInputValidations
from ..operations.input_validations import (
    PublicGetNamespaceScopedInputValidationByField,
)
from ..operations.input_validations import PublicGetNamespaceScopedInputValidations


@deprecated
@same_doc_as(AdminGetInputValidations)
def admin_get_input_validations(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Admin Get Input Validations (AdminGetInputValidations)

    Returns the list of input validation configuration.
    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
    **Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[GET]

    Properties:
        url: /iam/v3/admin/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelInputValidationsResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminGetInputValidations.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetInputValidations)
async def admin_get_input_validations_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Admin Get Input Validations (AdminGetInputValidations)

    Returns the list of input validation configuration.
    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
    **Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[GET]

    Properties:
        url: /iam/v3/admin/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelInputValidationsResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminGetInputValidations.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetNamespaceScopedInputValidations)
def admin_get_namespace_scoped_input_validations(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get Input Validations (AdminGetNamespaceScopedInputValidations)

    Returns the list of input validation configuration.
    Supported namespace:
    - publisher namespace
    - studio namespace

    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelInputValidationsResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetNamespaceScopedInputValidations.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetNamespaceScopedInputValidations)
async def admin_get_namespace_scoped_input_validations_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get Input Validations (AdminGetNamespaceScopedInputValidations)

    Returns the list of input validation configuration.
    Supported namespace:
    - publisher namespace
    - studio namespace

    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelInputValidationsResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetNamespaceScopedInputValidations.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminResetInputValidations)
def admin_reset_input_validations(
    field: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Admin Reset Input Validations (AdminResetInputValidations)

    Resets input validation to the default input validation configurations.
    **Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}[DELETE]

    Properties:
        url: /iam/v3/admin/inputValidations/{field}

        method: DELETE

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    request = AdminResetInputValidations.create(
        field=field,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminResetInputValidations)
async def admin_reset_input_validations_async(
    field: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Admin Reset Input Validations (AdminResetInputValidations)

    Resets input validation to the default input validation configurations.
    **Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}[DELETE]

    Properties:
        url: /iam/v3/admin/inputValidations/{field}

        method: DELETE

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    request = AdminResetInputValidations.create(
        field=field,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminResetNamespaceScopedInputValidations)
def admin_reset_namespace_scoped_input_validations(
    field: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Reset Input Validations (AdminResetNamespaceScopedInputValidations)

    Resets input validation to the default input validation configurations.
    Supported namespace:
    - publisher namespace
    - studio namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}

        method: DELETE

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetNamespaceScopedInputValidations.create(
        field=field,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminResetNamespaceScopedInputValidations)
async def admin_reset_namespace_scoped_input_validations_async(
    field: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Reset Input Validations (AdminResetNamespaceScopedInputValidations)

    Resets input validation to the default input validation configurations.
    Supported namespace:
    - publisher namespace
    - studio namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}

        method: DELETE

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetNamespaceScopedInputValidations.create(
        field=field,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUpdateInputValidations)
def admin_update_input_validations(
    body: List[ModelInputValidationUpdatePayload],
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update Input Validations (AdminUpdateInputValidations)

    Updates input validation configuration.
    Supported `field`:
    - displayName
    - password
    - username
    - email
    - avatar

    If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
    If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
    Supported `letterCase`:
    - lowercase
    - uppercase
    - mixed: uppercase and lowercase
    - any: uppercase and/or lowercase

    Flexible special character support with `allowAllSpecialCharacters`.
    If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
    Supported `specialCharacterLocation`:
    - anywhere
    - middle

    If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
    `minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
    If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
    If `avatarConfig` is set, will use this config and skip all the other validation conditions.
    **Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[PUT]

    Properties:
        url: /iam/v3/admin/inputValidations

        method: PUT

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelInputValidationUpdatePayload] in body

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    request = AdminUpdateInputValidations.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdateInputValidations)
async def admin_update_input_validations_async(
    body: List[ModelInputValidationUpdatePayload],
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update Input Validations (AdminUpdateInputValidations)

    Updates input validation configuration.
    Supported `field`:
    - displayName
    - password
    - username
    - email
    - avatar

    If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
    If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
    Supported `letterCase`:
    - lowercase
    - uppercase
    - mixed: uppercase and lowercase
    - any: uppercase and/or lowercase

    Flexible special character support with `allowAllSpecialCharacters`.
    If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
    Supported `specialCharacterLocation`:
    - anywhere
    - middle

    If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
    `minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
    If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
    If `avatarConfig` is set, will use this config and skip all the other validation conditions.
    **Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[PUT]

    Properties:
        url: /iam/v3/admin/inputValidations

        method: PUT

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelInputValidationUpdatePayload] in body

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    request = AdminUpdateInputValidations.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateNamespaceScopedInputValidations)
def admin_update_namespace_scoped_input_validations(
    body: List[ModelInputValidationUpdatePayload],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update Input Validations (AdminUpdateNamespaceScopedInputValidations)

    Updates input validation configuration.
    Supported namespace:
    - publisher namespace
    - studio namespace

    Supported `field`:
    - displayName
    - password
    - username
    - email
    - avatar

    If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
    If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
    Supported `letterCase`:
    - lowercase
    - uppercase
    - mixed: uppercase and lowercase
    - any: uppercase and/or lowercase

    To allow flexible non-word special characters, use `allowAllSpecialCharacters`.
    If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
    Supported `specialCharacterLocation`:
    - anywhere
    - middle

    If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
    `minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
    If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
    If `avatarConfig` is set, will use this config and skip all the other validation conditions.

    These are the boundary values for string length:
    minLength: 1,
    maxLength: 256

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/inputValidations

        method: PUT

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelInputValidationUpdatePayload] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateNamespaceScopedInputValidations.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateNamespaceScopedInputValidations)
async def admin_update_namespace_scoped_input_validations_async(
    body: List[ModelInputValidationUpdatePayload],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update Input Validations (AdminUpdateNamespaceScopedInputValidations)

    Updates input validation configuration.
    Supported namespace:
    - publisher namespace
    - studio namespace

    Supported `field`:
    - displayName
    - password
    - username
    - email
    - avatar

    If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
    If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
    Supported `letterCase`:
    - lowercase
    - uppercase
    - mixed: uppercase and lowercase
    - any: uppercase and/or lowercase

    To allow flexible non-word special characters, use `allowAllSpecialCharacters`.
    If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
    Supported `specialCharacterLocation`:
    - anywhere
    - middle

    If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
    `minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
    If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
    If `avatarConfig` is set, will use this config and skip all the other validation conditions.

    These are the boundary values for string length:
    minLength: 1,
    maxLength: 256

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/inputValidations

        method: PUT

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelInputValidationUpdatePayload] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10188: input validation field not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateNamespaceScopedInputValidations.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetInputValidationByField)
def public_get_input_validation_by_field(
    field: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Public Get Input Validation by field (PublicGetInputValidationByField)

    Returns input validation configuration by field.
    **Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations/{field}[GET]

    Properties:
        url: /iam/v3/public/inputValidations/{field}

        method: GET

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

    Responses:
        200: OK - ModelInputValidationConfigVersion (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetInputValidationByField.create(
        field=field,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetInputValidationByField)
async def public_get_input_validation_by_field_async(
    field: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Public Get Input Validation by field (PublicGetInputValidationByField)

    Returns input validation configuration by field.
    **Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations/{field}[GET]

    Properties:
        url: /iam/v3/public/inputValidations/{field}

        method: GET

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

    Responses:
        200: OK - ModelInputValidationConfigVersion (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetInputValidationByField.create(
        field=field,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetInputValidations)
def public_get_input_validations(
    default_on_empty: Optional[bool] = None,
    language_code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public Get Input Validations (PublicGetInputValidations)

    Returns the list of input validation configuration.
    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
    **Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations[GET]

    Properties:
        url: /iam/v3/public/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        language_code: (languageCode) OPTIONAL str in query

    Responses:
        200: OK - ModelInputValidationsPublicResponse (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetInputValidations.create(
        default_on_empty=default_on_empty,
        language_code=language_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetInputValidations)
async def public_get_input_validations_async(
    default_on_empty: Optional[bool] = None,
    language_code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public Get Input Validations (PublicGetInputValidations)

    Returns the list of input validation configuration.
    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
    **Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations[GET]

    Properties:
        url: /iam/v3/public/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        language_code: (languageCode) OPTIONAL str in query

    Responses:
        200: OK - ModelInputValidationsPublicResponse (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetInputValidations.create(
        default_on_empty=default_on_empty,
        language_code=language_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetNamespaceScopedInputValidationByField)
def public_get_namespace_scoped_input_validation_by_field(
    field: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public Get Input Validation by field (PublicGetNamespaceScopedInputValidationByField)

    Returns input validation configuration by field.
    Supported namespace:
    - publisher namespace
    - studio namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/inputValidations/{field}

        method: GET

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelInputValidationConfigVersion (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetNamespaceScopedInputValidationByField.create(
        field=field,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetNamespaceScopedInputValidationByField)
async def public_get_namespace_scoped_input_validation_by_field_async(
    field: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public Get Input Validation by field (PublicGetNamespaceScopedInputValidationByField)

    Returns input validation configuration by field.
    Supported namespace:
    - publisher namespace
    - studio namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/inputValidations/{field}

        method: GET

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        field: (field) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelInputValidationConfigVersion (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetNamespaceScopedInputValidationByField.create(
        field=field,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetNamespaceScopedInputValidations)
def public_get_namespace_scoped_input_validations(
    default_on_empty: Optional[bool] = None,
    language_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public Get Input Validations (PublicGetNamespaceScopedInputValidations)

    Supported namespace:
    - publisher namespace
    - studio namespace

    Returns the list of input validation configuration.
    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        language_code: (languageCode) OPTIONAL str in query

    Responses:
        200: OK - ModelInputValidationsPublicResponse (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetNamespaceScopedInputValidations.create(
        default_on_empty=default_on_empty,
        language_code=language_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetNamespaceScopedInputValidations)
async def public_get_namespace_scoped_input_validations_async(
    default_on_empty: Optional[bool] = None,
    language_code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public Get Input Validations (PublicGetNamespaceScopedInputValidations)

    Supported namespace:
    - publisher namespace
    - studio namespace

    Returns the list of input validation configuration.
    `regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/inputValidations

        method: GET

        tags: ["InputValidations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        default_on_empty: (defaultOnEmpty) OPTIONAL bool in query

        language_code: (languageCode) OPTIONAL str in query

    Responses:
        200: OK - ModelInputValidationsPublicResponse (OK)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetNamespaceScopedInputValidations.create(
        default_on_empty=default_on_empty,
        language_code=language_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
