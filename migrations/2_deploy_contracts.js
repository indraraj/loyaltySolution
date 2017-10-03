var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");

var BaazarContract = artifacts.require("./BaazarContract.sol");
var MmtContract = artifacts.require("./MmtContract.sol");

module.exports = function(deployer) {
  deployer.deploy(BaazarContract);
//  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MmtContract);
};
