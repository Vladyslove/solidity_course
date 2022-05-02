var Messenger = artifacts.require("./Messenger.sol");

module.exports = function(deployer) {
  deployer.deploy(Messenger);
};
