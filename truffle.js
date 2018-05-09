// See <http://truffleframework.com/docs/advanced/configuration>
// to customize your Truffle configuration!
module.exports = {
    mocha: {
        useColors: false
    },
    networks: {
        production: {
            host: "localhost",
            port: 8545,
            network_id: 1,
            gas: 5000,
            from: "0xa7e3c7e1fa19f5e21aee9c366ec248e19c52519f"
        },

        rinkeby: {
            host: "localhost",
            port: 8545,
            network_id: 4,
            gas: 2500000
        },

        development: {
            host: "localhost",
            port: 8545,
            network_id: 7777,
            gas: 2500000,
            from: "0xb2ebde45443e69961d795ce81d38b938085e6176"
        }
    }
};
