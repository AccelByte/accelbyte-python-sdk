import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_dlc_item_config
from accelbyte_py_sdk.api.platform.models import DLCItemConfigInfo
from accelbyte_py_sdk.api.platform.models import DLCItemConfigUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: DLCItemConfigUpdate
data: List[DLCItem]
Definition: List[DLCItem]
    id_: str
    rewards: List[PlatformReward]
    Definition: List[PlatformReward]
        currency: PlatformRewardCurrency
        Definition: PlatformRewardCurrency
            currency_code: str
            namespace: str
        item: PlatformRewardItem
        Definition: PlatformRewardItem
            item_id: str
            item_sku: str
            item_type: str
        quantity: int
        type_: str

Example: '{"data": [{"id": "EFT6I8JSX3RSD6Ut", "rewards": [{"currency": {"currencyCode": "71C35kWBnt1UpgCV", "namespace": "CPKSc7mwZ0lfgWVI"}, "item": {"itemId": "iC80Pr6nfulueGgY", "itemSku": "11gOyWKkNHLA5Wkg", "itemType": "YMW2jrRUl1S7uqmY"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "YXPA1IFEJyHcKvjP", "namespace": "mVjTFjLbGwdFcl2c"}, "item": {"itemId": "2QL21IGv0R0vvBiz", "itemSku": "ybBdiqCBwEiyqXZ2", "itemType": "Zd0ztJPUBxORwl4Q"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "lGe9a9TcTyZ6wp1m", "namespace": "cDvMAELLOuDxO6Y0"}, "item": {"itemId": "Y2fAC29wsK11ioLx", "itemSku": "fK0P6VYLxMAtEkaN", "itemType": "O1i5J50wRWVQJzwP"}, "quantity": 91, "type": "CURRENCY"}]}, {"id": "4UwbTmvysy4KrsKu", "rewards": [{"currency": {"currencyCode": "lqW7gXeX9exS8rNU", "namespace": "EXaqUGt2KI3f70mB"}, "item": {"itemId": "xZOJBo3QkoBc5HP2", "itemSku": "osMlDkmuMbcJ82H2", "itemType": "wT220j1VpbhE258s"}, "quantity": 32, "type": "ITEM"}, {"currency": {"currencyCode": "3JSZIEL7msFVX32N", "namespace": "s6hrgYBl8oVbiVWs"}, "item": {"itemId": "nSM1ah9AFW7YhFeW", "itemSku": "FmH0qJoFd4uEfJ4r", "itemType": "9Fz2bS9rDANPgYum"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "cKaw6jiDOVS4SNmC", "namespace": "Nnzo6LFYLNknRESZ"}, "item": {"itemId": "tAp2IpbDDs0mS1Tt", "itemSku": "24wy5Hva6rqY7a6u", "itemType": "jCoRMgc96DmZQtKN"}, "quantity": 6, "type": "ITEM"}]}, {"id": "0yVWbDunru0RbaJB", "rewards": [{"currency": {"currencyCode": "rQAuwbUsNVsaCoCU", "namespace": "A9hwkO7ZRsi7DWaj"}, "item": {"itemId": "z1fpoTqLK9CkWZnc", "itemSku": "HR1A84dkB6E04Pub", "itemType": "csjyIaXbB8zfS1lb"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "kZmh5sJXzPM655By", "namespace": "91jDGAcQeprbnkpx"}, "item": {"itemId": "NsjIz4jJv9qPbElF", "itemSku": "80bYa9TxmRnKC2XZ", "itemType": "uXCqP1VdvmAk0In6"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "MGDlQvi6JycNwgVB", "namespace": "jkwYfgqrjDIhji9W"}, "item": {"itemId": "O5WzJnokYb1NRAec", "itemSku": "9wWgXdo4Xjnolx20", "itemType": "roOmdfYSckp6KWpd"}, "quantity": 79, "type": "ITEM"}]}]}'
"""

result, error = update_dlc_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
