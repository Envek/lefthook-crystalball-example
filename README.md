# Example application for Lefthook + Crystalball guide

Please read “[Lefthook, Crystalball, and git magic for smooth development experience]” blog post first.

<a href="https://evilmartians.com/">
<img src="https://evilmartians.com/badges/sponsored-by-evil-martians.svg" alt="Sponsored by Evil Martians" width="236" height="54">
</a>


## Installation

 0. Ensure that you have Ruby 2.6.3 installed

 1. Fork and clone this repository locally:

    ```sh
    git clone https://github.com/[YOUR-NAME]/lefthook-crystalball-example
    ```

 2. Install lefthook from Rubygems explicitly:

    ```sh
    gem install lefthook
    ```

 3. Install other gems:

    ```sh
    bundle install
    ```

 4. Prepare database

     ```sh
    rails db:prepare
     ```

## Usage

 1. Checkout to `feature/multiaccount` branch, see how migrations are applied:

    ```sh
    git checkout feature/multiaccount
    ```

 2. Checkout to `feature/variations` branch, see how new gems are installed, old migrations reverted, new migrations applied:

    ```sh
    git checkout feature/variations
    ```

 3. Checkout back to `master` branch, see how migrations reverted:

    ```sh
    git checkout master
    ```

 4. Write some code and specs to any of these branches, push to your local fork, see how [Crystalball] is working together with [Lefthook]

 5. Look at commit history for details

## Credits

  - [Alexander Abroskin] for [Lefthook]

  - [Toptal] for [Crystalball]

  - [Linus Torvalds] for [git]

  - You for your attention. Thanks!

[Lefthook, Crystalball, and git magic for smooth development experience]: https://dev.to/evilmartians/lefthook-crystalball-and-git-magic-for-smooth-development-experience-3178 "Learn how to make git hooks to do most routine tasks for you: install gems, migrate the database, run tests, and linters."
[Lefthook]: https://github.com/Arkweid/lefthook "Git hooks manager"
[Crystalball]: https://github.com/toptal/crystalball "Regression Test Selection library for your RSpec test suite"
[Alexander Abroskin]: https://github.com/Arkweid
[Toptal]: https://github.com/toptal/
[Linus Torvalds]: https://github.com/torvalds
[git]: https://git-scm.com/ "free and open source distributed version control system"
