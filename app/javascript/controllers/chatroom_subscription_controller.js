import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages", "input"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
    console.log(this.inputTarget)
    this.inputTarget.addEventListener("keypress", this.handleKeyDown.bind(this))
  }

  handleKeyDown(event) {
    if (event.key === "Enter") {
      event.preventDefault()
      document.querySelector(".send-btn").click()
    }

  }


  sendMessage() {
    console.log(this.inputTarget)
    const messageContent = this.inputTarget.value.trim()
    if (messageContent !== "") {
      // Send the message using ActionCable
      this.channel.perform("send_message", { content: messageContent })
      // Clear the input field after sending the message
      this.inputTarget.value = ""
    }
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
