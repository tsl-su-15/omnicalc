# Omnicalc

The goal of this project is to
- practice using Bootstrap to layout and style our pages
- practice Ruby basics
- challenge yourself with new Ruby topics

Starting from the mockups in the calcuations controller, recreate the following web app:

https://omnicalc-target.herokuapp.com/

## Setup

 - Fork and clone this repository.
 - Open the entire folder in Sublime.
 - In Chrome, open the file you are working on in one tab and your target in another tab.

## Steps

 - Create the basic grid skeleton. [Shoelace.io](http://shoelace.io/) may come in handy.
 - Add the [list of links](http://getbootstrap.com/components/#list-group) to the left side. Check the /app/views/layouts/application.html.erb file for the location of the links.
 - Add a [panel](http://getbootstrap.com/components/#panels-heading) to the right side.
 - Add content to the panel body; either a [form](http://getbootstrap.com/css/#forms-horizontal) or a [description list](http://getbootstrap.com/css/#horizontal-description), depending on which page you are working on.
 - Add the [navbar](http://getbootstrap.com/components/#navbar) to the top.
 - Include [Font Awesome icons](http://fortawesome.github.io/Font-Awesome/icons/) where appropriate.
 - Make it [Responsive](http://getbootstrap.com/css/#responsive-utilities):
  - On extra-small and small screens, hide the left nav.
  - On medium and large screens, hide the navbar links (since the left nav is visible).
 - When a form submit button is clicked, make it so that you end up at the corresponding results page.
 - Experiment with different [Bootswatches](https://bootswatch.com/).

 One page was left fully mocked up for you to use as an example. Feel free to check the source on the Heroku example as well.
