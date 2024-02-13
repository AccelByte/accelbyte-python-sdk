import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_payment_notifications
from accelbyte_py_sdk.api.platform.models import PaymentNotificationPagingSlicedResult

result, error = query_payment_notifications(
    end_date=end_date,
    external_id=external_id,
    limit=limit,
    notification_source=notification_source,
    notification_type=notification_type,
    offset=offset,
    payment_order_no=payment_order_no,
    start_date=start_date,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
