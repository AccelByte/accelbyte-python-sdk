import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_campaign as get_campaign_internal
from ....api.platform.models import CampaignInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("campaign_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_campaign(
        campaign_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_campaign_internal.__doc__)
    result, error = get_campaign_internal(
        campaign_id=campaign_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getCampaign failed: {str(error)}")
    click.echo("getCampaign success")
