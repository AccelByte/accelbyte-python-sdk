# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service (7.1.0)

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
    generate_token_by_new_headless_account_v3 as generate_token_by_new_headless_account_v3_internal,
)
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse


@click.command()
@click.argument("linking_token", type=str)
@click.option("--additional_data", "additional_data", type=str)
@click.option("--extend_exp", "extend_exp", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def generate_token_by_new_headless_account_v3(
    linking_token: str,
    additional_data: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(generate_token_by_new_headless_account_v3_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = generate_token_by_new_headless_account_v3_internal(
        linking_token=linking_token,
        additional_data=additional_data,
        extend_exp=extend_exp,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"GenerateTokenByNewHeadlessAccountV3 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


generate_token_by_new_headless_account_v3.operation_id = (
    "GenerateTokenByNewHeadlessAccountV3"
)
generate_token_by_new_headless_account_v3.is_deprecated = False
