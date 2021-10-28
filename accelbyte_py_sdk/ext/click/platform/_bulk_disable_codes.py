import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import bulk_disable_codes as bulk_disable_codes_internal
from ....api.platform.models import BulkOperationResult


@click.command()
@click.argument("campaign_id", type=str)
@click.option("--batch_no", "batch_no", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def bulk_disable_codes(
        campaign_id: str,
        batch_no: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(bulk_disable_codes_internal.__doc__)
    result, error = bulk_disable_codes_internal(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkDisableCodes failed: {str(error)}")
    click.echo("bulkDisableCodes success")
