# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Iam Service (5.13.0)

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
from accelbyte_py_sdk.api.iam import authorize_v3 as authorize_v3_internal


@click.command()
@click.argument("client_id", type=str)
@click.argument("response_type", type=str)
@click.option("--code_challenge", "code_challenge", type=str)
@click.option("--code_challenge_method", "code_challenge_method", type=str)
@click.option("--create_headless", "create_headless", type=bool)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--scope", "scope", type=str)
@click.option("--state", "state", type=str)
@click.option("--target_auth_page", "target_auth_page", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def authorize_v3(
    client_id: str,
    response_type: str,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[str] = None,
    create_headless: Optional[bool] = None,
    redirect_uri: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    target_auth_page: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(authorize_v3_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = authorize_v3_internal(
        client_id=client_id,
        response_type=response_type,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        create_headless=create_headless,
        redirect_uri=redirect_uri,
        scope=scope,
        state=state,
        target_auth_page=target_auth_page,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"AuthorizeV3 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


authorize_v3.operation_id = "AuthorizeV3"
authorize_v3.is_deprecated = False
