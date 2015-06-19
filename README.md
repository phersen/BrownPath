BrownPath
=========

A simple Processing sketch that display Brownian trajectories. Each time the web-user clicks on the screen, a novel trajectory starts with a different color. The processing skecth is displayed on a companion webpage thanks to Processing.js (see http://processing.org for more details). This is an elementary sketch which can easily be improved to have several, brownian particles moving at the same time and avoiding each others. The book (and github repository) "The Nature of Code" contains such examples (and is a great read for processing lovers). 

Processing.js
==========

Using Processing.js is now very basic. The HTML page need to load the processing.js script, and then call the processing sketch (here, brownpath.pde) in a canvas with the following html code:

<pre>
&lt;figure>   
   &lt;canvas id="sketch" data-processing-sources="sketch/Brown.pde" width="640" height="640">
      &lt;p>Your browser does not support the canvas tag.&lt;/p>
    &lt;/canvas>
    &lt;noscript>
      &lt;p>JavaScript is required to view the contents of this page.&lt;/p>
    &lt;/noscript>
    &lt;figcaption>
      &lt;!-- add a figure caption here-->
    &lt;/figcaption>
&lt;/figure>
</pre>

Note that the canvas size must have the same size than the processing sketch, which takes the form of size(640,640) in the setup() part of the processing sketch. It's possible to pass global variables from the HTML page to the processing sketch and thus to make the sketch adapt to the size of the canvas. Global javascript variables are indeed available to all javascripts and thus to the processing sketch parsed into javascript by Processing.js. For an example look at the "Curves" repository.
