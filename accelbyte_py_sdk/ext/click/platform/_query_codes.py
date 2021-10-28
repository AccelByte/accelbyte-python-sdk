import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_codes as query_codes_internal
from ....api.platform.models import CodeInfoPagingSlicedResult


@click.command()
@click.argument("campaign_id", type=str)
@click.option("--batch_no", "batch_no", type=int)
@click.option("--code", "code", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_codes(
        campaign_id: str,
        batch_no: Optional[int] = None,
        code: Optional[str] = None,
        active_only: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_codes_internal.__doc__)
    result, error = query_codes_internal(
        campaign_id=campaign_id,
        batch_no=batch_no,
        code=code,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryCodes failed: {str(error)}")
    click.echo("queryCodes success")
