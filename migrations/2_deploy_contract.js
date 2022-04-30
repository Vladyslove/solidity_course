var Contest = artifacts.require("./Ballot.sol");

module.exports = function(deployer) {
  deployer.deploy(Contest);
};
