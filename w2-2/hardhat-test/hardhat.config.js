
require("@nomicfoundation/hardhat-toolbox");
//require("@nomiclabs/hardhat-waffle");

const dotenv = require("dotenv");
dotenv.config({path: __dirname + '/.env'});

module.exports = {
  solidity: "0.8.18",

  networks: {
    development: {
      url: "http://127.0.0.1:8545",
      chainId: 31337,
    },

    goerli: {
      url: "https://eth-goerli.api.onfinality.io/public",
      accounts:[process.env.GOERLI_PRIVATE_KEY],
    },


    mumbai: {
      url: "https://endpoints.omniatech.io/v1/matic/mumbai/public",
      accounts: [process.env.GOERLI_PRIVATE_KEY],
      chainId: 80001
    },



    },

    etherscan: {
      apiKey: process.env.MUMBAI_API_KEY, 
    },
};
