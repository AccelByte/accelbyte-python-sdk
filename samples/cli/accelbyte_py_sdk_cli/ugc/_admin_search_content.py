# justice-ugc-service (1.10.1)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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
from accelbyte_py_sdk.api.ugc import admin_search_content as admin_search_content_internal
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError


@click.command()
@click.option("--creator", "creator", type=str)
@click.option("--isofficial", "isofficial", type=str)
@click.option("--limit", "limit", type=str)
@click.option("--name", "name", type=str)
@click.option("--offset", "offset", type=str)
@click.option("--orderby", "orderby", type=str)
@click.option("--sortby", "sortby", type=str)
@click.option("--subtype", "subtype", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--type", "type_", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_search_content(
        creator: Optional[str] = None,
        isofficial: Optional[str] = None,
        limit: Optional[str] = None,
        name: Optional[str] = None,
        offset: Optional[str] = None,
        orderby: Optional[str] = None,
        sortby: Optional[str] = None,
        subtype: Optional[str] = None,
        tags: Optional[str] = None,
        type_: Optional[str] = None,
        user_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_search_content_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_search_content_internal(
        creator=creator,
        isofficial=isofficial,
        limit=limit,
        name=name,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        subtype=subtype,
        tags=tags,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminSearchContent failed: {str(error)}")
    click.echo("AdminSearchContent success")
