import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import bulk_create_psn_event
from accelbyte_py_sdk.api.achievement.models import ModelsBulkCreatePSNEventResponse
from accelbyte_py_sdk.api.achievement.models import ModelsBulkCreatePSNEvents
from accelbyte_py_sdk.api.achievement.models import ResponseError

"""
body:
Definition: ModelsBulkCreatePSNEvents
data: List[ModelsCreatePSNEvent]
Definition: List[ModelsCreatePSNEvent]
    events: List[ModelsPSNEvent]
    Definition: List[ModelsPSNEvent]
        date_time: str
        event_data: ModelsPSNEventData
        Definition: ModelsPSNEventData
            event_name: str
            properties: Dict[str, Any]
        event_id: str
        version: str
    third_party_user_id: str
    user_id: str

Example: '{"data": [{"events": [{"dateTime": "FzH21qIMej4RRhcr", "eventData": {"eventName": "NLqOOEpn7qmVowhi", "properties": {"lA0JvtP2eGyhIHQy": {}, "0rbkjLPT58LZPucx": {}, "JBw6Nm2QCZh5BRaW": {}}}, "eventId": "KSvgRf4qGxby0D6f", "version": "kmmfFjrOxhWsdeem"}, {"dateTime": "bt3zP1kHD2kpU4xR", "eventData": {"eventName": "zuPrgUrgVAUhrDPP", "properties": {"uZ4LydyH2yHfuj5t": {}, "9cg7AhTIqMA7Xnea": {}, "Jl8XW3td5mUgISRM": {}}}, "eventId": "vmb1FAUgm6OfWRHm", "version": "jgZcNWyzy0nO1S8N"}, {"dateTime": "FUVNRq7JZLkRnA47", "eventData": {"eventName": "OBaWBg0QcvV6D5c0", "properties": {"YmEMSOMb3L2RUSpu": {}, "IAYoxBOkhjrKhPUp": {}, "J5DPUvXnnJ7CdtlX": {}}}, "eventId": "3O0vEQTz8dM42zMn", "version": "3sOVS09GwlUEIiTs"}], "thirdPartyUserId": "54slq8V2bq3ogjxj", "userId": "xFIeMdIVXpXcqU0Z"}, {"events": [{"dateTime": "ePniR4SIvZB7a9be", "eventData": {"eventName": "bHf301HIHLVC4ysx", "properties": {"cbDCJmDlAHi9PAks": {}, "RPt71p0grjqYKyxY": {}, "i4MMsFshcdu62763": {}}}, "eventId": "GBgcF43iHsdJaq8z", "version": "GoQsAYhQI3BPShiM"}, {"dateTime": "eHvQQFmDFeARZKWj", "eventData": {"eventName": "DZpwhoA4RjrDtgB6", "properties": {"ZpAuU96qdORhO0WL": {}, "Z4hquphXMFUluzeU": {}, "1oKp6kCMiTcd1o1h": {}}}, "eventId": "DfTB4w9if5wBEAsM", "version": "2o5TtvA0IWI0vt0v"}, {"dateTime": "zqWwtQM97kFkADrX", "eventData": {"eventName": "G0qVd6rexvwAawcZ", "properties": {"nBC0CMPShO11mkXj": {}, "vKvsZZl1OXFbrhvm": {}, "qHirwJsUHLGWJ7Tn": {}}}, "eventId": "JFJXYdV9rEhQ2jkj", "version": "GRzmE0FauNPL9daz"}], "thirdPartyUserId": "MFOLe6gSf9LO3zBW", "userId": "z401WdMRyhxbWl6d"}, {"events": [{"dateTime": "vAu0Ldg0vh3cxcrY", "eventData": {"eventName": "DSnX2D6hD9zFl10j", "properties": {"ckBLkdgnkxe6k8dr": {}, "ANrUYpx283Ibj3cK": {}, "T9GtubXeU1TZxUPU": {}}}, "eventId": "Qr3x4N4op1zRhW1y", "version": "ReFpPkXLjiHNsHvm"}, {"dateTime": "svYQSmtlaT5PBkoi", "eventData": {"eventName": "yX51exrnOd7x5wRP", "properties": {"DA8NoA9DXhWNkfQh": {}, "5wWEk9VLJf9xkIUd": {}, "ZJLMhZQdpHIhONOM": {}}}, "eventId": "15cO65Yi75A4ViFT", "version": "3LXXdu0uCABfp5PP"}, {"dateTime": "WbJCfBLVDLf85FIY", "eventData": {"eventName": "SDE7lS4TIVtdh06Y", "properties": {"VI5DBLF5wW9MIDZp": {}, "wVLAhC0IHRqgyPji": {}, "iyeZbk6RgnL9r98N": {}}}, "eventId": "y1zqR9L4EszpjM9V", "version": "CytAMk9uoefg2CZH"}], "thirdPartyUserId": "zZBH6J583HIl9kby", "userId": "gtRRXAL32Diwpwae"}]}'
"""

result, error = bulk_create_psn_event(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
