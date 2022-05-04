var ScoreDynamicArrayContract = artifacts.require("./ScoreDynamicArrayContract.sol");

module.exports = function(deployer) {
  deployer.deploy(ScoreDynamicArrayContract);
};
