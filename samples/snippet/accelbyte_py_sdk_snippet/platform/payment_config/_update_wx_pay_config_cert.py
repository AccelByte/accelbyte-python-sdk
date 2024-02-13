import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_wx_pay_config_cert
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo

result, error = update_wx_pay_config_cert(
    id_=id_,
    file=file,
    x_additional_headers=x_additional_headers,
)
