# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service (5.31.0)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
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

import json
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.iam import verify2fa_code as verify2fa_code_internal
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3


@click.command()
@click.argument("code", type=str)
@click.argument("factor", type=str)
@click.argument("mfa_token", type=str)
@click.argument("remember_device", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def verify2fa_code(
    code: str,
    factor: str,
    mfa_token: str,
    remember_device: bool,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(verify2fa_code_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = verify2fa_code_internal(
        code=code,
        factor=factor,
        mfa_token=mfa_token,
        remember_device=remember_device,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"Verify2FACode failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


verify2fa_code.operation_id = "Verify2FACode"
verify2fa_code.is_deprecated = False
