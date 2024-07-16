# Tic-Tac-Toe with AccelByte's Python Extend SDK

As an alternative to [AccelByte Golang Extend SDK](https://github.com/AccelByte/accelbyte-go-sdk), you can use the [AccelByte Python Extend SDK](https://github.com/AccelByte/accelbyte-python-sdk) to easily shift logic implementation from your game client into the backend.
For this guide we will use the [Tic-Tac-Toe Sample App](https://github.com/AccelByte/accelbyte-python-sdk/tree/main/samples/tic-tac-toe-app) included with our Python Extend SDK.

## An Overview

Here is the overview of the Tic-Tac-Toe Sample App. It consists of two parts:
1. A Lambda function which contains the Tic-Tac-Toe logic implementation (backend).
2. A client for both *Player 1* and *Player 2* of the Tic-Tac-Toe game which talks to the Lambda function via API Gateway.

## Code Snippets

### Starting/Finding a Match

To start a match we first look in the Redis server for any matches that are pending/vacant.

```python
for match_key in redis_client.scan_iter(match=f"{match_prefix}*"):
    match_value_str = redis_client.get(match_key)
    match_value_dict = json.loads(match_value_str)
    game = TicTacToe(**match_value_dict)

    # skip all games that's already finished
    if game.status == GameStatusEnum.FINISHED:
        continue

    # exit if there is already an existing pending/ongoing user's match
    if user_id in game.player_ids:
        return create_response(status_code=400, body={
            "message": f"You already have an existing Match({game.id}).",
            **match_value_dict,
        })

    # skip all games that's already ongoing
    if game.status == GameStatusEnum.ONGOING:
        continue

    # skip all games that already has 2 players, for redundancy
    if len(game.player_ids) == 2:
        continue
```

If a match is found, we update it and send notification to each player.

```python
# update match information
game.player_ids.append(user_id)
game.status = GameStatusEnum.ONGOING
match_value_dict = game.to_dict()
match_value_str = json.dumps(match_value_dict)
redis_client.set(name=match_key, value=match_value_str)

message = f"Found Match({game.id})."

_, send_notif_1_err = send_free_form_notif(
    sdk=sdk,
    user_id=game.player_ids[0],
    user_namespace=user_namespace,
    message=message,
)
if send_notif_1_err:
    return send_notif_1_err

_, send_notif_2_err = send_free_form_notif(
    sdk=sdk,
    user_id=game.player_ids[1],
    user_namespace=user_namespace,
    message=message,
)
if send_notif_2_err:
    return send_notif_2_err

return create_response(status_code=200, body={
    "message": message,
    **match_value_dict,
})
```

If not match was found, then we create a new match.

```python
game = TicTacToe(player_ids=[user_id])

match_key = f"{match_prefix}{game.id}"
match_value_dict = game.to_dict()
match_value_str = json.dumps(match_value_dict)

redis_client.set(name=match_key, value=match_value_str)

return create_response(status_code=200, body={
    "message": f"No match found, created Match({game.id}).",
    **match_value_dict,
})
```

### Making a Move

To make a move each player would have to call `/move` together will match/game identifier and the cell the player wants to fill in.

We first look for the game identifier.

```python
match_prefix: str = "match:"
match_key = f"{match_prefix}{game_id}"

match_value_str = redis_client.get(match_key)
if match_value_str is None:
    return create_response(
        status_code=400,
        body=f"Failed to find Match({game_id})."
    )

match_value_dict = json.loads(match_value_str)
game = TicTacToe(**match_value_dict)
```

We then try to apply the requesting player's move.
If it is not valid we return an error, else we update the record and send back the updated game information.
While also sending out notifications to the players if any one of them won or both of them tied.

```python
# update match information
error = game.apply_move(Move(
    player_id=user_id,
    data=move_body,
))
if error:
    return create_response(
        status_code=500,
        body={
            "message": str(error),
            **match_value_dict,
        },
    )

match_value_dict = game.to_dict()
match_value_str = json.dumps(match_value_dict)
redis_client.set(name=match_key, value=match_value_str)

if game.status == GameStatusEnum.FINISHED:
    message = f"Game ended."

    _, send_notif_1_err = send_free_form_notif(
        sdk=sdk,
        user_id=game.player_ids[0],
        user_namespace=user_namespace,
        message=message,
    )
    if send_notif_1_err:
        return send_notif_1_err

    _, send_notif_2_err = send_free_form_notif(
        sdk=sdk,
        user_id=game.player_ids[1],
        user_namespace=user_namespace,
        message=message,
    )
    if send_notif_2_err:
        return send_notif_2_err

return create_response(status_code=200, body=str(game))
```

## A Quick Demonstration

### Prerequisites

1. Python 3.9+
2. AWS SAM CLI
3. A Redis Instance (ex: `tic-tac-toe.XXXXX.ng.0001.use1.cache.amazonaws.com:6379`)
4. From the AWS Console:
    - Lambda Function execution role ARN, containing:
        - AmazonEC2FullAccess
        - AmazonAPIGatewayInvokeFullAccess
        - AWSLambdaVPCAccessExecutionRole
        - AWSLambdaBasicExecutionRole
    - VpcConfig Security Group ID and Subnet ID
5. From the AccelByte Admin Portal:
    - Base URL (for `AB_BASE_URL` ex: `https://test.accelbyte.io`)
    - Client ID (for `AB_CLIENT_ID`)
    - Client Secret (for `AB_CLIENT_SECRET`, optional if you are not using a Public Client)
    - 2 User Accounts for playing Tic-Tac-Toe with.

### Deploying the Lambda Function

To make it easy to deploy the lambda function, this sample app uses a SAM template. You only need to edit a few things in template.yml before deploying.

#### Open the [template.yml](../../samples/tic-tac-toe-app/template.yaml) file and add in the required fields.

```yaml
      # The Amazon Resource Name (ARN) of the function's execution role.
      #   Required: Yes
      Role: ''
      # For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC.
      #   Required: Yes
      #   More info about VpcConfig https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html
      VpcConfig:
        SecurityGroupIds:
          - ''
        SubnetIds:
          - ''
      # The configuration for the runtime environment.
      #   Required: Yes
      Environment:
        Variables:
          AB_BASE_URL: ''
          AB_CLIENT_ID: ''
          AB_CLIENT_SECRET: ''
          # Use 'host.docker.internal' when running locally
          REDIS_HOST: ''
          REDIS_PORT: ''
```

#### Build and Deploy

```sh
sam build
sam deploy --guided
```

Done! You should be able to find the API URL in AWS Console.

### Using the Client

The client is available in this [directory](https://github.com/AccelByte/accelbyte-python-sdk/tree/main/samples/tic-tac-toe-app/tic_tac_toe_game) inside the sample app.
Before running the client, you will need to set a few environment variables first.

1. Open your preferred command-line terminal and set the following required environment variables.
    1. AB_BASE_URL
    2. AB_CLIENT_ID
    3. AB_CLIENT_SECRET
    4. TICTACTOE_URL (ex: `https://foobar.execute-api.us-east-1.amazonaws.com/Prod`)

2. Run the client and login as the first user.
    ```sh
    $ python3.9 -m tic_tac_toe_game

    $ username: ****

    $ password: ****

    Login successful.

    Pick an action:
    - 0: Get Stats
    - 1: Find Match
    - 2: Make Move
    - 3: Delete All Matches
    - 4: Quit

    $ >
    ```

3. Repeat Steps 1 and 2 but login as the second user.

4. Proceed to Find Match in both the first and second terminal. If both are successful, the Tic-Tac-Toe game will start.
    ```sh
    # Terminal 1
    message: No match found, created Match(0a20a556-4b3a-4d83-9ad2-3a4971e1e438).
    player_ids:
    - a9163840b1534cd48af22a99b69fa065
    player_turn_index: 0
    status: WAITING

    id: 0a20a556-4b3a-4d83-9ad2-3a4971e1e438
    message: Found Match(0a20a556-4b3a-4d83-9ad2-3a4971e1e438).
    player_ids:
    - a9163840b1534cd48af22a99b69fa065
    - f98f970e244e4946a94820052287387a
    player_turn_index: 0
    status: ONGOING

    # Terminal 2
    id: 0a20a556-4b3a-4d83-9ad2-3a4971e1e438
    message: Found Match(0a20a556-4b3a-4d83-9ad2-3a4971e1e438).
    player_ids:
    - a9163840b1534cd48af22a99b69fa065
    - f98f970e244e4946a94820052287387a
    player_turn_index: 0
    status: ONGOING
    ```

5. Both user terminals will get updated on every move. This updated information is sent to the AccelByte Lobby service and then sent to both players via websocket.

6. At the end of the game, there will be a confirmation message on which player won.
    ```sh
    id: 0a20a556-4b3a-4d83-9ad2-3a4971e1e438
    player_ids:
    - a9163840b1534cd48af22a99b69fa065
    - f98f970e244e4946a94820052287387a
    player_turn_index: 0
    status: FINISHED
    ```

## Q&A

Will there be more language runtimes supported, like Go, C#, Java, and TypeScript?

Yes! Please reach out to us if you are interested to learn more about the Extend SDKs we have in the works.

## Learn More

You can find our Python Extend SDK in our [public Github](https://github.com/AccelByte/accelbyte-python-sdk).
Interested in learning more about our solutions?
Get in touch [here](https://accelbyte.io/request-a-demo/?utm_source=website&utm_medium=blog).