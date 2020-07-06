# Ruby CLI App

## Table of Contents
1. Introduction 
2. Librarys used
3. Instructions on running the program
4. Instructions on running the tests locally

## Introduction

Given a JSON file of product data, write a program that takes in a product type and zero or more product options, and returns the remaining product option categories with the available options.

Specification
* A command line program that takes in a product type and 0 or more product options. ./my_program product_type [option1 option2 option3]
* Returns available product options for the criteria, excluding the options that have already been specified
* A product list products.json is included; your app should load it or otherwise be able to handle a new product list (with the same specification) being swapped in.
* For the sake of simplicity, you can assume options will always be in the order specified in products.json.

### Example Input/Output
Example: Product type only.

> ./my_program tshirt  
Gender: male, female  
Color: red, blue, green  
Size: small, medium, large, extra-large, 2x-large  

Example: No Gender Option when 'female' is given

> ./my_program tshirt female  
Color: red, blue, green  
Size: small, medium, large, extra-large, 2x-large  

Example: Options for Sticker

> ./my_program sticker  
Size: x-small, small, medium, large, x-large  
Style: matte, glossy  

Example: Options for Small Sticker (no Size Option when 'small' is given)  

> ./my_program sticker small  
Style: matte

## Librarys Used
this program uses the RSpec gem for testing
this file comes with a gemfile with rspec listed in it, make sure to bundle install to get RSpec in order to run tests 

## Instructions on running the program
This program runs on ther terminal, my setup is on mac os

* Make sure to have ruby installed in your setup 
*  If you don't here is a link with instructions to get ruby: <a href = "https://www.ruby-lang.org/en/documentation/installation/">get Ruby</a>
* Once you have cloned the git folder:
    * In your terminal cd into the lib folder 
    * run ./cli.rb <product_type> [option1 option2 option3] on the terminal
    * example without options:
       > $ ./cli.rb tshirt  
        Gender: male, female  
        Color: red, blue, green  
        Size: small, medium, large, extra-large, 2x-large  
    * example with option, gender:
        > $ ./cli.rb tshirt female
        this will output:  
        Color: red, blue, green  
        Size: small, medium, large, extra-large, 2x-large  

## Instructions on running the tests
The test uses RSpec, make sure to bundle install before running the tests

to run the tests:
* cd to the spec folder 
* run "bundle exec rspec <test file name>.rb"
* Here is an exmple to run the tshirt class test:
* example:  
    > $ bundle exec rspec t_shirt_spec.rb
     
    ......  
    Finished in 0.00725 seconds (files took 0.13828 seconds to load)
    6 examples, 0 failures





