var Token = artifacts.require("./Token.sol");
var BSToken = artifacts.require("./BSToken.sol");
var BSToken = artifacts.require("./Booking.sol");

module.exports = function(deployer) {
  deployer.deploy(Token);
  deployer.deploy(BSToken);
  deployer.deploy(Booking);
};
