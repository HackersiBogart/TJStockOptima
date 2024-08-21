import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import React from "react"
import ReactDOM from "react-dom"

import "chartkick/chart.js"

//= require chartkick
//= require Chart.bundle

import "chartkick"
import "Chart.bundle"

export { application }
