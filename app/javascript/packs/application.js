// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import "stylesheets/application.css"

import Rails from "@rails/ujs"
// import * as ActiveStorage from "@rails/activestorage"
import "channels"

import { Turbo, cable } from "@hotwired/turbo-rails"
import mrujs from "mrujs"
window.Turbo = Turbo
Turbo.start()
mrujs.start()
// ActiveStorage.start()

import { Application } from 'stimulus'
const application = Application.start()
import "@stimulus_reflex/polyfills"
import "controllers"

import { Alert, Autosave, Dropdown, Modal, Tabs, Popover, Toggle, Slideover } from "tailwindcss-stimulus-components"
application.register('alert', Alert)
application.register('autosave', Autosave)
application.register('dropdown', Dropdown)
application.register('modal', Modal)
application.register('tabs', Tabs)
application.register('popover', Popover)
application.register('toggle', Toggle)
application.register('slideover', Slideover)
