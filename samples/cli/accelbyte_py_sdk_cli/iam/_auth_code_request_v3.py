# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

# justice-iam-service (5.8.0)

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
from accelbyte_py_sdk.api.iam import auth_code_request_v3 as auth_code_request_v3_internal


@click.command()
@click.argument("platform_id", type=str)
@click.argument("request_id", type=str)
@click.option("--client_id", "client_id", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def auth_code_request_v3(
        platform_id: str,
        request_id: str,
        client_id: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(auth_code_request_v3_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    result, error = auth_code_request_v3_internal(
        platform_id=platform_id,
        request_id=request_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"AuthCodeRequestV3 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))
