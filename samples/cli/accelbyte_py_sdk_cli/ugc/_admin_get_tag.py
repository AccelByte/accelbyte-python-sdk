# justice-ugc-service (1.10.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from accelbyte_py_sdk.api.ugc import admin_get_tag as admin_get_tag_internal
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedGetTagResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError


@click.command()
@click.option("--limit", "limit", type=str)
@click.option("--offset", "offset", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_get_tag(
        limit: Optional[str] = None,
        offset: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_tag_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_get_tag_internal(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetTag failed: {str(error)}")
    click.echo("AdminGetTag success")