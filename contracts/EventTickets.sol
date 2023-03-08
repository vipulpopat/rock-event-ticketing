// SPDX-License-Identifier: MIT
pragma solidity >=0.6.11 <0.9.0;

uint256 constant TOTAL_EVENT_TICKETS = 10;

contract EventTickets {
  address public owner = msg.sender;

  struct EventTicket {
    uint256 price;
    address owner;
  }

  EventTicket[TOTAL_EVENT_TICKETS] public eventTickets;

  event ticketPurchased(address buyer, uint ticketNumber);

  constructor() {
    for (uint256 i = 0; i < TOTAL_EVENT_TICKETS; i++) {
      eventTickets[i].price = 1e17; // 0.1 ETH
      eventTickets[i].owner = address(0x0);
    }
  }

  function purchaseEventTicket(uint256 _index) external payable {
    require(_index < TOTAL_EVENT_TICKETS && _index >= 0);
    require(eventTickets[_index].owner == address(0x0));
    require(msg.value >= eventTickets[_index].price);
    eventTickets[_index].owner = msg.sender;
    emit ticketPurchased(msg.sender, _index);
  }
}