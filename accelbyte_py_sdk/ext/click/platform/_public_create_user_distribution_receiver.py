import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_create_user_distribution_receiver as public_create_user_distribution_receiver_internal
from ....api.platform.models import DistributionReceiverCreate
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("ext_user_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_create_user_distribution_receiver(
        user_id: str,
        ext_user_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_create_user_distribution_receiver_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = DistributionReceiverCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_create_user_distribution_receiver_internal(
        user_id=user_id,
        ext_user_id=ext_user_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicCreateUserDistributionReceiver failed: {str(error)}")
    click.echo("publicCreateUserDistributionReceiver success")
