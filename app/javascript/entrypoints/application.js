import "~/stylesheets/application.css"

import Rails from "@rails/ujs"
// import * as ActiveStorage from "@rails/activestorage"

import { Turbo, cable } from "@hotwired/turbo-rails"
import mrujs from "mrujs"
window.Turbo = Turbo
Turbo.start()
mrujs.start()
// ActiveStorage.start()

import { Application } from 'stimulus'
import {registerControllers} from "stimulus-vite-helpers";
import "@stimulus_reflex/polyfills"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import StimulusReflex from 'stimulus_reflex'
import consumer from '~/channels/consumer'
import controller from '~/controllers/application_controller'
const channels = import.meta.globEager('../channels/**/*_channel.js')
const application = Application.start()
StimulusReflex.initialize(application, { controller, isolate: true })
StimulusReflex.debug = import.meta.env.MODE === 'development'
application.consumer = consumer
const controllers = import.meta.globEager('../controllers/**/*_controller.js')
const componentsControllers = import.meta.globEager('../../components/**/*_controller.js')
registerControllers(application, controllers)
registerControllers(application, componentsControllers)

import { Alert, Autosave, Dropdown, Modal, Tabs, Popover, Toggle, Slideover } from "tailwindcss-stimulus-components"

application.register('alert', Alert)
application.register('autosave', Autosave)
application.register('dropdown', Dropdown)
application.register('modal', Modal)
application.register('tabs', Tabs)
application.register('popover', Popover)
application.register('toggle', Toggle)
application.register('slideover', Slideover)

import "chartkick/chart.js"
