import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_policy_1
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyRequestV2
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import ValidationErrorEntity

"""
body:
Definition: CreateBasePolicyRequestV2
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
tags: List[str]
type_id: str

Example: '{"affectedClientIds": ["J9ao62AUVeFdrzAq", "JGT1k6RZ04YXzgUk", "dX1qQ2pVD0sVV2Jz"], "affectedCountries": ["KeqPr8Xkq4yGHnSq", "OTbl44QQYshol5kx", "OfduYPQtITMxriRm"], "basePolicyName": "ItCv76Gss2bHvItQ", "description": "bz4RcUklTOxTpoDb", "tags": ["DHS2F7xeqLNuPvLq", "H4zKTg69flmE31Sp", "dRllOAzzwZPETdBD"], "typeId": "LuKH4TISe7L2lRKd"}'
"""

result, error = create_policy_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
