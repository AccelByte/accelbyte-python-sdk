# justice-event-log-service ()

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
from accelbyte_py_sdk.api.eventlog import specific_agent_type_description_handler as specific_agent_type_description_handler_internal
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleAgentType


@click.command()
@click.option("--agent_types", "agent_types", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def specific_agent_type_description_handler(
        agent_types: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(specific_agent_type_description_handler_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = specific_agent_type_description_handler_internal(
        agent_types=agent_types,
    )
    if error:
        raise Exception(f"SpecificAgentTypeDescriptionHandler failed: {str(error)}")
    click.echo("SpecificAgentTypeDescriptionHandler success")
