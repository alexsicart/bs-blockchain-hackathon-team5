pragma solidity ^0.4.8;

// import "identity.sol";

import "BSToken.sol";

contract Booking {

    uint kwh_cost;
    bool public state;
    address id_user;
    uint booking_hour;
    uint booking_id;
    address community;

  function Booking(uint _kwh_cost, uint _booking_hour, address _id_user, uint _booking_id, address _community) {
     kwh_cost = _kwh_cost;
     id_user = _id_user;
     booking_hour = _booking_hour;
     booking_id = _booking_id;
     community = _community;

  }

    event payed (bool state);
    function pay(bool charge_completed) {
        if(charge_completed) {
            state = true;
            BSToken token= new BSToken();
            token.transfer(id_user, community, kwh_cost);

            // transfer(id_user, passFrom, community, kwh_cost);
            payed (state);
        }

    }


}
