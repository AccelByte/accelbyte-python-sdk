import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import queue_session_handler
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchmakingResult
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsMatchmakingResult
channel: str
client_version: str
deployment: str
error_code: int
error_message: str
game_mode: str
is_mock: str
joinable: bool
match_id: str
matching_allies: List[ModelsMatchingAlly]
Definition: List[ModelsMatchingAlly]
    matching_parties: List[ModelsMatchingParty]
    Definition: List[ModelsMatchingParty]
        first_ticket_created_at: int
        party_attributes: Dict[str, Any]
        party_id: str
        party_members: List[ModelsPartyMember]
        Definition: List[ModelsPartyMember]
            extra_attributes: Dict[str, Any]
            user_id: str
        ticket_created_at: int
        ticket_id: str
namespace: str
party_attributes: Dict[str, Any]
party_id: str
queued_at: int
region: str
server_name: str
status: str
ticket_id: str
ticket_ids: List[str]
updated_at: str

Example: '{"channel": "x8ns1tRN2QSanfJW", "client_version": "GPGPeGoXCAmjrQu7", "deployment": "zWlMcQUMqKQAC3Xi", "error_code": 93, "error_message": "VZ6S9bI2yn0Al6HQ", "game_mode": "qulgzlGW2Ie3aKpa", "is_mock": "s1st6s4dcHZG4tAc", "joinable": true, "match_id": "2YNlf3fwTeurAtds", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 48, "party_attributes": {"pbNbLEaGc8q1RH7i": {}, "e8hKv1evJbC9gdYt": {}, "7JOUQMvxcnHPjOd7": {}}, "party_id": "4hQK7GCDYVdcTIbk", "party_members": [{"extra_attributes": {"BZXUthoUUbeE8BI2": {}, "tVtNBhqkl4q1JgTD": {}, "whYvh5WXcUMq2ygL": {}}, "user_id": "jHSRQrnJ1DGlsXlC"}, {"extra_attributes": {"sb4nZo0cbPMcVg4V": {}, "H44xCmr4e4ULBLiY": {}, "l0WXHHhJr9RnX1Wn": {}}, "user_id": "Ln0sZUoFxuc9ZKN2"}, {"extra_attributes": {"KbEtbxbXgUVxfKep": {}, "ltpSUKrupmgY8OB3": {}, "bv5l1eF6zl3fK2Nf": {}}, "user_id": "CETIPO3OmJz2EHFZ"}], "ticket_created_at": 39, "ticket_id": "DKfgcSMvtDajQzPx"}, {"first_ticket_created_at": 100, "party_attributes": {"aDuwIT4J2fVxDRyc": {}, "c22uIPcnNIfdWdeA": {}, "XflbzA1ERkhGomoE": {}}, "party_id": "4MXEjlVZcscLavG2", "party_members": [{"extra_attributes": {"XhWD0889pv9GEfzf": {}, "YYQKuXIHeBfJoUYP": {}, "isYDwBx0xHkzccVE": {}}, "user_id": "zirrrIxCmqrz9e1x"}, {"extra_attributes": {"kq5rH7FWZx3jAzus": {}, "mmTG0tSXoKm5xOyS": {}, "gahxznhIGgdLutOQ": {}}, "user_id": "utIFGODwIEOfPtll"}, {"extra_attributes": {"KV7a1fzP4eMNy5CU": {}, "jKS5WQVv9OjmBA7k": {}, "8OVBU5KO3g5LnNLK": {}}, "user_id": "lvRgDdXABYvjYciW"}], "ticket_created_at": 42, "ticket_id": "9SWfgWK5CY3EgLlK"}, {"first_ticket_created_at": 43, "party_attributes": {"AnYHI5sLe53zoJGl": {}, "5QyrNs3Dnsx7LVo7": {}, "OhCPEF2snrWwfShp": {}}, "party_id": "xA2gk2PlUPbTWtiH", "party_members": [{"extra_attributes": {"4Ax0YHSAkAmgu9SJ": {}, "Se9zTKsIWX5QXzpF": {}, "FoUS2AHj5W82Jycx": {}}, "user_id": "fifLDr8GehT95rli"}, {"extra_attributes": {"0rNGy12yR2NXc6Hi": {}, "nj4wZVUFwZ9VeWbX": {}, "dQGt2Ex492LvSTKq": {}}, "user_id": "Vwy0ae4c6XdEacN4"}, {"extra_attributes": {"7jkpEEOaNIRCu5qs": {}, "vK2zYGHJM271FJIX": {}, "FnUksp6171xgrCfu": {}}, "user_id": "vIvh0l4jZVsFlx2t"}], "ticket_created_at": 90, "ticket_id": "PC3GdpYcNA316L52"}]}, {"matching_parties": [{"first_ticket_created_at": 52, "party_attributes": {"z26n8OlapTmqS8gw": {}, "GUZy0vHqu6IrEu2M": {}, "CBITKdhiDfkHSWEf": {}}, "party_id": "dY3StiRtXNWrUm04", "party_members": [{"extra_attributes": {"hZn2WQxJR9xeiMuG": {}, "EG292KiEb1J7HyoA": {}, "zyHqKmJLELxtJry4": {}}, "user_id": "yHoRLYHwTYUrTDUp"}, {"extra_attributes": {"AELw9zCUGspLJ2VM": {}, "zJVPO8QxvXpG1ddc": {}, "IPnxbPh9Mzmi4Rjg": {}}, "user_id": "UUUm39HmuPIu863z"}, {"extra_attributes": {"U8vEjEJoJeDKKJW7": {}, "X3U29uyZuXoALbzh": {}, "t5ZTmXp9i5vs4aJP": {}}, "user_id": "RESrDM6z3KFZMUSz"}], "ticket_created_at": 50, "ticket_id": "pZTGXrwDlUZ6DEX6"}, {"first_ticket_created_at": 15, "party_attributes": {"lGPqWIwGOVpg5736": {}, "SQC6LoKy0xC1MUsZ": {}, "gw0rxJ7IZBYQXK8D": {}}, "party_id": "szf3wEq7xZJNzrY7", "party_members": [{"extra_attributes": {"Y51GTvp1BWho6ivS": {}, "eavfs6XcgNw4bZCF": {}, "oq8kIG1stEFE95PV": {}}, "user_id": "qPIUA8hbnVB1KBx1"}, {"extra_attributes": {"11IfA5dDMzAMECxM": {}, "r8dSPz64fFZzFC6y": {}, "wOFETLIISsUJxgE5": {}}, "user_id": "THDz8N4hRd4AonZO"}, {"extra_attributes": {"8iPMJ5Ht2jNF4jps": {}, "OSRS11SElMNlRViK": {}, "FtJhujlQ1VJ3cIHJ": {}}, "user_id": "hRJzMNmNefOgT3te"}], "ticket_created_at": 54, "ticket_id": "YNLQ536ZKr0X5rmU"}, {"first_ticket_created_at": 60, "party_attributes": {"pdOjUs0SIHDKVmsC": {}, "VE8DXjlxHSlA5t24": {}, "DbKP29OUMaq6ap1g": {}}, "party_id": "2E6lO82uNJ4YUMUz", "party_members": [{"extra_attributes": {"CR6bi6KnaLVqvXLX": {}, "lj7jNd2OJPoSlrOv": {}, "lsHG0aTBI5SNQQdF": {}}, "user_id": "ZeHvzVIFcw4fAZoK"}, {"extra_attributes": {"mEaMyjH60sIT5xkq": {}, "VaJRRWEssL6zppn7": {}, "ouT7EiEEgVeqchfX": {}}, "user_id": "4qQ0o5o0VLnBjAqH"}, {"extra_attributes": {"1yxyUFsBBSahcZnf": {}, "CzgmrhFPx6od1PUf": {}, "fvryiyio69bkqUY0": {}}, "user_id": "8DNkiwm4NN7RmXWI"}], "ticket_created_at": 90, "ticket_id": "kcKYUB9OiWQv8QtQ"}]}, {"matching_parties": [{"first_ticket_created_at": 18, "party_attributes": {"KpGnueD8UHEocIo8": {}, "ITowQwrHnytPBcYH": {}, "C55QVzJYGRRLgnRP": {}}, "party_id": "kychjFzzE0cjsqiT", "party_members": [{"extra_attributes": {"wWL6WWoawPjuTrkR": {}, "2vKAVz8bevi9eUEt": {}, "EgTcyWvBm47mTbwZ": {}}, "user_id": "FEzsT4xqKZZAe9SD"}, {"extra_attributes": {"466qVaHkKPuh2jWh": {}, "XTqsqPdehQB60yzg": {}, "GlpWq00fKAYT5UIe": {}}, "user_id": "3aWDjywtFNi3osC7"}, {"extra_attributes": {"d8x6p67oBh4yimrC": {}, "1fjXggVTW4uPLbLG": {}, "doH4L9gOn9z4Bwnf": {}}, "user_id": "pjEkyKzDViZ6hMRq"}], "ticket_created_at": 97, "ticket_id": "b8NllhdHOjt17Vpj"}, {"first_ticket_created_at": 33, "party_attributes": {"z7xYlIGBHFBxjoNv": {}, "cd8Ub3JAU1cN96Sc": {}, "QWL0gabNKdwd1yZu": {}}, "party_id": "q6sOCucI1nVjOCa5", "party_members": [{"extra_attributes": {"tg47NMygoCbCFD2e": {}, "AoIUqy3Cn0Li4IWT": {}, "lL5FxG1cNWySsYAX": {}}, "user_id": "532ZpIN0HFO6r5Rx"}, {"extra_attributes": {"N97tl4j3Kwgj7IWf": {}, "feJnN8BYTRf8TwxY": {}, "vvVJ2KTYIcGG34L9": {}}, "user_id": "mSeiVroi2SyP2mUH"}, {"extra_attributes": {"5PHYQzxzIGAlQPWu": {}, "7AlYw2nF6H8RxfXf": {}, "A33ZANl4aT5FXpat": {}}, "user_id": "z3vg5vcGBQd3bzdk"}], "ticket_created_at": 0, "ticket_id": "3X5Sl0qDzh2zZfL0"}, {"first_ticket_created_at": 65, "party_attributes": {"uQ0Uyx0DcX9c2uWu": {}, "EyV0O94UT7A3SOYN": {}, "ckhrDBDrnBcTlf7G": {}}, "party_id": "uKZDnWdpz3cyh4br", "party_members": [{"extra_attributes": {"fwMYSkZVzoVZ0Ts3": {}, "WBUgvKbPjiIWD1Qw": {}, "Z6miWmb2dhdQFXFW": {}}, "user_id": "Mw2Hn2F0N7VyyBgU"}, {"extra_attributes": {"LX9l1KhrD14bTGpl": {}, "uLUXX6KzGIDfDHdf": {}, "2QdTvS4EgVCcx285": {}}, "user_id": "0FzXRETdDJ6vtkoS"}, {"extra_attributes": {"aHICTKUkqyhri7Dr": {}, "3zUJd9siccLSBBnF": {}, "zPV91VsCzFfrRxqs": {}}, "user_id": "9plpbLoy74sC4Po9"}], "ticket_created_at": 87, "ticket_id": "LjSKmg9sOwTLbh9B"}]}], "namespace": "vAHCkPktSiZnQJqW", "party_attributes": {"U4q1os5jiYMas5BQ": {}, "9vSYemv8KL884tvt": {}, "l6L0xZfFNHZmb5g5": {}}, "party_id": "l2oLcynDXQLQ2Ecn", "queued_at": 64, "region": "A3NHrXIbwwxHt0v6", "server_name": "PrKb5DYkMEVQ9Xww", "status": "UuzRL5u1yETHL3YO", "ticket_id": "CFsFuQpg67QOctkl", "ticket_ids": ["0SJOPYYlYnD5Um5Z", "TX7JxY4CUlhTb8Cy", "gYs21c64Dna0Yy9V"], "updated_at": "1973-03-11T00:00:00Z"}'
"""

result, error = queue_session_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
