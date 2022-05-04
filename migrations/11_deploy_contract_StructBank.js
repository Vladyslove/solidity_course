var StructBank = artifacts.require("./StructBank.sol");

module.exports = function(deployer) {
  deployer.deploy(StructBank, 123);
};
