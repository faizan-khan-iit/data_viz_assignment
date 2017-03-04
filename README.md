# Data Visualization Programming Assignment II
## Coursera course Data Visualization

### Data Used
Data set is the *email-Eu-core temporal network data*.
It may be downloaded from: http://snap.stanford.edu/data/email-Eu-core.html

Download file: http://snap.stanford.edu/data/email-Eu-core.txt.gz

##### Dataset information

The network was generated using email data from a large European research institution. The e-mails only represent communication between institution members (the core), and the dataset does not contain incoming messages from or outgoing messages to the rest of the world. A directed edge (u, v, t) means that person u sent an e-mail to person v at time t. A separate edge is created for each recipient of the e-mail.

The data used for plotting is a subset of data. Only the first 100 rows have been used to make the graph easy to observe.

### Aspects of Visualization

1. The visualization has no crossing edges to avoid confusion.
2. The network graph has a legend which conveys the following information-
- The nodes represent user IDs of users of the institute
- The colour of links is according the timestamp value of the email. The red links represent emails sent within 5000 seconds of initial record time, brown links represent emails spent between 5000 to 10000 seconds of initial record time and so on.
3. Particular nodes can be selected - [see here](https://github.com/faizan-khan-iit/data_viz_assignment/blob/master/assignment_pics/Capture2.PNG). The immediate neighbors along with the edges are highlighted for ease of observation.
4. Zooming in of graph is possible. The degree neighbours retain their labels - [see here](https://github.com/faizan-khan-iit/data_viz_assignment/blob/master/assignment_pics/Capture3.PNG).
5. Different coloured edges make it easier to differentiate when the emails were sent. For e.g. - [see here](https://github.com/faizan-khan-iit/data_viz_assignment/blob/master/assignment_pics/Capture4.PNG). The person with ID 472 sent an email to user 168 who contacted user 912. It is possible that the emails were related, e.g. 168 forwarded 472's email to 912, who after sometime contacted 159.
6. To see the accurate value of the timestamp, just hover over the edge - [see here](https://github.com/faizan-khan-iit/data_viz_assignment/blob/master/assignment_pics/Capture5.png). This provides more information in addition to colour coded edges.

### Visualization Summary

The visualization shows a sample of how emails are sent in an organisation. It is a directed graph which tells us about the users that tend to send more messages than they receive and vice versa. The graph also shows how some users obtain much more emails than others, probably because of their designation.
