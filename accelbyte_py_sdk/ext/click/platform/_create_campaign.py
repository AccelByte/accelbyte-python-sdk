import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import create_campaign as create_campaign_internal
from ....api.platform.models import CampaignCreate
from ....api.platform.models import CampaignInfo
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_campaign(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_campaign_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = CampaignCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_campaign_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createCampaign failed: {str(error)}")
    click.echo("createCampaign success")
