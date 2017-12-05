# Etherchain Light
### Lightweight blockchain explorer for your private Ethereum chain

Etherchain Light is an Ethereum blockchain explorer built with NodeJS, Express and Geth. It does not require an external database and retrieves all information on the fly from a backend Ethereum node.

While there are several excellent Ethereum blockchain explorers available (etherscan, ether.camp and etherchain) they operate on a fixed subset of Ethereum networks, usually the mainnet and testnet. Currently there are no network agnostic blockchain explorers available. If you want to develop Dapps on a private testnet or would like to launch a private / consortium network, Etherchain Light will allow you to quickly explore such chains.

A demo instance connected to the Kovan Ethereum testnet is available at [light.etherchain.org](http://light.etherchain.org). An example of a verified contract source can be found at [0x0cf37d2d45427a1380db12c9b352d6f083143817](https://light.etherchain.org/account/0x0cf37d2d45427a1380db12c9b352d6f083143817). An example of a transaction where the corresponding Solidity function name and parameters have been identified can be found at [0x82da63f3d998415b748111e6f1d11051167fb995fdca990acd3cfd5a8b397c20](https://light.etherchain.org/tx/0x82da63f3d998415b748111e6f1d11051167fb995fdca990acd3cfd5a8b397c20)

## Current Features
* Browse blocks, transactions, accounts and contracts
* View pending transactions
* Display contract internal calls (call, create, suicide)
* Upload & verify contract sources
* Show Solidity function calls & parameters (for contracts with available source code)
* Display the current state of verified contracts
* Named accounts
* Advanced transaction tracing (VM Traces & State Diff)
* View failed transactions
* Live Backend Node status display
* Submit signed Transactions to the Network
* Support for all [Bootswatch](https://bootswatch.com/) skins
* Accounts enumeration
* Signature verification
* Supports IPC and HTTP backend connections
* Responsive layout

## Planned features
* ERC20 Token support

Missing a feature? Please request it by creating a new [Issue](https://github.com/gobitfly/etherchain-light/issues).

## Usage notes
This blockchain explorer is intended for private Ethereum chains. As it does not have a dedicated database all data will be retrived on demand from a backend Geth node. Some of those calls are resource intensive (e.g. retrieval of the full tx list of an account) and do not scale well for acounts with a huge number of transactions. We currently develop the explorer using the Kovan testnet but it will work with every Geth compatible Ethereum network configuration. The explorer is still under heavy development, if you find any problems please create an issue or prepare a pull request.

## Getting started

Supported OS: Ubuntu 16.04

Supported Ethereum backend nodes: Geth

1. Setup a nodejs & npm environment
3. Start geth_ipc using docker: `cd passage-network-hapi-react/packages/passagex-ticketledger && ./scripts/docker_compose_local.sh geth_ipc`
4. Clone this repository to your local machine: `git clone https://github.com/gobitfly/etherchain-light --recursive` (Make sure to include `--recursive` in order to fetch the solc-bin git submodule)
5. Install all dependencies: `npm install`
6. Rename `config.js.example` into `config.js` and adjust the file to your local environment
7. Start the explore using docker: `./scripts/deploy_local.sh`
8. Browse to `http://localhost:3000`
