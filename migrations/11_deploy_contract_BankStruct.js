var BankStruct = artifacts.require("./BankStruct.sol");

module.exports = function(deployer) {
  deployer.deploy(BankStruct, 123);
};
