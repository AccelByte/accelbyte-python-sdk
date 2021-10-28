import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_wx_pay_config_cert as update_wx_pay_config_cert_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentMerchantConfigInfo


@click.command()
@click.argument("id_", type=str)
@click.option("--file", "file", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_wx_pay_config_cert(
        id_: str,
        file: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_wx_pay_config_cert_internal.__doc__)
    try:
        file_json = json.loads(file)
        file = Any.create_from_dict(file_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'file'. {str(e)}")
    result, error = update_wx_pay_config_cert_internal(
        id_=id_,
        file=file,
    )
    if error:
        raise Exception(f"updateWxPayConfigCert failed: {str(error)}")
    click.echo("updateWxPayConfigCert success")
