# Lunch n Learn API

<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Activity][commit-activity-shield]][commit-activity-url]
[![Commit][last-commit-shield]][last-commit-url]
[![Contributors][contributors-shield]][contributors-url]
[![Code-Size][code-size-shield]][code-size-url]<br>
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/banosl/lunch_n_learn">
  </a>
  <h3 align="center">Lunch n Learn</h3>

</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ul list-style-position="inside">
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#learning-goals">Learning Goals</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li>
      <a href="#usage">Usage</a>
      <ul>
        <li><a href="#endpoints">Endpoints</a></li>
      </ul>
    </li>
    <li><a href="#developers">Developers</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ul>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

Lunch n Learn API is built for consumption by a front end application to search for foods by country and provide an opportunity to learn more about that country's culture. This app exposes end points for retrieving recipes for dishes, videos, and tourist sights related to that country. End points for creating users with unique authentication tokens and adding favorites to those users are also included.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Learning Goals
- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

</br>[![Rails]][Rails-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* Ruby 2.7.4
* Rails 5.2.8

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/banosl/lunch_n_learn.git
   ```
2. Install gems
   ```sh
   bundle install
   ```
3. Setup db
   ```js
   rails db:{create,migrate}
   ```
4. Run RSpec tests
    ```sh
    bundle exec rspec
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Schema

## Usage

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Endpoints

- Root directory: 'http://localhost:3000/api/v1'

- GET Recipes
  - Allows a request to pull recipes related to a given country.
  - ```/recipes?country={country}```
  - Params:
    - country
  - When a country isn't provided, the app generates a random one.

- GET Tourist Sights
  - Allows a request to pull the nearest tourists attractions for a given country's capital within a circle radius of 20000 meters.
  - ```/tourist_sights?country={country}```
  - Params:
    - country

- GET Learning Resources
  - Allows a request to pull a YouTube video and up to 10 photos related to the given country. The YouTube videos are sources from Mr History's channel.
  - ```/learning_resources?country={country}```
  - Params:
    - country

- POST Users
  - Allows a request to create a user in the user db and assigns them a unique API key.
  - ```/users```
  - Body as raw ```JSON```:
      ```
      {
        "name": "user name",
        "email": "user email"
      }
      ```

- POST Favorites
  - Allows a request to add a favorite recipe to a user.
  - ```/favorites```
  - Body as raw ```JSON```:
    ```
    {
      "api_key": "user's api key",
      "country": "recipe's country",
      "recipe_link": "url",
      "recipe_title": "recipe's title"
    }
    ```

- GET Favorites
  - Allows a request to pull a known user's favorite recipes.
  - ```/favorites?api_key=users_api_key```
  - Params:
    - api_key


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Developers

<div align="center">
  <img src="https://avatars.githubusercontent.com/u/111591731?v=4" alt="Profile" width="80" height="80">
  <p align="center">
    Leo Banos Garcia<br>
    <a href="https://github.com/banosl">Github: banosl</a>
  </p>
</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Choose an Open Source License](https://choosealicense.com)
* ["The Best README Template" by Github User othneil](https://github.com/othneildrew/Best-README-Template)
* [Mr. History YouTube Channel](https://www.youtube.com/@MrHistory1/featured)
* APIs used:
  - [Edamam Recipes Search API](https://developer.edamam.com/edamam-recipe-api)
  - [Geoapify Places API](https://apidocs.geoapify.com/docs/places/#about)
  - [REST Countries](https://restcountries.com/#api-endpoints-v3-all)
  - [Unsplash Developers](https://unsplash.com/documentation)
  - [YouTube Data API](https://developers.google.com/youtube/v3)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[commit-activity-shield]: https://img.shields.io/github/commit-activity/m/banosl/lunch_n_learn?style=for-the-badge
[commit-activity-url]: https://github.com/banosl/lunch_n_learn/commits/main
[last-commit-shield]: https://img.shields.io/github/last-commit/banosl/lunch_n_learn?style=for-the-badge
[last-commit-url]: https://github.com/banosl/lunch_n_learn/commits/main
[contributors-shield]: https://img.shields.io/github/contributors/banosl/lunch_n_learn.svg?style=for-the-badge
[contributors-url]: https://github.com/banosl/lunch_n_learn/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/banosl/lunch_n_learn.svg?style=for-the-badge
[forks-url]: https://github.com/banosl/lunch_n_learn/network/members
[stars-shield]: https://img.shields.io/github/stars/banosl/lunch_n_learn.svg?style=for-the-badge
[stars-url]: https://github.com/banosl/lunch_n_learn/stargazers
[issues-shield]: https://img.shields.io/github/issues/banosl/lunch_n_learn.svg?style=for-the-badge
[issues-url]: https://github.com/banosl/lunch_n_learn/issues
[code-size-shield]: https://img.shields.io/github/languages/code-size/banosl/lunch_n_learn?style=for-the-badge
[code-size-url]: https://github.com/banosl/lunch_n_learn/wiki
[watchers-shield]: https://img.shields.io/github/watchers/banosl/lunch_n_learn?style=social
[watchers-url]: https://github.com/banosl/lunch_n_learn/network/members
[license-shield]: https://img.shields.io/github/license/banosl/lunch_n_learn.svg?style=for-the-badge
[license-url]: https://github.com/banosl/lunch_n_learn/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[Rails]: https://img.shields.io/badge/-Ruby%20on%20Rails-CC0000?logo=ruby-on-rails&logoColor=white&style=for-the-badge
[Rails-url]: https://rubyonrails.org 

