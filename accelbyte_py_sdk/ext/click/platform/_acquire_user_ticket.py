import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import acquire_user_ticket as acquire_user_ticket_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import TicketAcquireRequest
from ....api.platform.models import TicketAcquireResult
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("booth_name", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def acquire_user_ticket(
        user_id: str,
        booth_name: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(acquire_user_ticket_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = TicketAcquireRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = acquire_user_ticket_internal(
        user_id=user_id,
        booth_name=booth_name,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"acquireUserTicket failed: {str(error)}")
    click.echo("acquireUserTicket success")
