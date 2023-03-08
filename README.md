# CA6001I Assignment - Project 1

| <!-- -->    | <!-- -->    |
|-------------|-------------|
| Assignment      | CA6001I – Developing Blockchain Systems Project 1         |
| Student         | Vipul Popat         |
| Student ID      | 21267549         |
| Email           | vipul.popat2@mail.dcu.ie         |


## Installation Pre-requisites
- Metamask wallet extension for the browser.
- Install nodejs & npm from https://phoenixnap.com/kb/install-node-js-npm-on-windows
- Install Ganache/Truffle suite from https://trufflesuite.com/ganache/
- Install truffle $ npm install -g truffle
- Clone the git repository https://gitlab.computing.dcu.ie/popatv2/rock-event-ticketing.git to a locally created folder of your choice

To compile the project run:
>$ truffle compile

To run the test scripts, run:
>$ truffle test

To migrate to your local development network using Ganage, ensure that you have launched the Ganache UI.
Then run:
>$ truffle migrate

After the successful migration you may Install the dependencies required by the UI
>$ cd client; npm install

After the successful migration you may launch the application using lite server:
>$ npm start

This will invoke the web app.

Add the local instance of Ganache to your Metamask wallet.

Next you need to import the Ganache account[0] and account[1] into your metamask wallet.
Ensure both accounts are connected.
Select the account linked to Ganache account[0].

Return to the web app and refresh the page.
You should note that the account balance of 1,000,000 tokens is displayed.
The application is now ready for use.

A demonstration of how to use the application is available at:
https://drive.google.com/file/d/1n2lSAgafjQ1YZrueGPq8pMuMHDhCK0yW/view?usp=share_link

