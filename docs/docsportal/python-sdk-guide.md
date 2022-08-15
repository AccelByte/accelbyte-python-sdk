---
id: python-sdk-guide
title: Python SDK Getting Started Guide
---

# {{ $frontmatter.title }}
## Overview
You can use the AccelByte Python SDK to implement our backend services within your game. The SDK acts as a bridge between your game and our services. Follow the tutorials below to learn how to set up our Python SDK.

## Prerequisites

*  <a href="/guides/access/namespaces.html#how-to-create-a-game-namespace" target="_blank">Create a Game Namespace</a> if you don't have one yet. Be sure to keep the namespace's **Namespace ID** as you will need it later
*  <a href="/guides/access/iam-client.html#create-a-client" target="_blank">Create an OAuth Client</a> with a **Confidential** client type. Keep the **Client ID** and the **Client Secret** somewhere safe as you will be using them in this tutorial
* Download the [AccelByte Python SDK](https://github.com/AccelByte/accelbyte-python-sdk).

## Additional Resources

* Download the [Sample App for the AccelByte Python SDK](https://github.com/AccelByte/accelbyte-python-sdk/tree/master/sample_app).
* Refer to [AccelByte Python SDK Index](https://github.com/AccelByte/accelbyte-python-sdk/tree/master/docs) to find information about classes and functions related to the Open API 2.0 operation.

## Tutorials
### Install the AccelByte Python SDK

You can install the SDK with **pip** directly from the GitHub repository, as seen below:

```py
pip install git+ssh://git@github.com/AccelByte/accelbyte-python-sdk.git@v0.21.0#egg=accelbyte_py_sdk
```

### Log in as a Client using the SDK

To log in as the client you created earlier, import the **accelbyte_py_sdk**, **MyConfigRepository**, and list the client's **Base URL**, **Client ID**, **Client Secret**, and **Namespace**.

Next, initialize the python SDK and call  **token_grant_v3**  with the grant type set as **"client_credentials"**.

```py
from accelbyte_py_sdk.core import get_env_config

base_url, client_id, client_secret, namespace = get_env_config()

import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository
from accelbyte_py_sdk.api.iam import token_grant_v3

config = MyConfigRepository(
    base_url=base_url,
    client_id=client_id,
    client_secret=client_secret,
    namespace=namespace,
)

accelbyte_py_sdk.initialize(
    options={
        "config": config,
    },
)

_, error = token_grant_v3(grant_type="client_credentials")
if error:
    print(error)
```

:::tip NOTE
You can also paste in configuration by replacing **MyConfigRepository(...)** with the following value.

* If your configuration data is in a JSON file, replace it with **JsonFileConfigRepository("path/to/the/config/file.json")**
* If your configuration data is set as Environment Variables (AB_BASE_URL, AB_CLIENT_ID, AB_CLIENT_SECRET, AB_NAMESPACE, etc.), replace it with **EnvironmentConfigRepository(...)**
:::

### Import AccelByte Services

Now you can start using any of the following AccelByte services in your application, by importing the following syntax to your code. See the model for each service below or in the [how-to](https://github.com/AccelByte/accelbyte-python-sdk/tree/main/samples/how-to) folder inside the [accelbyte-python-sdk](https://github.com/AccelByte/accelbyte-python-sdk) repository.

:::details <strong>IAM</strong>
[API Docs](https://demo.accelbyte.io/iam/apidocs/)
```py
from accelbyte_py_sdk.api.iam import *
from accelbyte_py_sdk.services.auth import *
```
:::

:::details <strong>Basic</strong>
[API Docs](https://demo.accelbyte.io/basic/apidocs/)
```py
from accelbyte_py_sdk.api.basic import *
```
:::

:::details <strong>Social</strong>
[API Docs](https://demo.accelbyte.io/social/apidocs/)
```py
from accelbyte_py_sdk.api.social import *
```
:::

:::details <strong>Platform</strong>
[API Docs](https://demo.accelbyte.io/platform/apidocs/)
```py
from accelbyte_py_sdk.api.platform import *
```
:::

:::details <strong>Group</strong>
[API Docs](https://demo.accelbyte.io/group/apidocs/)
```py
from accelbyte_py_sdk.api.group import *
```
:::

:::details <strong>Cloud Save</strong>
[API Docs](https://demo.accelbyte.io/cloudsave/apidocs/)
```py
from accelbyte_py_sdk.api.cloudsave import *
```
:::

:::details <strong>DSM Controller</strong>
[API Docs](https://demo.accelbyte.io/dsmcontroller/apidocs/)
```py
from accelbyte_py_sdk.api.dsmc import *
```
:::

:::details <strong>Session Browser</strong>
[API Docs](https://demo.accelbyte.io/sessionbrowser/apidocs/)
```py
from accelbyte_py_sdk.api.sessionbrowser import *
```
:::

:::details <strong>Lobby</strong>
[API Docs](https://demo.accelbyte.io/lobby/apidocs/)
```py
from accelbyte_py_sdk.api.lobby import *
```
:::

:::details <strong>Telemetry</strong>
[API Docs](https://demo.accelbyte.io/game-telemetry/apidocs)
```py
from accelbyte_py_sdk.api.gametelemetry import *
```
:::

