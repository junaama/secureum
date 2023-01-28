used sendtransaction to send value to contract instance
- ideas: 
  - calling the submitinstance myself
  - constructor is payable so u can set the owner to msg.sender, or else there wouldnt be a msg.sender bc nothing is being sent

reread the contract
- payable(king).transfer(msg.value);
  - failing transfer results in a revert
  - so if we cant execute transfer, we can never continue the remaining code blocks
  - 
