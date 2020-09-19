An example of importing excel data to a database, with Express.js & MySQL.

## :memo: Table Of Content

-   [Prerequisites](#prerequisites)
-   [Installation](#installation)
-   [Features](#features)
-   [Built wtih](#features)
-   [Author](#author)
-   [License](#license)

## Prerequisites

-   NPM or Yarn as package manager.
-   Node.js installed on the local machine.
-   MySQL intalled on the local machine (ex. XAMPP)

## Installation

1. Clone this repository:
   `git clone https://github.com/rifanid98/batch-insert-on-duplicate-update-example`
2. Start XAMPP
3. Database configuration:
    - Open http://localhost/phpmyadmin in the browser
    - Import database, select `mahasiswa.sql` file from project folder
4. Start the server:
    - Open root project folder with command line (terminal, linux. cmd, windows. etc.)
    - Type and run this command `npm start` to start the server.
    - Make sure there are no other processes that use port 3000
5. Run app with api testing tools like postman, etc. on http://localhost:3000/mahasiswa/api/v1/ or using local ip like http://192.168.43.88:3000/mahasiswa/api/v1/ as an example.
6. Don't forget to change .env variable value to your own config.

## Features

-   [x] CRUD & Import data from excel file.
-   [x] CORS allowed

## Built with

-   [Node.js](http://nodejs.org/) - JavaScript runtime environment
-   [Express.js](https://expressjs.com/) - Node.js framework
-   [MySQL](https://www.mysql.com/) Database

## Author

#### Adnin Rifandi Sutanto Putra

-   <p><img align="left" alt="mahasiswa" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/github.svg" /> <a href="https://github.com/rifanid98">Adnin Rifandi</a></p>
-   <p><img align="left" alt="mahasiswa" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/facebook.svg" /> <a href="https://https://web.facebook.com/adnin.rifandi754">Adnin Rifandi</a></p>
-   <p><img align="left" alt="mahasiswa" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/linkedin.svg" /> <a href="https://www.linkedin.com/in/adnin-rifandi/">Adnin Rifandi</a></p>

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/rifanid98/batch-insert-on-duplicate-update-example/blob/master/LICENSE) file for details
