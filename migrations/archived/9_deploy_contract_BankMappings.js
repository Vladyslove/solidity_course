var BankMappings = artifacts.require("./BankMappings.sol");

module.exports = function(deployer) {
  deployer.deploy(BankMappings);
};
