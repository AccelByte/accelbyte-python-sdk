# justice-platform-service (3.39.0)

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
from accelbyte_py_sdk.api.platform import get_fulfillment_script as get_fulfillment_script_internal
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentScriptInfo


@click.command()
@click.argument("id_", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_fulfillment_script(
        id_: str,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_fulfillment_script_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_fulfillment_script_internal(
        id_=id_,
    )
    if error:
        raise Exception(f"getFulfillmentScript failed: {str(error)}")
    click.echo("getFulfillmentScript success")
