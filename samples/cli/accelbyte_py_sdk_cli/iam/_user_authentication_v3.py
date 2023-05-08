# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service (5.34.0)

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
    user_authentication_v3 as user_authentication_v3_internal,
)


@click.command()
@click.argument("password", type=str)
@click.argument("request_id", type=str)
@click.argument("user_name", type=str)
@click.option("--client_id", "client_id", type=str)
@click.option("--extend_exp", "extend_exp", type=bool)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def user_authentication_v3(
    password: str,
    request_id: str,
    user_name: str,
    client_id: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    redirect_uri: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(user_authentication_v3_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = user_authentication_v3_internal(
        password=password,
        request_id=request_id,
        user_name=user_name,
        client_id=client_id,
        extend_exp=extend_exp,
        redirect_uri=redirect_uri,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"UserAuthenticationV3 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


user_authentication_v3.operation_id = "UserAuthenticationV3"
user_authentication_v3.is_deprecated = False
