import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_normalize_payment_return_url

result, error = public_normalize_payment_return_url(
    order_no=order_no,
    payment_order_no=payment_order_no,
    payment_provider=payment_provider,
    return_url=return_url,
    payer_id=payer_id,
    foreinginvoice=foreinginvoice,
    invoice_id=invoice_id,
    payload=payload,
    redirect_result=redirect_result,
    result_code=result_code,
    session_id=session_id,
    status=status,
    token=token,
    type_=type_,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
