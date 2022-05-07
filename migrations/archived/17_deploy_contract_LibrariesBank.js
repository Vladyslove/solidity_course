var LibrariesBank = artifacts.require("./LibrariesBank.sol");

module.exports = function(deployer) {
  deployer.deploy(LibrariesBank);
};
