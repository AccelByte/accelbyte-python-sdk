import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_session
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsSessionResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateSessionRequest
client_version: str
configuration: str
deployment: str
game_mode: str
matching_allies: List[ModelsRequestMatchingAlly]
Definition: List[ModelsRequestMatchingAlly]
    matching_parties: List[ModelsRequestMatchParty]
    Definition: List[ModelsRequestMatchParty]
        party_attributes: Dict[str, Any]
        party_id: str
        party_members: List[ModelsRequestMatchMember]
        Definition: List[ModelsRequestMatchMember]
            user_id: str
namespace: str
notification_payload: ModelsMatchResultNotificationPayload
Definition: ModelsMatchResultNotificationPayload
pod_name: str
region: str
session_id: str

Example: '{"client_version": "iUQJ53lVa6lGCW7v", "configuration": "iAyVmqLPlwCAKqrJ", "deployment": "cvS0RITsRD5T80TK", "game_mode": "iijPtVszo4OOCei9", "matching_allies": [{"matching_parties": [{"party_attributes": {"TjgUuqjgQpiZpRNI": {}, "DT1XnFTXtxt43LwZ": {}, "cE1pqdzdW4bP8iuD": {}}, "party_id": "QbnQ1BykwX0hYslK", "party_members": [{"user_id": "OXrnXbdYSmbErI8T"}, {"user_id": "8ePvDWGgKIwgsn8N"}, {"user_id": "Fm4PplpmAdR6s1HN"}]}, {"party_attributes": {"YvdpBK55SDDkk4Ju": {}, "9GjygFaBvvCMQC6k": {}, "GvdjG28t3UI8j0tw": {}}, "party_id": "kyCxwlUUnUIgtSHV", "party_members": [{"user_id": "1tBgGDcqyFPw3B7d"}, {"user_id": "54HPDKJQL1KMmT8g"}, {"user_id": "BxZ7BUEsUEo3UcEQ"}]}, {"party_attributes": {"aihOfcKU02BeS1D1": {}, "3mMbXGKTyylqUfW5": {}, "ZuUdwxF6IOShnkKk": {}}, "party_id": "LE94llWsFqcueiGO", "party_members": [{"user_id": "enUwEPDMbvyARKIL"}, {"user_id": "EgpnJ3wn4aF0GB2A"}, {"user_id": "HcJqStDGxll6O5l7"}]}]}, {"matching_parties": [{"party_attributes": {"qFSIRlmCkhK5sPyK": {}, "Xvm90Qo7lJ5adz2u": {}, "pvXJb7nhM9024gko": {}}, "party_id": "KuLqPyqIce7fNVUh", "party_members": [{"user_id": "gZTVlx35wZ4y8pZC"}, {"user_id": "AvEJh3qtQySTJ26M"}, {"user_id": "4b7zMgFhXmBoMDFi"}]}, {"party_attributes": {"JXPp9pWDkCd9L7iQ": {}, "bUX6umD9hBh6g2W7": {}, "m4mv56QZpAsTD7aC": {}}, "party_id": "h7y7Yr0eZ8Eijwox", "party_members": [{"user_id": "QBc4ejZqqjnRdXuR"}, {"user_id": "JRjlXJDpC85z23nr"}, {"user_id": "0jdZgxVnn2VH6lk6"}]}, {"party_attributes": {"4A4ccE6UQWfTCjk0": {}, "NVzdAF8jX6qGLhdm": {}, "Hbb50nwF95oe5N4K": {}}, "party_id": "8F7A0N6BZ71UzDrq", "party_members": [{"user_id": "ETMovBhoCdAx2UcW"}, {"user_id": "dyYtYg5W0mUVGj19"}, {"user_id": "KGkTJjqNOv2wTV82"}]}]}, {"matching_parties": [{"party_attributes": {"qS3bCONUe7j0Oqbo": {}, "fvBUpIm8mDLyG5Va": {}, "32CS1V1Mz8lErw1j": {}}, "party_id": "j3pOjQzTbOp8HLHM", "party_members": [{"user_id": "Lx4xVLBbPMmrV9go"}, {"user_id": "0XT85NWOzwFeT9md"}, {"user_id": "DuEO9RgoloXJZOgs"}]}, {"party_attributes": {"ie01WSpTDlVF4j2r": {}, "AvbtkHfL6Q9RK5yK": {}, "iJjykypNce4gDaeC": {}}, "party_id": "S4VB7ikzwHQvdaa2", "party_members": [{"user_id": "xcWv3MBKYNthihp8"}, {"user_id": "UfXJ4Scyh2oQGXcv"}, {"user_id": "7VeKllNA95GlNmSv"}]}, {"party_attributes": {"kWER8DITlObG3nXr": {}, "BzOjizWdmgbPGcdv": {}, "3kXMZXvbunET3Cen": {}}, "party_id": "BgtbDv1kkCJB7RHK", "party_members": [{"user_id": "eNjcULRNGkRcEpEA"}, {"user_id": "8y4e49VP059EAt6I"}, {"user_id": "hxs6RT8XVM5jfREG"}]}]}], "namespace": "vf7MR0TkQdj1Cac6", "notification_payload": {}, "pod_name": "rOHpAp3fEo3na5SF", "region": "tADSBM47rQ3TZeqF", "session_id": "jWDJHi8kCLbhSJ7S"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
