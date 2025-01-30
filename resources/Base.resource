*** Settings ***
Documentation        Arquivo principal do projeto saucedemo

Library    Browser

Resource    pages/Login.resource
Resource    pages/Inventory.resource

Resource    pages/components/Navbar.resource


*** Keywords ***
Start session
    New Browser    browser=chromium    headless=False
    New Page       https://www.saucedemo.com/