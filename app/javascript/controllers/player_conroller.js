import { Controller } from "stimulus"

export default class extends Controller {
  // static targets = [ "name" ]
  //
  // connect() {
  //   this.outputTarget.textContent = 'Hello, Stimulus!'
  // }

  static targets = [ "output" ]

  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }
