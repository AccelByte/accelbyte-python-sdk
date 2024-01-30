# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Chat Service

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
from accelbyte_py_sdk.api.chat import (
    admin_profanity_query as admin_profanity_query_internal,
)
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryQueryResult
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody


@click.command()
@click.option("--filter_mask", "filter_mask", type=str)
@click.option("--include_children", "include_children", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--parent_id", "parent_id", type=str)
@click.option("--start_with", "start_with", type=str)
@click.option("--word_type", "word_type", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_profanity_query(
    filter_mask: Optional[str] = None,
    include_children: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    parent_id: Optional[str] = None,
    start_with: Optional[str] = None,
    word_type: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_profanity_query_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = admin_profanity_query_internal(
        filter_mask=filter_mask,
        include_children=include_children,
        limit=limit,
        offset=offset,
        parent_id=parent_id,
        start_with=start_with,
        word_type=word_type,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"adminProfanityQuery failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_profanity_query.operation_id = "adminProfanityQuery"
admin_profanity_query.is_deprecated = False
