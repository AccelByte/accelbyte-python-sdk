# justice-lobby-server (1.33.0)

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
from ....api.lobby import admin_debug_profanity_filters as admin_debug_profanity_filters_internal
from ....api.lobby.models import ModelsDebugProfanityFilterRequest
from ....api.lobby.models import ModelsProfanityFilter
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_debug_profanity_filters(
        body: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_debug_profanity_filters_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = ModelsDebugProfanityFilterRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = admin_debug_profanity_filters_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminDebugProfanityFilters failed: {str(error)}")
    click.echo("adminDebugProfanityFilters success")