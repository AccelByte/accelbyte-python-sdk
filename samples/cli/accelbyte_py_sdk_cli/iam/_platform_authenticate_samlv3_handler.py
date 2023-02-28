# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Iam Service (5.28.0)

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
    platform_authenticate_samlv3_handler as platform_authenticate_samlv3_handler_internal,
)


@click.command()
@click.argument("platform_id", type=str)
@click.argument("state", type=str)
@click.option("--code", "code", type=str)
@click.option("--error", "error", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def platform_authenticate_samlv3_handler(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    error: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(platform_authenticate_samlv3_handler_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = platform_authenticate_samlv3_handler_internal(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"platformAuthenticateSAMLV3Handler failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


platform_authenticate_samlv3_handler.operation_id = "platformAuthenticateSAMLV3Handler"
platform_authenticate_samlv3_handler.is_deprecated = False
