import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import grant_user_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementGrant
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StackableEntitlementInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: List[EntitlementGrant]
collection_id: str
end_date: str
granted_code: str
item_id: str
item_namespace: str
language: str
origin: str
quantity: int
region: str
source: str
start_date: str
store_id: str

Example: '[{"collectionId": "hH9tCgSg9tjEtbHA", "endDate": "1979-06-01T00:00:00Z", "grantedCode": "1uaINkYY5eITILO6", "itemId": "13BqS8ssCK7tFox5", "itemNamespace": "Hp5CQ2Ifjk0kevYd", "language": "mDa_BAWq_814", "origin": "IOS", "quantity": 7, "region": "m9MRfTYhMUzQR3uE", "source": "REFERRAL_BONUS", "startDate": "1974-04-10T00:00:00Z", "storeId": "ejcdsS66qfkDdQlV"}, {"collectionId": "sKvRmvDBr4eNfJWs", "endDate": "1994-08-07T00:00:00Z", "grantedCode": "wfrzPltDXepWk5WC", "itemId": "n6BCyP8vXe767IjG", "itemNamespace": "ooz2wO7oYv1mMPgC", "language": "GpZ-Surv-sV", "origin": "Twitch", "quantity": 45, "region": "1ePhd6IVvIBiKd2y", "source": "REDEEM_CODE", "startDate": "1976-02-07T00:00:00Z", "storeId": "kJC4Z9ynmaMFqbK1"}, {"collectionId": "AXPxoA4kckVp0wad", "endDate": "1972-11-19T00:00:00Z", "grantedCode": "eLauJFlmL5B73teI", "itemId": "NJ25MJ0m5OyBhQn5", "itemNamespace": "HepyaO3KuotScGKl", "language": "XQrt-VaII", "origin": "Epic", "quantity": 34, "region": "MJOsYbXL9Jh2ycdm", "source": "PROMOTION", "startDate": "1972-06-20T00:00:00Z", "storeId": "SPZFvsbABD4emGpN"}]'
"""

result, error = grant_user_entitlement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
