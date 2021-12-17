# justice-lobby-server (staging)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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
from ....api.lobby import admin_add_profanity_filter_into_list as admin_add_profanity_filter_into_list_internal
from ....api.lobby.models import ModelsAdminAddProfanityFilterIntoListRequest
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.argument("list_", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_add_profanity_filter_into_list(
        body: str,
        list_: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_add_profanity_filter_into_list_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = ModelsAdminAddProfanityFilterIntoListRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = admin_add_profanity_filter_into_list_internal(
        body=body,
        list_=list_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminAddProfanityFilterIntoList failed: {str(error)}")
    click.echo("adminAddProfanityFilterIntoList success")
