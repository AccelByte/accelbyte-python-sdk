import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_rewards as query_rewards_internal
from ....api.platform.models import RewardPagingSlicedResult
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--event_topic", "event_topic", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_rewards(
        event_topic: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        sort_by: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_rewards_internal.__doc__)
    result, error = query_rewards_internal(
        event_topic=event_topic,
        offset=offset,
        limit=limit,
        sort_by=sort_by,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryRewards failed: {str(error)}")
    click.echo("queryRewards success")
