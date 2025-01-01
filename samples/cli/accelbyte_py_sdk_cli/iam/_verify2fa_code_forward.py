# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service

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
from accelbyte_py_sdk.api.iam import (
    verify2fa_code_forward as verify2fa_code_forward_internal,
)


@click.command()
@click.argument("client_id", type=str)
@click.argument("code", type=str)
@click.argument("factor", type=str)
@click.argument("mfa_token", type=str)
@click.option("--default_factor", "default_factor", type=str)
@click.option("--factors", "factors", type=str)
@click.option("--remember_device", "remember_device", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def verify2fa_code_forward(
    client_id: str,
    code: str,
    factor: str,
    mfa_token: str,
    default_factor: Optional[str] = None,
    factors: Optional[str] = None,
    remember_device: Optional[bool] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(verify2fa_code_forward_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = verify2fa_code_forward_internal(
        client_id=client_id,
        code=code,
        factor=factor,
        mfa_token=mfa_token,
        default_factor=default_factor,
        factors=factors,
        remember_device=remember_device,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"Verify2FACodeForward failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


verify2fa_code_forward.operation_id = "Verify2FACodeForward"
verify2fa_code_forward.is_deprecated = False
