This repository contains a Docker deployment of Tor. It can be configured as a bridge relay, middle relay, or exit relay.

## Environment Variables

| Name                         | Description                                                                  | Default value |
| ---------------------------- | ---------------------------------------------------------------------------- | ------------- |
| **RELAY_TYPE**               | The type of relay (bridge, middle or exit)                                   | middle        |
| **RELAY_NICKNAME**           | The nickname of your relay                                                   | tor           |
| **CONTACT_GPG_FINGERPRINT**  | Your GPG ID or fingerprint                                                   | none          |
| **CONTACT_NAME**             | Your name                                                                    | none          |
| **CONTACT_EMAIL**            | Your contact email                                                           | none          |
| **RELAY_BANDWIDTH_RATE**     | Limit how much traffic will be allowed through your relay (must be > 20KB/s) | 100 KBytes    |
| **RELAY_BANDWIDTH_BURST**    | Allow temporary bursts up to a certain amount                                | 200 KBytes    |

Based off of a Dockerfile from https://github.com/jessfraz/dockerfiles.
