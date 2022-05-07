var TruffleContract = artifacts.require("./TruffleContract");

module.exports = function(_deployer) {
    _deployer.deploy(TruffleContract)
};
