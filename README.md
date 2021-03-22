# Community Engagement Toolkit website for CSC-324

Visit the current web app [here](https://cel-toolkit.herokuapp.com/).

## 1. Introduction 

### Background and purpose:

This project is a website for the Community Engaged Learning toolkit for Grinnell faculty. Its purpose is to support faculty in designing community engaged courses and act as a central place for faculty to go to when they have questions. The client hopes for an interactive website that supports searching, exploring, and finding inspiration for CEL courses. The most important feature is searching (which has been implemented using the pgsearch gem) that enables users to enter search terms and find related resources. The site is also easily navigatable with interactive elements like clickable tiles to static pages and an ARCGIS map of community partners.

### App Structures

This project consists of a home page with clickable image tiles to static pages, to static pages with information on CEL courses, a Syllabi page with clickable syllabi examples from past courses, and a map of community partners made in ARCGIS with a legend. In static pages, main contents are stored with a sidebar that allows users to jump to specific sections. Users can access glossary and search through the top navbar or homepage. Glossary provides users with a list of important terms for CEL, their explanations and associated sections that users can click. Search allows users to get related pages that contain the term they put in the search bar. The current search feature is programmed using pgsearch, which allows a user to search all the content of the site. 

### Reference resources
○ 	[Ruby_on_Rails tutorial](http://www.railstutorial.org)

○ 	[Stack Overflow](https://stackoverflow.com/)

○ 	[Contentful with Rails](https://github.com/contentful/contentful_rails)

○ 	[Bootstrap 4 tutorial on W3school](https://www.w3schools.com/bootstrap4/)

○ 	[Programmable Search Engine](https://support.google.com/programmable-search)


## 2. Development

### Setting up environment:

○ 	[Ruby v.2.6.3 and up](https://www.ruby-lang.org/en/downloads/)

○ 	[Linux Operating System with CLI](https://www.linux.org/)

○ 	[Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)

○ 	[Github](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github)

You can either use your local machine or cloud environment. However, it's highly recommended to use [Amazon Cloud 9](https://aws.amazon.com/cloud9/) to work on this project that satisfy most of the above development prequesites. 

### Getting started:

To get started with the project, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/CSC322-Grinnell/cel-faculty-toolkit
$ cd toolkit_app
```

Then install the needed packages (while skipping any Ruby gems needed only in production):

```
$ yarn add jquery@3.5.1 bootstrap@3.4.1
$ bundle install --without production
```

If you run into any installation issues or missing dependencies, refer to this [first chapter](https://www.learnenough.com/ruby-on-rails-6th-edition-tutorial/beginning) of the Rails tutorial for details.

Next, migrate the database (for tag search):

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you’ll be ready to seed the database with sample users and run the app in a local server:

```
$ rails db:seed
$ rails server
```
Now, visit http://localhost:3000/ in any browser in your local machine to see the running app

## 3. Deployment

To deploy the sample app to production, you’ll need a Heroku account as instructed [Section 1.4, “Deploying”](https://www.railstutorial.org/book/beginning#sec-deploying) in the tutorial. Please contact the class instructor for access and ownership of all current account credentials being use, such as Trello board, github contribution access, gmail, heroku, etc.

## 4. Work in progress

### Updated Remaining Tasks as of Spring 2021

### Asset pipeline 
One concern is the asset pipeline for images and syllabi. We encountered an issue very late in the term where when you clicked the syllabi on the static page, the site crashed. This was an issue with the site recognizing where the syllabi were as assets. Although we believe this function is fully fixed, as the assets are moved and evolve, this is an issue to watch out for. 

### Intro to CEL Page
Late in the term, we received a powerpoint from the community partner with materials related to intro-to-CEL. We didn’t have time to fully transcribe it, so the powerpoint is just linked on that static page. However, this is more of a workaround fix, and the material should probably be transcribed into paragraphs on the static page.

### Top Nav Wraparound
The top navbar/header has so many clickable headers that sometimes it wraps down to two lines, which the community partner expressed isn’t an issue, but it could be an aesthetic choice that will shift in the future. 

### Search titles
The search currently allows you to search the titles of the site, but searching static page titles returns results that don’t have content previews. This means the search works, but doesn’t work in the best possible way for the user, with this flaw that only happens with the static page titles themselves. The solution to this would be to rework how we store the searchable titles in the table we use for the pgsearch gem.

### Refactoring
One thing to refactor is the dynamic resizing of the page. We refactored this quite a bit, but there could be more to do. The previous team used many conditionals for how to format css in the stylesheets based on screen size, and we were able to remove some by switching to viewport width (vw, vmin) sizing, but we didn’t fully refactor this and there may be more opportunities to make the code more efficient.


### Remaining Tasks as of Fall 2020

### Search feature
The search algorithm we implemented is embedded Google search, but it’s not the most optimal now and this search engine is still crawling/learning all pages in our website, thus some words can be searched while some other words can’t (hopefully it’ll be fixed in the next weeks or so since Google is fixing some problems with their programmable search engine and recrawling website data.

### Tag and search by tag
Our community partner also prefers tag search, i.e. to assign tags to each section of content and by searching for specific tags, it should offer users a list of sections that contain that tag. One suggestion would be to put tags for corresponding content in each page, but required further discussions with client, mentor and instructor before actual implementation.

### Import full content and glossary
CEL toolkit has a lot of content that needs to be imported into the website. We only imported the first two sections without modification of content styling due to time constraint. Thus, the next team would need to import the rest of the content with synchronous styling as Lia finishing the content.

### Be creative in content delivery
Utilize interactive infographic instead of big chunks of text, highlight keywords and enhance the color scheme for the content.

### Improve UI
Make the website more responsive. Currently the side navigation bar is made to disappear during mobile mode, this can be improved by making the side navbar collapse into a floating button that can be clicked to expand (see How To Create a Hoverable Side Navigation). Also, improve designs, color schemes, composition..
### Feed content to `Contact` and `About` page
In the footer right now, there are links to contact and about page. The next team should discuss with the community partner about the necessary information on for these pages and fill it in

## Credit

This is made with the help of
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hartl](http://www.michaelhartl.com/).

All content belongs to Grinnell College. 
