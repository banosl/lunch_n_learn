# lunch_n_learn

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

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->



<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Learning Goals
- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [![Rails]][Rails-url]

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

## Usage

### Endpoints

- Root directory: 'http://localhost:3000/api/v1'



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

