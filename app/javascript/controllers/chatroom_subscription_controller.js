import { Controller } from "stimulus"
import consumer from '../channels/consumer'

export default class extends Controller {
  connect() {
    consumer.subscriptions.create("ChatroomChannel",
    { received: (data) => console.log(data) }
    )
  }
}
