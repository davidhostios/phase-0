![3.1](imgs/3.1/"Example 3.1")

![3.2](imgs/3.2 "Example 3.2")

![3.3](imgs/3.3"Example 3.3")

![3.4](imgs/3.4"Example 3.4")

![3.5](imgs/3.5"Example 3.5")

![3.6](imgs/3.6"Example 3.6")

![3.7](imgs/3.7"Example 3.7")

![3.8](imgs/3.8"Example 3.8")

![3.9](imgs/3.9"Example 3.9")

![3.9.1](imgs/3.9.1"Example 3.9.1")

#How can you use Chrome's DevTools inspector to help you format or position elements?

Chrome DevTools is a powerful but simple Document
Object Model that puts both the html and stylesheet
(in this case, css) in your hands at the same time. 

DevTools allows a developer to manipulate the HTML and css
in real time. 

It highlights an object and shows the user a physical 
model of which parts are the padding, margin, and border. 
That makes it much easier to manipulate the size or
shape of an object and makes sure it works before you add
it to your code. 

#How can you resize elements on the DOM using CSS?

You add the properties height and width to the element you 
want to effect. Height and width can accept a different 
number of syntaxes, like em, %, or px. 


#What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use?

Absolute Positioning takes an element out of the normal flow but leaves it
in its containing element, meaning that it will scroll up and down 
the page and it won't effect the position of the elements around it. 

Fixed Positioning is a form of absolute positioning that fixes the
element in the browser window instead of the containing element. Like 
absolute positioning, these elements do not affect the surrounding elements. 

The default positioning value for an element is static, and so it doesn't
necessarily need to be defined in css. This setting will basically just
stack the elements on top of one another if not modified. 

Relative Positioning moves an element in relation to where it would have 
normally been positioned. After setting position: relative, you can use top, 
bottom, left, and right to move the element in % or

I found fixed and relative positioning to be the easiest to use. When
I think about why I found those easiest, I can't really come up with a
concrete answer except that through my experimentation I found the 
desired results were achieved most easily using these two types of
positioning. So, I guess what I really mean is that I just played with
them until I got them how I wanted them, and then when I looked at 
what I liked, they were normally either fixed or relative. 

#Which was most difficult?

The most difficult aspect of this challenge was figuring out
exactly what did what. The positioning attribute was a little 
tough to wrap my head around, but after experimenting for a while, 
it starts to make more sense. 

#What are the differences between margin, border, and padding?

These are the three areas of space around the content we add wih raw 
HTML. The content is in the center, around that is the padding. The border 
is the line between they padding and the margin. One can manipulate
the color and size of each to position as needed.

#What was your impression of this challenge overall? (love, hate, and why?)

I love to design, so I had a blast with this challenge. The ability to
manipulate the position, shape, and size of an HTML element are paramount
to composition of a page. That's what this challenge was all about so it was 
both fun and informative. 
