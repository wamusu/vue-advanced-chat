import { ChatWindow as ChatWindowComponent } from './ChatWindow'

const ChatWindow = {
	install(Vue, options) {
		if (!options) {
			options = {}
		}

		Vue.component('ChatWindow', ChatWindowComponent)
	}
}

export default ChatWindow
