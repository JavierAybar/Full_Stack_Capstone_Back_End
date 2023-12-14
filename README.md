<a name="readme-top"></a>
# Full_Stack_Capstone_Back_End
<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [Kanban board](#kanban_board)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Diagram](#diagram)
  - [Install](#install)
  - [Usage](#usage)
  - [Linters](#linters)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Car Reservation App <a name="about-project"></a>

The project is based on an app to book an appointment to try a motorcycle. and follow the given design of the website but with personalized content for making a car reservation app, this is the project back-end, it's used as an API for the front-end [found here](https://github.com/JavierAybar/Full_Stack_Capstone_Front_End).

## Kanban board

- [Kanban board](https://github.com/users/JavierAybar/projects/9)
- [Initial image](https://private-user-images.githubusercontent.com/129561152/287035103-291a399c-c0dc-4ca5-a5f7-5e05c1882f9f.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDI1ODU5MjUsIm5iZiI6MTcwMjU4NTYyNSwicGF0aCI6Ii8xMjk1NjExNTIvMjg3MDM1MTAzLTI5MWEzOTljLWMwZGMtNGNhNS1hNWY3LTVlMDVjMTg4MmY5Zi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBSVdOSllBWDRDU1ZFSDUzQSUyRjIwMjMxMjE0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDIzMTIxNFQyMDI3MDVaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT04ODJlMzFiZjJjNjVmZGM1YzM4MWViOTY5YTRjNzU0YjAyNGY2MmU2YTQ3MjEyNTM3NThkMWM2Yjg0NGU4MjllJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.Gbu7qFhcFUANYTi9IWprHpyfw9GoOSztrtn7-XYZSu0)

### **_This project is made up of 5 participants._**
@JavierAybar 
@Gh-Reza 
@Abdelaziz-Mahdi
@Marcraphael12 
@everinurmind 

## 🛠 Built With <a name="built-with"></a>

<a href="https://github.com/JavierAybar/hello-react-front-end/tree/setup-front-end">See the React Application</a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://react.dev/">React</a></li>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://getbootstrap.com/">Bootstrap</a></li>
    <li><a href="https://tailwindcss.com/">TailwindCSS</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- [x] The user logs in to the website by typing the Email and Password.
- [x] In the navigation panel, the user can see links to:
- "Items list".
- "Reserve" form.
- "My reservations".
- "Add items".
- "Delete items" (the link is visible to everybody).
- [x] On the main page, the user can see a list of motorcycles/doctors/classes/items that you selected as a theme.
List

- [x] When the user selects a specific item, they can see the details page with its full description.
- [x] On the details page, the user can click the "Reserve" button.
- [x] When the user clicks the "Add item" link in the navigation panel they can see a form for adding a new item.
- [x] Make the app responsive, creating both mobile and desktop versions.

- [x] When the user clicks the "Delete item" link in the navigation panel they can see a list of all items with title and "Delete" button.
- [x] When the user clicks the "Delete" button, the selected item is marked as removed and does not show on the main list anymore.
- [x] To reserve an appointment, the user has to select a date and city (username and selected item are auto-filled).
- [x] Have all necessary inputs.
- [x] The user can access the "Reserve" page from the navigation panel. In that case, only the username is auto-filled.

- [x] When the user clicks the "My reservations" link in the navigation panel they can see a list of their reservations (with information about item name, date, and city).
- [x] Have full documentation for the API.
- [x] Implement proper user authentication from the front end to the server.
- [x] The "Add item" and "Delete item" links are accessible only by users who are admins.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Diagram <a name="diagram"></a>

[See The ERD diagram](./ERD_diagram.png)

To get a local copy up and running, follow these steps.

### Install <a name="install"></a>

Install this project with:

```sh
  bundle install
```

Setup Database by running these commands:


1. Remove config/master.key and config/credentials.yml.enc if they exist.
```sh
rm config/master.key config/credentials.yml.enc
```
2. Run in the terminal:
```sh
EDITOR=code rails credentials:edit 
```
3. Close the editor that opens.
4. This command will create a new master.key and credentials.yml.enc if they do not exist.

```sh
  rails db:create
  rails db:migrate
```

### Usage <a name="usage"></a>

To run the project, execute the following command:

```sh
  rails server
```

### Linters <a name="linters"></a>

Use this command to fix **Rubocop Linter** Errors:

```sh
  rubocop -A
```

Use this command to fix **Stylelint** Errors:

```sh
  npx stylelint "**/*.{css,scss}" --fix
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Javier Aybar**

- GitHub: [@JavierAybar](https://github.com/JavierAybar)
- LinkedIn: [@JavierAybar](https://www.linkedin.com/in/javier-aybar-932376274/)

👤 **Marc Raphael**

- GitHub: [@Marcraphael12](https://github.com/Marcraphael12)
- Twitter: [@MarcRaphael20](https://twitter.com/MarcRaphael20)
- LinkedIn: [Marc Raphael](http://linkedin.com/in/marc-raphael-326039204)

👤 **Reza Merzaie**

- GitHub: [@Gh-Reza](https://github.com/Gh-Reza)
- Twitter: [@RezaMerzie](https://twitter.com/RezaMerzaie7)
- LinkedIn: [@RezaMerzie](https://www.linkedin.com/in/reza-merzaie)

👨🏼‍🚀 **Abdelaziz Mahdi** 🐱‍👤

- GitHub: [@Abdelaziz-Mahdi](https://github.com/Abdelaziz-Mahdi)
- Twitter: [@_AbdelazizMahdi](https://twitter.com/_AbdelazizMahdi)
- LinkedIn: [in/abdelaziz-mahdi](https://www.linkedin.com/in/abdelaziz-mahdi)

👤 **Nurbol Sultanov**

- GitHub: [@everinurmind](https://github.com/everinurmind)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/everinurmind/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Add about page.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>
[Vespa](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) - Responsive Redesign by Murat Korkmaz

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
