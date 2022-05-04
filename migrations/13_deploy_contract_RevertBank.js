var RevertBank = artifacts.require("./RevertBank.sol");

module.exports = function(deployer) {
  deployer.deploy(RevertBank);
};
