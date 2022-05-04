var RequireBank = artifacts.require("./RequireBank.sol");

module.exports = function(deployer) {
  deployer.deploy(RequireBank);
};
