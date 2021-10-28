import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_ticket_dynamic as get_ticket_dynamic_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import TicketDynamicInfo


@click.command()
@click.argument("booth_name", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_ticket_dynamic(
        booth_name: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_ticket_dynamic_internal.__doc__)
    result, error = get_ticket_dynamic_internal(
        booth_name=booth_name,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getTicketDynamic failed: {str(error)}")
    click.echo("getTicketDynamic success")
