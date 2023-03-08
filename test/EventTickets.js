const EventTickets = artifacts.require('EventTickets');
const assert = require('assert');

contract('EventTickets', (accounts) => {
  const BUYER_ACCOUNT = accounts[1];
  const EVENT_TICKET_ID = 0;

  it('should allow a user to buy a event ticket', async () => {
    const instance = await EventTickets.deployed();
    const originalTicket = await instance.eventTickets(
      EVENT_TICKET_ID
    );
    await instance.purchaseEventTicket(EVENT_TICKET_ID, {
      from: BUYER_ACCOUNT,
      value: originalTicket.price,
    });
    const updatedEventTicket = await instance.eventTickets(EVENT_TICKET_ID);
    assert.equal(
      updatedEventTicket.owner,
      BUYER_ACCOUNT,
      'the buyer should now own this event ticket'
    );
  });
});
