import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_campaigns as query_campaigns_internal
from ....api.platform.models import CampaignPagingSlicedResult


@click.command()
@click.option("--name", "name", type=str)
@click.option("--tag", "tag", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_campaigns(
        name: Optional[str] = None,
        tag: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_campaigns_internal.__doc__)
    result, error = query_campaigns_internal(
        name=name,
        tag=tag,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryCampaigns failed: {str(error)}")
    click.echo("queryCampaigns success")
