web accessibility and primary function are key

camel case

modular setup

clean and easy to read code

function based with comments like below at to start:
/**
 * Calculates the invoice amount for an interpreter.
 *
 * @param int|float $totalMinutes The total duration of appointments in minutes.
 * @param float $payRate The interpreter's per-hour pay rate.
 * @return float The calculated invoice amount rounded to two decimals.
 */



  crud rest api implementation


  built for saleability






  folder structure - used Tron theme for separation
  - CLU : used to store deploy, setup, schema, envvar needs and any other needed details for use in the project
  - docs : used to store docs related to the project
  - theGrid : the deployable version of the project
    - api2 : api end point storage
    - components : preHeader, header and footer php files (preHeader being the bootstrop)
    - core : required php function files such as system helpers, db connection, authentication
    - include : used for all the files that are included into host pages.
      - css : style files
      - js : javascript and custom jquery plugins
      - images : images
      - media : other media 
      - views : modular php pages added in via require_once
    - pages : the content pages separated into dashboards, ops, and reports
      - dashboards
      - ops
      - reports
    - tron : used for storage of help module and resources
    - release : the release notes for the project are stored with the project and have a public and authenticated view of the data with the .md file being protected via htaccess from direct viewing
      - release.php
      - release.md
    index.php
    robots.txt