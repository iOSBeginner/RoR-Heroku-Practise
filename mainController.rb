require 'telegram/bot'

token = '240556961:AAEP-A47vhju8Vy3P7C7vZZTdGseOpdmY9I'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/sitepoint'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to http://sitepoint.com")
    when '/topics'
        bot.api.send_message(chat_id: message.chat.id, text: "topics text")
    when '/subscribe_warning'
        bot.api.send_message(chat_id: message.chat.id, text: "You enable the subscribe warning functioin, bot will tell you when there is a weather warning.")
    else
        bot.api.send_message(chat_id: message.chat.id, text: "I don't understand what you say....")
    end
  end
end
