# Go Webserver Chirps

This is a simple project aimed at practicing my Go skills, created by [Boot.dev](https://www.boot.dev/tracks/backend).

The project shows how to design a web server that serves static files and exposes APIs

## Build and start project

`go build -o out && ./out`

## Open Endpoints

Open endpoints require no Authentication.

#### Reset visits counter and metrics

<details>
 <summary><code>GET</code> <code><b>/api/reset</b></code></summary>

##### Parameters

> | name      |  type     | data type               | description                                                           |
> |-----------|-----------|-------------------------|-----------------------------------------------------------------------|
> | None      |  required | object (JSON)   | N/A  |


##### Responses

> | http code     | content-type                      | response                                                            |
> |---------------|-----------------------------------|---------------------------------------------------------------------|
> | `200`         | `text/plain;charset=UTF-8`        | `Hits reset to 0`                                |

</details>

<details>
 <summary><code>GET</code> <code><b>/admin/metrics</b></code></summary>

##### Parameters

> | name      |  type     | data type               | description                                                           |
> |-----------|-----------|-------------------------|-----------------------------------------------------------------------|
> | None      |  required | object (JSON)   | N/A  |


##### Responses

> | http code     | content-type                      | response                                                            |
> |---------------|-----------------------------------|---------------------------------------------------------------------|
> | `200`         | `text/html;charset=UTF-8`        | `<html><body><h1>Welcome, Chirpy Admin</h1><p>Chirpy has been visited %d times!</p></body></html>`                                |

</details>

------------------------------------------------------------------------------------------

## Auth and token

Closed endpoints require a valid Token to be included in the header of the
request.

<details>
 <summary><code>POST</code> <code><b>/api/login</b></code></summary>

##### Parameters

> | name      |  type     | data type               | description                                                           |
> |-----------|-----------|-------------------------|-----------------------------------------------------------------------|
> | Email      |  required | string   | N/A  |
> | Password      |  required | string   | N/A  |


##### Responses

> | http code     | content-type                      | response                                                            |
> |---------------|-----------------------------------|---------------------------------------------------------------------|
> | `200`         | `application/json`        | ``                                |
> | `401`         | `text/plain;charset=UTF-8`        | `Invalid password`                                |

</details>

------------------------------------------------------------------------------------------

