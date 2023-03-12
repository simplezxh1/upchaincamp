
require("@nomicfoundation/hardhat-toolbox");
//require("@nomiclabs/hardhat-waffle");


/** @type import('hardhat/config').HardchatUserConfig */
let dotenv = require('dotenv')
dotenv.config({ path: "./.env" })

const GOERLI_PRIVATE_KEY = process.env.GOERLI_PRIVATE_KEY;

const ETHERSCAN_API_KEY =process.env.ETHERSCAN_API_KEY;

module.exports = {
  solidity: "0.8.18",

  networks: {
    development: {
      url: "http://127.0.0.1:8545",
      chainId: 31337,
    },
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/F4_vkC1Fi6wNw5DzJ3tcHYlrlX8NBtaq",
      accounts:[GOERLI_PRIVATE_KEY],
      chainId:5,
    },
    },

    etherscan: {
      apiKey: ETHERSCAN_API_KEY, 
    },
};
